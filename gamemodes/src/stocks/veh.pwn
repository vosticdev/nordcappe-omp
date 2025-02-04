stock IsSeatAvailable( vehicleid, seat)
{
    new carmodel = GetVehicleModel( vehicleid);
    for (new i = 0; i < sizeof( OneSeatVehicles ); i++ )
    {
        if( carmodel == OneSeatVehicles[i] ) return 0;
    }
    foreach(new i : Player)
    {
        if(GetPlayerVehicleID(i) == vehicleid && GetPlayerVehicleSeat(i) == seat) return 0;
    }
    return 1;
}

stock GetNearestVehicle(playerid) {

	for(new i = 0; i < MAX_VEHICLES -1; i++) {

		new Float:vehPos[3];
		GetVehiclePos(i, vehPos[0], vehPos[1], vehPos[2]);

		if(IsPlayerInRangeOfPoint(playerid, 2.5, vehPos[0], vehPos[1], vehPos[2])) 
			return i;
	}

	return INVALID_VEHICLE_ID;
}

// Vehicle type checks
bool:IsValidVehicleModel(modelid)
{
    switch(modelid)
    {
        // Cars
        case 400..612: return true;
    }
    return false;
}

stock IsVehicleBicycle(modelid)
{
    switch(modelid)
    {
        case 481, 509, 510: return true; // BMX, Bike, Mountain Bike
    }
    return false;
}


bool:IsVehicleMotorbike(modelid)
{
    switch(modelid)
    {
        case 448, 461, 462, 463, 468, 471, 521, 522, 523, 581, 586: return true; // All bikes
    }
    return false;
}

bool:IsVehicleTrailer(vehicle) {

	switch(vehicle) {

		case 435, 450, 584, 591, 606, 607, 610, 611: return true;
	}
	return false;
}

//* Dron
bool:IsVehicleDrone(vehicle)
{
	switch(vehicle) {

		case 465: return true;
	}
	return false;
}

new stock g_arrVehicleNames[][] = {
    "Jeep Grand Cherokee", "Mercury Cougar", "Camaro", "Kenworth W900", "Chevrolet Nova", "BMW 5251", "Caterpillar 773", "FireTruck", "Ford F700",
    "Lincoln Town Car", "Dodge Aries", "Honda NSX", "Chevrolet Impala", "Ford Econoline", "Ford E-350", "Ferrari 512", "Ambulance", "Sikorsky SH-3", 
    "Chevrolet Astrovan", "Cadillac El Dorado", "Taxi", "Lincoln Mark 7", "Chevrolet S10", "Whoopee", "BF Injection", "Boeing AH-64", "Chevrolet Caprice",
    "Freightliner E33", "Securicar", "Dodge Viper RT/10", "Predator", "Bus", "M1 Abrams", "M939", "Ford Model A", "Trailer", "Previon", "Coach",
    "Cabbie", "Stallion", "Rumpo", "RC Bandit", "Romero", "Packer", "Monster", "Admiral", "Squalo", "Seasparrow", "Pizzaboy", "Tram", "Trailer", 
    "Ferrari F40", "HS 1700S", "Reefer", "Corinthian 33", "M939 v2", "Ford F701", "Caddy", "Ford Taurus", "Dodge Tradesman", "Cessna 152", "Suzuki GSX", 
    "Piaggio Vespa 50", "Harley-Davidson", "RC Baron", "RC Raider", "Buick Special", "Dodge Dart", "Honda CRM 250", "Sioux", "AM General HMMWV", "Yamaha Breeze",
    "Coastguard", "Zodiac Classic", "Fiat Brava", "Chevrolet Chevelle", "Hawker Typhoon", "Nissan 240SX", "Chevrolet Task Force",
    "Pontiac Parisienne", "Porsche 914", "BMX", "Dodge Ram Van", "Volkswagen T1", "Marquis", "Clark CT", "Caterpillar 980B", "Bell 206L-4", "News Chopper", "Chevrolet K5 Blazer",
    "FBI K5 Blazer", "LC Mark V", "Chrysler Fifth Avenue", "Jetmax", "Ford Thunderbird", "Mitsubishi Pajero", "Honda CR-X", "Bell 206L-4",
    "Chevrolet SV", "Ford F-Series", "Jeep Wrangler YJ", "RC Goblin", "Ford Thunderbird", "Ford Thunderbird", "Dodge Polara", "Chevrolet K5 Blazer",
    "Toyota Supra", "Pontiac Grand", "Chevrolet Winnebago", "Bike", "Mountain Bike", "Cessna 208B", "Cropduster", "Pitts Special S-1", "Ford L9000", "4964 Heritage",
    "Buick Century", "Buick Regal", "Chevrolet Monte Carlo", "Learjet 45", "F-16", "Ducati 900ss", "Honda NSR500", "Kawasaki Kz1000", "Harvester S-2500", "Chevy C/K Gen III",
    "Fortune", "Cadrona", "SWAT Truck", "Willard", "Forklift", "Tractor", "Combine", "Feltzer", "Remington", "Slamvan",
    "Chevrolet Caprice", "EMD F40PH", "EMD SD40-2", "Vortex", "Mercedes Benz E120", "Ford GT40", "Oldsmobile Cutlass", "Ford F100", "Firetruck", "Ford Hotrod", "Chevrolet Lumina",
    "Toyota Corolla", "CH-47 Chinook", "Chevy Corvair", "Honda Sedan", "Mercury Grand Marquis", "GMC GMT400", "Douglas DC-3", "GMC Sierra", "Jaguar XKE", "Monster", "Monster",
    "Mitsubishi Eclipse", "360 Modena", "Subaru WRX STi", "HC StationWagon", "Nissan Skyline R32", "Sikorsky S-70", "RC Tiger", "Honda Civic", "Chevrolet MonteCarlo", "Chevrolet Impala", "Bandito",
    "EMD SD40-2", "EMD F40PH", "Kart", "John Deere 322", "Kamaz 4911", "Sweeper", "Cadillac Series 62", "Chevy Bel Air", "Boeing 737", "Ford Cargo",
    "Range Rover", "Rolls Royce Shadow", "Suzuki Bandit", "News Van", "Tug", "Trailer", "Infinity J30", "Honda Goldwing", "Nissan 350Z", "Dodge A100", "Volkswagen Golf",
    "EMD SD40-2", "Trailer", "Lockheed C-141", "Cessna 150", "RC Cam", "Launch", "Ford Crown Victoria", "Ford Crown Victoria", "Ford Crown Victoria",
    "K5 Blazer", "Chevrolet El Camino", "Cadillac Gage V-100", "Dodge Stealth", "Pontiac Trans Am", "Plymouth Fury", "Ford F100", "Luggage", "Luggage", "Stairs",
    "Chevrolet SV", "Tiller", "Utility Trailer"
};

new OneSeatVehicles[ 38 ] = {

    425, 430, 432, 441, 446, 448, 452, 453,
    454, 464, 465, 472, 473, 476, 481, 484,
    485, 486, 493, 501, 509, 510, 519, 520,
    530, 531, 532, 539, 553, 564, 568, 571,
    572, 574, 583, 592, 594, 595
};

stock GetVehicleSpeed(vehicleid)
{
	new Float:xPos[3];

	GetVehicleVelocity(vehicleid, xPos[0], xPos[1], xPos[2]);

	return floatround(floatsqroot(xPos[0] * xPos[0] + xPos[1] * xPos[1] + xPos[2] * xPos[2]) * 170.00);
}

ReturnVehicleModelName(model)
{
    new
        name[32] = "None";

    if (model < 400 || model > 611)
        return name;

    format(name, sizeof(name), g_arrVehicleNames[model - 400]);
    return name;
}