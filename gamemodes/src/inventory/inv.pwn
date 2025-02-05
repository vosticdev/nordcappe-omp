/*
  _   _  ____  _____  _____   _____          _____  _____  ______    ____  __  __ _____  
 | \ | |/ __ \|  __ \|  __ \ / ____|   /\   |  __ \|  __ \|  ____|  / __ \|  \/  |  __ \ 
 |  \| | |  | | |__) | |  | | |       /  \  | |__) | |__) | |__    | |  | | \  / | |__) |
 | . ` | |  | |  _  /| |  | | |      / /\ \ |  ___/|  ___/|  __|   | |  | | |\/| |  ___/ 
 | |\  | |__| | | \ \| |__| | |____ / ____ \| |    | |    | |____  | |__| | |  | | |     
 |_| \_|\____/|_|  \_\_____/ \_____/_/    \_\_|    |_|    |______|  \____/|_|  |_|_|     

 Developer: vostic
 Project start: 03/02/2025  

 File: inv.pwn
                                                                                         
*/

#include <ysilib\YSI_Coding\y_hooks>

// Constants for inventory system
#define MAX_ITEMS           100    // Maximum items per player
#define MAX_GROUND_ITEMS    2000  // Maximum items on ground

// Backpack slot limits
#define NO_BACKPACK_SLOTS     5
#define SMALL_BACKPACK_SLOTS  15
#define LARGE_BACKPACK_SLOTS  30

// Backpack weight limits
#define NO_BACKPACK_WEIGHT    10.0
#define SMALL_BACKPACK_WEIGHT 30.0
#define LARGE_BACKPACK_WEIGHT 50.0

// Forward declarations for functions
forward OnPlayerInventoryLoad(playerid);
forward OnGroundItemsLoad();
forward bool:TryAddItemToInventory(playerid, itemid, amount = 1, Float:durability = 100.0);
forward bool:TryPickupGroundItem(playerid, groundItemIndex);
forward OnPlayerBackpackLoad(playerid);

// Item types
enum E_ITEM_TYPE
{
    ITEM_TYPE_WEAPON,
    ITEM_TYPE_AMMO,
    ITEM_TYPE_FOOD,
    ITEM_TYPE_DRINK,
    ITEM_TYPE_MEDICAL,
    ITEM_TYPE_TOOL,
    ITEM_TYPE_BACKPACK,
    ITEM_TYPE_MATERIAL,
    ITEM_TYPE_MISC
}

// Item data structure
enum E_ITEM_DATA
{
    item_ID,
    item_Name[32],
    E_ITEM_TYPE:item_Type,
    Float:item_Weight,
    bool:item_Stackable,
    item_MaxStack,
    bool:item_Usable,
    Float:item_MaxDurability,
    item_Model, // Object model for ground items
    Float:item_Value
}

// Player inventory structure
enum E_PLAYER_INVENTORY
{
    inv_CurrentSlots,
    inv_MaxSlots,
    Float:inv_CurrentWeight,
    Float:inv_MaxWeight,
    inv_BackpackType
}

// Ground item structure
enum E_GROUND_ITEM
{
    gi_DatabaseID,    // Database primary key
    gi_ItemID,
    gi_Amount,
    Float:gi_Durability,
    Float:gi_PosX,
    Float:gi_PosY,
    Float:gi_PosZ,
    gi_WorldID,
    gi_InteriorID,
    gi_Object,
    Text3D:gi_Label
}

// Define items
new const ItemData[][E_ITEM_DATA] = {
    // ID, Name, Type, Weight, Stackable, MaxStack, Usable, MaxDurability, Model, Value
    {1, "Small Backpack", ITEM_TYPE_BACKPACK, 1.0, false, 1, true, 100.0, 3026, 0.0},
    {2, "Large Backpack", ITEM_TYPE_BACKPACK, 2.0, false, 1, true, 100.0, 3026, 0.0},
    {3, "Apple", ITEM_TYPE_FOOD, 0.1, true, 10, true, 100.0, 19576, 25.0},
    {4, "Water Bottle", ITEM_TYPE_DRINK, 0.5, true, 5, true, 100.0, 19570, 50.0},
    {5, "Medkit", ITEM_TYPE_MEDICAL, 1.0, true, 3, true, 100.0, 11738, 100.0},
    {6, "Wrench", ITEM_TYPE_TOOL, 2.0, false, 1, true, 100.0, 18633, 0.0},
    {7, "Bandage", ITEM_TYPE_MEDICAL, 0.5, true, 10, true, 100.0, 19577, 25.0},
    {8, "Food", ITEM_TYPE_FOOD, 0.5, true, 10, true, 100.0, 19578, 50.0},
    {9, "Drink", ITEM_TYPE_DRINK, 0.5, true, 10, true, 100.0, 19579, 50.0}
};

// Define iterators for items
new Iterator:PlayerItems[MAX_PLAYERS]<MAX_ITEMS>;
new Iterator:GroundItems<MAX_GROUND_ITEMS>;

// Arrays to store item data
new PlayerItemData[MAX_PLAYERS][MAX_ITEMS][3]; // [itemid, amount, durability]
new GroundItemData[MAX_GROUND_ITEMS][E_GROUND_ITEM];

// Player inventory structure
new PlayerInventory[MAX_PLAYERS][E_PLAYER_INVENTORY];

// Load player inventory and backpack
LoadPlayerInventory(playerid)
{
    new query[128];
    mysql_format(dbHandler, query, sizeof(query), 
        "SELECT * FROM player_inventory WHERE player_id = %d", 
        PlayerData[playerid][pID]
    );
    mysql_tquery(dbHandler, query, "OnPlayerInventoryLoad", "i", playerid);

    // Load backpack type
    LoadPlayerBackpack(playerid);
}

forward OnPlayerInventoryLoad(playerid);
public OnPlayerInventoryLoad(playerid)
{
    if(!IsPlayerConnected(playerid)) return 0;

    new rows = cache_num_rows();
    if(rows)
    {
        for(new i = 0; i < rows; i++)
        {
            new itemid, amount, Float:durability, slot;
            cache_get_value_name_int(i, "item_id", itemid);
            cache_get_value_name_int(i, "amount", amount);
            cache_get_value_name_float(i, "durability", durability);
            cache_get_value_name_int(i, "slot", slot);
            
            PlayerItemData[playerid][slot][0] = itemid;
            PlayerItemData[playerid][slot][1] = amount;
            PlayerItemData[playerid][slot][2] = _:durability;
            Iter_Add(PlayerItems[playerid], slot);
            
            PlayerInventory[playerid][inv_CurrentSlots]++;
            PlayerInventory[playerid][inv_CurrentWeight] += ItemData[itemid][item_Weight] * amount;
        }
    }
    return 1;
}

// Save player inventory to SQL
SavePlayerInventory(playerid)
{
    // First clear existing inventory
    new query[128];
    mysql_format(dbHandler, query, sizeof(query), 
        "DELETE FROM player_inventory WHERE player_id = %d", 
        PlayerData[playerid][pID]
    );
    mysql_tquery(dbHandler, query);
    
    // Then save current inventory
    foreach(new slot : PlayerItems[playerid])
    {
        mysql_format(dbHandler, query, sizeof(query), 
            "INSERT INTO player_inventory (player_id, item_id, amount, durability, slot) VALUES (%d, %d, %d, %f, %d)",
            PlayerData[playerid][pID],
            PlayerItemData[playerid][slot][0],
            PlayerItemData[playerid][slot][1],
            Float:PlayerItemData[playerid][slot][2],
            slot
        );
        mysql_tquery(dbHandler, query);
    }
}


forward OnGroundItemsLoad();
public OnGroundItemsLoad()
{
    new rows = cache_num_rows();
    if(rows)
    {
        for(new i = 0; i < rows; i++)
        {
            new itemid, amount, Float:durability;
            new Float:x, Float:y, Float:z;
            new worldid, interiorid, dbid;
            
            cache_get_value_name_int(i, "id", dbid);
            cache_get_value_name_int(i, "item_id", itemid);
            cache_get_value_name_int(i, "amount", amount);
            cache_get_value_name_float(i, "durability", durability);
            cache_get_value_name_float(i, "pos_x", x);
            cache_get_value_name_float(i, "pos_y", y);
            cache_get_value_name_float(i, "pos_z", z);
            cache_get_value_name_int(i, "world_id", worldid);
            cache_get_value_name_int(i, "interior_id", interiorid);
            
            new slot = Iter_Free(GroundItems);
            if(slot != ITER_NONE)
            {
                GroundItemData[slot][gi_DatabaseID] = dbid;
                GroundItemData[slot][gi_ItemID] = itemid;
                GroundItemData[slot][gi_Amount] = amount;
                GroundItemData[slot][gi_Durability] = durability;
                GroundItemData[slot][gi_PosX] = x;
                GroundItemData[slot][gi_PosY] = y;
                GroundItemData[slot][gi_PosZ] = z;
                GroundItemData[slot][gi_WorldID] = worldid;
                GroundItemData[slot][gi_InteriorID] = interiorid;
                
                GroundItemData[slot][gi_Object] = CreateDynamicObject(ItemData[itemid-1][item_Model],
                    x, y, z - 0.9,
                    0.0, 0.0, 0.0,
                    worldid, interiorid
                );
                
                new labelText[128];
                format(labelText, sizeof(labelText),
                    "%s\n{FFFFFF}Amount: %d\nDurability: %.1f%%\nPress {F5F5F5}Y {FFFFFF}to pick up",
                    ItemData[itemid-1][item_Name], amount, durability
                );
                
                GroundItemData[slot][gi_Label] = CreateDynamic3DTextLabel(labelText,
                    0xF5F5F5FF,
                    x, y, z,
                    10.0,
                    INVALID_PLAYER_ID,
                    INVALID_VEHICLE_ID,
                    0,
                    worldid,
                    interiorid
                );
                
                Iter_Add(GroundItems, slot);
            }
        }
    }
    return 1;
}

// Update hooks for SQL support
hook OnGameModeInit()
{
    Iter_Init(PlayerItems);
    Iter_Init(GroundItems);
    mysql_tquery(dbHandler, "SELECT * FROM ground_items", "OnGroundItemsLoad");

    print("[INFO] Inventory system loaded.");
    
    return 1;
}

hook OnGameModeExit()
{
    // Don't clear the database on GMX
    foreach(new i : GroundItems)
    {
        DestroyDynamicObject(GroundItemData[i][gi_Object]);
        DestroyDynamic3DTextLabel(GroundItemData[i][gi_Label]);
    }
    Iter_Clear(GroundItems);
    return 1;
}

hook OnPlayerConnect(playerid)
{
    Iter_Clear(PlayerItems[playerid]);
    PlayerInventory[playerid][inv_CurrentSlots] = 0;
    PlayerInventory[playerid][inv_MaxSlots] = NO_BACKPACK_SLOTS;
    PlayerInventory[playerid][inv_CurrentWeight] = 0.0;
    PlayerInventory[playerid][inv_MaxWeight] = NO_BACKPACK_WEIGHT;
    PlayerInventory[playerid][inv_BackpackType] = 0;
    return 1;
}

hook OnPlayerLoaded(playerid)
{
    LoadPlayerInventory(playerid);
    return 1;
}

hook OnPlayerDisconnect(playerid, reason)
{
    SavePlayerInventory(playerid);
    Iter_Clear(PlayerItems[playerid]);
    return 1;
}

// Ground item pickup
hook OnPlayerKeyStateChange(playerid, KEY:newkeys, KEY:oldkeys)
{
    if(newkeys & KEY_YES) // Y key
    {

        new Float:x, Float:y, Float:z;
        GetPlayerPos(playerid, x, y, z);
        
        foreach(new i : GroundItems)
        {
            if(IsPlayerInRangeOfPoint(playerid, 2.0, 
                GroundItemData[i][gi_PosX],
                GroundItemData[i][gi_PosY],
                GroundItemData[i][gi_PosZ]))
            {
                if(GroundItemData[i][gi_ItemID] > 0) // Validate item exists
                {
                    TryPickupGroundItem(playerid, i);
                    break;
                }
            }
        }
    }
    return 1;
}

// Inventory command
YCMD:inventory(playerid, params[], help)
{
    if(help)
    {
        SendHelpMessage(playerid, "Inventory", "Open your inventory");
        return 1;
    }
    
    ShowPlayerInventory(playerid);
    return 1;
}

// Show inventory dialog
ShowPlayerInventory(playerid)
{
    new string[512], title[64];
    format(title, sizeof(title), "Inventory (%d/%d slots, %.1f/%.1f kg)",
        PlayerInventory[playerid][inv_CurrentSlots],
        PlayerInventory[playerid][inv_MaxSlots],
        PlayerInventory[playerid][inv_CurrentWeight],
        PlayerInventory[playerid][inv_MaxWeight]
    );
    
    strcat(string, "Item\tAmount\tWeight\n");
    new bool:hasItems = false;
    
    // Array to store combined amounts for each item type
    new itemTotals[sizeof(ItemData)];
    new Float:itemWeights[sizeof(ItemData)];
    
    // First pass: sum up all items of the same type
    foreach(new i : PlayerItems[playerid])
    {
        hasItems = true;
        new itemid = PlayerItemData[playerid][i][0] - 1; // Convert to 0-based index
        itemTotals[itemid] += PlayerItemData[playerid][i][1];
        itemWeights[itemid] = ItemData[itemid][item_Weight];
    }
    
    // Second pass: display combined totals
    for(new i = 0; i < sizeof(ItemData); i++)
    {
        if(itemTotals[i] > 0)
        {
            format(string, sizeof(string), "%s%s\t%dx\t%.1f kg\n",
                string,
                ItemData[i][item_Name],
                itemTotals[i],
                itemWeights[i] * itemTotals[i]
            );
        }
    }
    
    if(!hasItems)
    {
        strcat(string, "Your inventory is empty!");
    }
    
    Dialog_Show(playerid, DIALOG_INVENTORY, DIALOG_STYLE_TABLIST_HEADERS,
        title,
        string,
        "Use", "Close"
    );
}

// Test commands
YCMD:additem(playerid, params[], help)
{
    if(help)
    {
        SendHelpMessage(playerid, "Add Item", "/additem [itemid] [amount]");
        return 1;
    }
    
    new itemid, amount;
    if(sscanf(params, "ii", itemid, amount))
    {
        SendUsageMessage(playerid, "/additem [itemid] [amount]");
        SendClientMessage(playerid, -1, "Available items: 1-Small Backpack, 2-Large Backpack, 3-Apple, 4-Water, 5-Medkit");
        return 1;
    }
    
    if(itemid < 1 || itemid > sizeof(ItemData))
        return SendErrorMessage(playerid, "Invalid item ID!");
        
    if(amount < 1 || amount > 100)
        return SendErrorMessage(playerid, "Invalid amount (1-100)!");
    
    if(TryAddItemToInventory(playerid, itemid, amount))
    {
        SendClientMessage(playerid, -1, ""c_server"nordcappe-omp \187; "c_white"Added %dx %s to inventory", 
            amount, ItemData[itemid-1][item_Name]);
    }
    return 1;
}

YCMD:spawnitem(playerid, params[], help)
{
    if(help)
    {
        SendHelpMessage(playerid, "Spawn Item", "/spawnitem [itemid] [amount]");
        return 1;
    }
    
    new itemid, amount;
    if(sscanf(params, "ii", itemid, amount))
    {
        SendUsageMessage(playerid, "/spawnitem [itemid] [amount]");
        SendClientMessage(playerid, -1, "Available items: 1-Small Backpack, 2-Large Backpack, 3-Apple, 4-Water, 5-Medkit");
        return 1;
    }
    
    if(itemid < 1 || itemid > sizeof(ItemData))
        return SendErrorMessage(playerid, "Invalid item ID!");
        
    if(amount < 1 || amount > 100)
        return SendErrorMessage(playerid, "Invalid amount (1-100)!");
    
    new Float:x, Float:y, Float:z;
    GetPlayerPos(playerid, x, y, z);
    
    CreateGroundItem(itemid, amount, x, y, z, GetPlayerVirtualWorld(playerid), GetPlayerInterior(playerid));
    SendClientMessage(playerid, -1, ""c_server"nordcappe-omp \187; "c_white"Spawned %dx %s on ground", 
        amount, ItemData[itemid-1][item_Name]);
    return 1;
}

// Function to update item amount in database
UpdateItemAmount(playerid, itemid, slot, amount)
{
    new query[256];
    if(amount <= 0)
    {
        // Delete item if amount is 0
        mysql_format(dbHandler, query, sizeof(query), 
            "DELETE FROM player_inventory WHERE player_id = %d AND item_id = %d AND slot = %d",
            PlayerData[playerid][pID], itemid, slot
        );
    }
    else
    {
        // Update amount for existing item
        mysql_format(dbHandler, query, sizeof(query), 
            "UPDATE player_inventory SET amount = %d WHERE player_id = %d AND item_id = %d AND slot = %d",
            amount, PlayerData[playerid][pID], itemid, slot
        );
    }
    mysql_tquery(dbHandler, query);
}

// Modified TryAddItemToInventory to handle stacking
bool:TryAddItemToInventory(playerid, itemid, amount = 1, Float:durability = 100.0)
{
    // Special handling for backpacks
    if(ItemData[itemid-1][item_Type] == ITEM_TYPE_BACKPACK)
    {
        // Check if player already has a backpack
        if(PlayerInventory[playerid][inv_BackpackType] > 0)
        {
            new currentBackpack = PlayerInventory[playerid][inv_BackpackType];
            if(currentBackpack >= itemid)
            {
                SendErrorMessage(playerid, "You already have a better or same backpack!");
                return false;
            }
        }
        
        // Update inventory limits based on backpack type
        PlayerInventory[playerid][inv_BackpackType] = itemid;
        switch(itemid)
        {
            case 1: // Small Backpack
            {
                PlayerInventory[playerid][inv_MaxSlots] = SMALL_BACKPACK_SLOTS;
                PlayerInventory[playerid][inv_MaxWeight] = SMALL_BACKPACK_WEIGHT;
                SendClientMessage(playerid, -1, ""c_server"nordcappe-omp \187; "c_white"You equipped a Small Backpack. Inventory space increased!");
            }
            case 2: // Large Backpack
            {
                PlayerInventory[playerid][inv_MaxSlots] = LARGE_BACKPACK_SLOTS;
                PlayerInventory[playerid][inv_MaxWeight] = LARGE_BACKPACK_WEIGHT;
                SendClientMessage(playerid, -1, ""c_server"nordcappe-omp \187; "c_white"You equipped a Large Backpack. Inventory space increased!");
            }
        }
        SavePlayerBackpack(playerid); // Save when backpack changes
        return true;
    }

    // Check weight
    new Float:totalWeight = ItemData[itemid-1][item_Weight] * amount;
    if(PlayerInventory[playerid][inv_CurrentWeight] + totalWeight > PlayerInventory[playerid][inv_MaxWeight])
    {
        SendErrorMessage(playerid, "Inventory is too heavy!");
        return false;
    }

    // Try to stack with existing items first
    if(ItemData[itemid-1][item_Stackable])
    {
        foreach(new i : PlayerItems[playerid])
        {
            if(PlayerItemData[playerid][i][0] == itemid)
            {
                // Check if we can add to this stack
                new currentAmount = PlayerItemData[playerid][i][1];
                if(currentAmount < ItemData[itemid-1][item_MaxStack])
                {
                    new canAdd = ItemData[itemid-1][item_MaxStack] - currentAmount;
                    if(canAdd > amount) canAdd = amount;
                    
                    PlayerItemData[playerid][i][1] += canAdd;
                    amount -= canAdd;
                    PlayerInventory[playerid][inv_CurrentWeight] += ItemData[itemid-1][item_Weight] * canAdd;
                    
                    // Update database with new amount
                    UpdateItemAmount(playerid, itemid, i, PlayerItemData[playerid][i][1]);
                    
                    if(amount <= 0) return true;
                }
            }
        }
    }

    // If we still have items to add, find a new slot
    if(amount > 0)
    {
        if(PlayerInventory[playerid][inv_CurrentSlots] >= PlayerInventory[playerid][inv_MaxSlots])
        {
            SendErrorMessage(playerid, "Inventory is full!");
            return false;
        }
        
        new slot = Iter_Free(PlayerItems[playerid]);
        if(slot == ITER_NONE) return false;
        
        PlayerItemData[playerid][slot][0] = itemid;
        PlayerItemData[playerid][slot][1] = amount;
        PlayerItemData[playerid][slot][2] = _:durability;
        Iter_Add(PlayerItems[playerid], slot);
        
        PlayerInventory[playerid][inv_CurrentSlots]++;
        PlayerInventory[playerid][inv_CurrentWeight] += ItemData[itemid-1][item_Weight] * amount;
        
        // Save the new slot immediately
        SavePlayerInventorySlot(playerid, slot);
    }
    
    return true;
}

// Create ground item
CreateGroundItem(itemid, amount, Float:x, Float:y, Float:z, worldid = 0, interiorid = 0, Float:durability = 100.0)
{
    new slot = Iter_Free(GroundItems);
    if(slot == ITER_NONE) return 0;
    
    // Store item data
    GroundItemData[slot][gi_ItemID] = itemid;
    GroundItemData[slot][gi_Amount] = amount;
    GroundItemData[slot][gi_Durability] = durability;
    GroundItemData[slot][gi_PosX] = x;
    GroundItemData[slot][gi_PosY] = y;
    GroundItemData[slot][gi_PosZ] = z;
    GroundItemData[slot][gi_WorldID] = worldid;
    GroundItemData[slot][gi_InteriorID] = interiorid;
    
    // Create visual elements
    GroundItemData[slot][gi_Object] = CreateDynamicObject(ItemData[itemid-1][item_Model],
        x, y, z - 0.9,
        0.0, 0.0, 0.0,
        worldid, interiorid
    );
    
    new labelText[128];
    format(labelText, sizeof(labelText),
        "%s\n{FFFFFF}Amount: %d\nDurability: %.1f%%\nPress {F5F5F5}Y {FFFFFF}to pick up",
        ItemData[itemid-1][item_Name], amount, durability
    );
    
    GroundItemData[slot][gi_Label] = CreateDynamic3DTextLabel(labelText,
        0xF5F5F5FF,
        x, y, z,
        10.0,
        INVALID_PLAYER_ID,
        INVALID_VEHICLE_ID,
        0,
        worldid,
        interiorid
    );
    
    // Save to database and get the ID
    new query[256];
    mysql_format(dbHandler, query, sizeof(query), 
        "INSERT INTO ground_items (item_id, amount, durability, pos_x, pos_y, pos_z, world_id, interior_id) \
        VALUES (%d, %d, %f, %f, %f, %f, %d, %d)",
        itemid, amount, durability, x, y, z, worldid, interiorid
    );
    mysql_tquery(dbHandler, query, "OnGroundItemCreated", "d", slot);
    
    Iter_Add(GroundItems, slot);
    return slot;
}

forward OnGroundItemCreated(slot);
public OnGroundItemCreated(slot)
{
    // Store the database ID in the ground item data
    GroundItemData[slot][gi_DatabaseID] = cache_insert_id();
}

// Dialog handlers with easy-dialog format
Dialog:DIALOG_INVENTORY(playerid, response, listitem, string:inputtext[])
{
    if(!response) return 1;

    new slot = -1, count = 0;
    foreach(new i : PlayerItems[playerid])
    {
        if(count == listitem)
        {
            slot = i;
            break;
        }
        count++;
    }
    
    if(slot == -1) return 1;

    SetPVarInt(playerid, "SelectedInvSlot", slot);
    
    Dialog_Show(playerid, DIALOG_INVENTORY_ACTION, DIALOG_STYLE_LIST,
        "Item Actions",
        "Use\nDrop\nGive to Player",
        "Select", "Back"
    );
    return 1;
}

Dialog:DIALOG_INVENTORY_ACTION(playerid, response, listitem, string:inputtext[])
{
    if(!response)
    {
        DeletePVar(playerid, "SelectedInvSlot");
        ShowPlayerInventory(playerid);
        return 1;
    }

    new slot = GetPVarInt(playerid, "SelectedInvSlot");
    if(!Iter_Contains(PlayerItems[playerid], slot)) return 1;

    switch(listitem)
    {
        case 0: // Use
        {
            if(UseItem(playerid, slot))
            {
                ShowPlayerInventory(playerid);
            }
            else
            {
                SendErrorMessage(playerid, "This item cannot be used!");
            }
        }
        case 1: // Drop
        {
            new amount = PlayerItemData[playerid][slot][1];
            if(amount > 1)
            {
                SetPVarInt(playerid, "DropItemSlot", slot);
                new string[128];
                format(string, sizeof(string), 
                    "Enter amount to drop (1-%d):", 
                    amount
                );
                Dialog_Show(playerid, DIALOG_DROP_AMOUNT, DIALOG_STYLE_INPUT,
                    "Drop Amount",
                    string,
                    "Drop", "Back"
                );
            }
            else
            {
                DropItemFromInventory(playerid, slot, 1);
                ShowPlayerInventory(playerid);
            }
        }
        case 2: // Give
        {
            new nearbyPlayers[MAX_PLAYERS], count;
            foreach(new i : Player)
            {
                if(i != playerid && IsPlayerNearPlayer(playerid, i, 3.0))
                {
                    nearbyPlayers[count++] = i;
                }
            }
            
            if(!count)
            {
                SendErrorMessage(playerid, "No players nearby!");
                return 1;
            }
            
            new string[512];
            for(new i = 0; i < count; i++)
            {
                format(string, sizeof(string), "%s%s\n", string, ReturnPlayerName(nearbyPlayers[i]));
            }
            
            SetPVarInt(playerid, "GiveItemSlot", slot);
            Dialog_Show(playerid, DIALOG_INVENTORY_GIVE, DIALOG_STYLE_LIST,
                "Give Item - Select Player",
                string,
                "Give", "Back"
            );
        }
    }
    return 1;
}

Dialog:DIALOG_DROP_AMOUNT(playerid, response, listitem, string:inputtext[])
{
    if(!response)
    {
        DeletePVar(playerid, "DropItemSlot");
        ShowPlayerInventory(playerid);
        return 1;
    }

    new slot = GetPVarInt(playerid, "DropItemSlot");
    if(!Iter_Contains(PlayerItems[playerid], slot)) return 1;

    new amount = strval(inputtext);
    new currentAmount = PlayerItemData[playerid][slot][1];

    if(amount < 1 || amount > currentAmount)
    {
        SendErrorMessage(playerid, "Invalid amount!");
        return 1;
    }

    DropItemFromInventory(playerid, slot, amount);
    DeletePVar(playerid, "DropItemSlot");
    ShowPlayerInventory(playerid);
    return 1;
}

Dialog:DIALOG_INVENTORY_GIVE(playerid, response, listitem, string:inputtext[])
{
    if(!response)
    {
        DeletePVar(playerid, "GiveItemSlot");
        ShowPlayerInventory(playerid);
        return 1;
    }

    new slot = GetPVarInt(playerid, "GiveItemSlot");
    new targetid = INVALID_PLAYER_ID;
    new count = 0;

    foreach(new i : Player)
    {
        if(i != playerid && IsPlayerNearPlayer(playerid, i, 3.0))
        {
            if(count == listitem)
            {
                targetid = i;
                break;
            }
            count++;
        }
    }

    if(targetid == INVALID_PLAYER_ID)
    {
        SendErrorMessage(playerid, "Selected player not found!");
        return 1;
    }

    if(PlayerItemData[playerid][slot][1] > 1)
    {
        SetPVarInt(playerid, "GiveItemTarget", targetid);
        new string[128];
        format(string, sizeof(string), 
            "Enter amount to give to %s (1-%d):", 
            ReturnPlayerName(targetid),
            PlayerItemData[playerid][slot][1]
        );
        Dialog_Show(playerid, DIALOG_INVENTORY_GIVE_AMOUNT, DIALOG_STYLE_INPUT,
            "Give Item - Amount",
            string,
            "Give", "Back"
        );
    }
    else
    {
        GiveItemToPlayer(playerid, targetid, slot, 1);
        DeletePVar(playerid, "GiveItemSlot");
    }
    return 1;
}

Dialog:DIALOG_INVENTORY_GIVE_AMOUNT(playerid, response, listitem, string:inputtext[])
{
    if(!response)
    {
        DeletePVar(playerid, "GiveItemSlot");
        DeletePVar(playerid, "GiveItemTarget");
        ShowPlayerInventory(playerid);
        return 1;
    }

    new slot = GetPVarInt(playerid, "GiveItemSlot");
    new targetid = GetPVarInt(playerid, "GiveItemTarget");
    new amount = strval(inputtext);

    if(amount < 1 || amount > PlayerItemData[playerid][slot][1])
    {
        SendErrorMessage(playerid, "Invalid amount!");
        return 1;
    }

    GiveItemToPlayer(playerid, targetid, slot, amount);
    DeletePVar(playerid, "GiveItemSlot");
    DeletePVar(playerid, "GiveItemTarget");
    return 1;
}

// Modified DropItemFromInventory
DropItemFromInventory(playerid, slot, amount)
{
    if(!Iter_Contains(PlayerItems[playerid], slot)) return 0;
    
    new itemid = PlayerItemData[playerid][slot][0];
    if(itemid < 1 || itemid > sizeof(ItemData)) return 0;
    
    // Validate amount
    new currentAmount = PlayerItemData[playerid][slot][1];
    if(amount <= 0 || amount > currentAmount) return 0;
    
    new Float:durability = Float:PlayerItemData[playerid][slot][2];
    new Float:x, Float:y, Float:z;
    GetPlayerPos(playerid, x, y, z);
    
    // Create ground item first to ensure it works
    if(CreateGroundItem(itemid, amount, x, y, z, 
        GetPlayerVirtualWorld(playerid), 
        GetPlayerInterior(playerid), 
        durability))
    {
        // Update inventory amount
        PlayerItemData[playerid][slot][1] -= amount;
        PlayerInventory[playerid][inv_CurrentWeight] -= ItemData[itemid-1][item_Weight] * amount;
        
        if(PlayerItemData[playerid][slot][1] <= 0)
        {
            // Remove item completely
            UpdateItemAmount(playerid, PlayerItemData[playerid][slot][0], slot, 0);
            PlayerItemData[playerid][slot][0] = 0;
            PlayerItemData[playerid][slot][2] = 0;
            Iter_Remove(PlayerItems[playerid], slot);
            PlayerInventory[playerid][inv_CurrentSlots]--;
        }
        else
        {
            // Update remaining amount
            UpdateItemAmount(playerid, PlayerItemData[playerid][slot][0], slot, PlayerItemData[playerid][slot][1]);
        }
        
        SendClientMessage(playerid, -1, ""c_server"nordcappe-omp \187; "c_white"Dropped %dx %s", 
            amount, ItemData[itemid-1][item_Name]);
        return 1;
    }
    return 0;
}

// Helper functions
GiveItemToPlayer(playerid, targetid, slot, amount)
{
    if(!Iter_Contains(PlayerItems[playerid], slot)) return 0;
    
    new itemid = PlayerItemData[playerid][slot][0];
    new Float:durability = Float:PlayerItemData[playerid][slot][2];
    new currentAmount = PlayerItemData[playerid][slot][1];
    
    if(amount <= 0 || amount > currentAmount) return 0;
    
    // Try to add to target's inventory first
    if(TryAddItemToInventory(targetid, itemid, amount, durability))
    {
        // Update giver's inventory
        PlayerItemData[playerid][slot][1] -= amount;
        PlayerInventory[playerid][inv_CurrentWeight] -= ItemData[itemid-1][item_Weight] * amount;
        
        if(PlayerItemData[playerid][slot][1] <= 0)
        {
            // Remove item completely
            UpdateItemAmount(playerid, itemid, slot, 0);
            PlayerItemData[playerid][slot][0] = 0;
            PlayerItemData[playerid][slot][2] = 0;
            Iter_Remove(PlayerItems[playerid], slot);
            PlayerInventory[playerid][inv_CurrentSlots]--;
        }
        else
        {
            // Update remaining amount
            UpdateItemAmount(playerid, itemid, slot, PlayerItemData[playerid][slot][1]);
        }
        
        SendClientMessage(playerid, -1, ""c_server"nordcappe-omp \187; "c_white"Gave %dx %s to %s", 
            amount, ItemData[itemid-1][item_Name], ReturnPlayerName(targetid));
        SendClientMessage(targetid, -1, ""c_server"nordcappe-omp \187; "c_white"Received %dx %s from %s", 
            amount, ItemData[itemid-1][item_Name], ReturnPlayerName(playerid));
        return 1;
    }
    return 0;
}

// Load player backpack
LoadPlayerBackpack(playerid)
{
    new query[128];
    mysql_format(dbHandler, query, sizeof(query), 
        "SELECT backpack_type FROM player_backpacks WHERE player_id = %d", 
        PlayerData[playerid][pID]
    );
    mysql_tquery(dbHandler, query, "OnPlayerBackpackLoad", "i", playerid);
}

// Save backpack type when it changes
SavePlayerBackpack(playerid)
{
    new query[256];
    mysql_format(dbHandler, query, sizeof(query), 
        "INSERT INTO player_backpacks (player_id, backpack_type) VALUES (%d, %d) \
        ON DUPLICATE KEY UPDATE backpack_type = %d",
        PlayerData[playerid][pID],
        PlayerInventory[playerid][inv_BackpackType],
        PlayerInventory[playerid][inv_BackpackType]
    );
    mysql_tquery(dbHandler, query);
}

forward OnPlayerBackpackLoad(playerid);
public OnPlayerBackpackLoad(playerid)
{
    new backpackType;
    cache_get_value_name_int(0, "backpack_type", backpackType);
    
    // Set backpack and inventory limits
    PlayerInventory[playerid][inv_BackpackType] = backpackType;
    switch(backpackType)
    {
        case 0: // No backpack
        {
            PlayerInventory[playerid][inv_MaxSlots] = NO_BACKPACK_SLOTS;
            PlayerInventory[playerid][inv_MaxWeight] = NO_BACKPACK_WEIGHT;
        }
        case 1: // Small backpack
        {
            PlayerInventory[playerid][inv_MaxSlots] = SMALL_BACKPACK_SLOTS;
            PlayerInventory[playerid][inv_MaxWeight] = SMALL_BACKPACK_WEIGHT;
        }
        case 2: // Large backpack
        {
            PlayerInventory[playerid][inv_MaxSlots] = LARGE_BACKPACK_SLOTS;
            PlayerInventory[playerid][inv_MaxWeight] = LARGE_BACKPACK_WEIGHT;
        }
    }
    return 1;
}

bool:TryPickupGroundItem(playerid, groundItemIndex)
{
    if(!Iter_Contains(GroundItems, groundItemIndex)) return false;
    
    new itemid = GroundItemData[groundItemIndex][gi_ItemID];
    if(itemid < 1 || itemid > sizeof(ItemData)) return false;
    
    new amount = GroundItemData[groundItemIndex][gi_Amount];
    new Float:durability = GroundItemData[groundItemIndex][gi_Durability];
    new dbid = GroundItemData[groundItemIndex][gi_DatabaseID];

    // Delete from database first
    new query[128];
    mysql_format(dbHandler, query, sizeof(query), 
        "DELETE FROM ground_items WHERE id = %d",
        dbid
    );
    mysql_tquery(dbHandler, query);

    // Try to add to inventory
    if(TryAddItemToInventory(playerid, itemid, amount, durability))
    {
        // Remove ground item
        DestroyDynamicObject(GroundItemData[groundItemIndex][gi_Object]);
        DestroyDynamic3DTextLabel(GroundItemData[groundItemIndex][gi_Label]);
        Iter_Remove(GroundItems, groundItemIndex);
        return true;
    }
    return false;
}

SavePlayerInventorySlot(playerid, slot)
{
    new query[256];
    mysql_format(dbHandler, query, sizeof(query), 
        "INSERT INTO player_inventory (player_id, item_id, amount, durability, slot) VALUES (%d, %d, %d, %f, %d) \
        ON DUPLICATE KEY UPDATE amount = %d, durability = %f",
        PlayerData[playerid][pID],
        PlayerItemData[playerid][slot][0],
        PlayerItemData[playerid][slot][1],
        Float:PlayerItemData[playerid][slot][2],
        slot,
        PlayerItemData[playerid][slot][1],
        Float:PlayerItemData[playerid][slot][2]
    );
    mysql_tquery(dbHandler, query);
}

// Use item function
UseItem(playerid, slot)
{
    if(!Iter_Contains(PlayerItems[playerid], slot)) return 0;
    
    new itemid = PlayerItemData[playerid][slot][0];
    if(!ItemData[itemid-1][item_Usable]) return 0;
    
    new Float:health;
    GetPlayerHealth(playerid, health);
    
    switch(ItemData[itemid-1][item_Type])
    {
        case ITEM_TYPE_MEDICAL:
        {
            if(health >= 100.0)
            {
                SendErrorMessage(playerid, "You don't need healing!");
                return 0;
            }
            
            SetPlayerHealth(playerid, health + ItemData[itemid-1][item_Value]);
            if(health > 100.0) SetPlayerHealth(playerid, 100.0);
            
            SendClientMessage(playerid, -1, ""c_server"nordcappe-omp \187; "c_white"You used %s and restored some health.", 
                ItemData[itemid-1][item_Name]);
        }
        case ITEM_TYPE_FOOD, ITEM_TYPE_DRINK:
        {
            if(health >= 100.0)
            {
                SendErrorMessage(playerid, "You don't need this right now!");
                return 0;
            }
            
            SetPlayerHealth(playerid, health + ItemData[itemid-1][item_Value]);
            if(health > 100.0) SetPlayerHealth(playerid, 100.0);
            
            SendClientMessage(playerid, -1, ""c_server"nordcappe-omp \187; "c_white"You consumed %s and restored some health.", 
                ItemData[itemid-1][item_Name]);
        }
        default: return 0;
    }
    
    // Remove one item after use
    PlayerItemData[playerid][slot][1]--;
    PlayerInventory[playerid][inv_CurrentWeight] -= ItemData[itemid-1][item_Weight];
    
    if(PlayerItemData[playerid][slot][1] <= 0)
    {
        // Remove item completely
        UpdateItemAmount(playerid, itemid, slot, 0);
        PlayerItemData[playerid][slot][0] = 0;
        PlayerItemData[playerid][slot][2] = 0;
        Iter_Remove(PlayerItems[playerid], slot);
        PlayerInventory[playerid][inv_CurrentSlots]--;
    }
    else
    {
        // Update remaining amount
        UpdateItemAmount(playerid, itemid, slot, PlayerItemData[playerid][slot][1]);
    }
    
    return 1;
}