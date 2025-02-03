/*
  _   _  ____  _____  _____   _____          _____  _____  ______    ____  __  __ _____  
 | \ | |/ __ \|  __ \|  __ \ / ____|   /\   |  __ \|  __ \|  ____|  / __ \|  \/  |  __ \ 
 |  \| | |  | | |__) | |  | | |       /  \  | |__) | |__) | |__    | |  | | \  / | |__) |
 | . ` | |  | |  _  /| |  | | |      / /\ \ |  ___/|  ___/|  __|   | |  | | |\/| |  ___/ 
 | |\  | |__| | | \ \| |__| | |____ / ____ \| |    | |    | |____  | |__| | |  | | |     
 |_| \_|\____/|_|  \_\_____/ \_____/_/    \_\_|    |_|    |______|  \____/|_|  |_|_|     

 Developer: vostic
 Project start: 03/02/2025      

 File: db-config.pwn                                                         
                                                                                         
*/

#include <ysilib\YSI_Coding\y_hooks>

// Database connection handle

new MySQL:dbHandler;

hook OnGameModeInit()
{
    // Enable all MySQL logs
    mysql_log(ALL);
    
    // Connect to MySQL using settings from mysql.ini
    dbHandler = mysql_connect_file("mysql.ini");
    
    // Check if connection was successful
    if(mysql_errno(dbHandler) != 0)
    {
        printf("[MYSQL] Database connection failed, check mysql.ini!");
        SendRconCommand("exit"); // Optional: shutdown server if DB connection fails
        return false;
    }
    
    // Set UTF8MB4 charset for proper character encoding
    mysql_set_charset("utf8mb4", dbHandler);
    printf("[MYSQL] Connected to database successfully");
    return true;
}

hook OnGameModeExit()
{
    // Close MySQL connection when gamemode exits
    if(dbHandler)
    {
        mysql_close(dbHandler);
        printf("[MYSQL] Database connection closed");
    }
    return true;
}