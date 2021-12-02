--https://flightcontrol-master.github.io/MOOSE_DOCS/Documentation/Ops.CTLD.html

local Blue_CTLD = CTLD:New(coalition.side.BLUE,{"any_kurwa"},"Moose CTLD Blue")

Blue_CTLD.debug = false -- wyświetla info o statusie skryptu

Blue_CTLD.useprefix = false -- dla każdego śmigłowca lub nie.

Blue_CTLD.CrateDistance = 50 -- List and Load crates in this radius only.
Blue_CTLD.dropcratesanywhere = true -- Option to allow crates to be dropped anywhere.
Blue_CTLD.maximumHoverHeight = 15 -- Hover max this high to load.
Blue_CTLD.minimumHoverHeight = 4 -- Hover min this low to load.

Blue_CTLD.forcehoverload = false -- Crates (not: troops) can only be loaded while hovering.
Blue_CTLD.hoverautoloading = true -- Crates in CrateDistance in a LOAD zone will be loaded automatically if space allows.

Blue_CTLD.movetroopstowpzone = true -- Troops and vehicles will move to the nearest MOVE zone...
Blue_CTLD.movetroopsdistance = 30000 -- .. but only if this far away (in meters)
Blue_CTLD.suppressmessages = false -- Set to true if you want to script your own messages.
Blue_CTLD.repairtime = 180 -- Number of seconds it takes to repair a unit.

Blue_CTLD.allowcratepickupagain = true  -- allow re-pickup crates that were dropped.

--[[tabela techniczna definiująca ładowność śmigłowca
na potrzeby zablokowania pojemności do jednej grupy piechoty wartość trooplimit za ażdym razem wynosi 1]]

Blue_CTLD:UnitCapabilities("SA342Mistral", true, true, 1, 1)
Blue_CTLD:UnitCapabilities("SA342L"		, true, true, 1, 1)
Blue_CTLD:UnitCapabilities("SA342M"		, true, true, 1, 1)
Blue_CTLD:UnitCapabilities("SA342Minigun", true, true, 1, 1)
Blue_CTLD:UnitCapabilities("UH-1H"		, true, true, 1, 1)
Blue_CTLD:UnitCapabilities("Mi-8MT"		, true, true, 2, 1)
Blue_CTLD:UnitCapabilities("Ka-50"		, true, true, 1, 1)
Blue_CTLD:UnitCapabilities("Mi-24P"		, true, true, 1, 1)
   
   
Blue_CTLD:AddCTLDZone("A1 Senaki CTLD",CTLD.CargoZoneType.LOAD,SMOKECOLOR.Blue,true,false)
Blue_CTLD:AddCTLDZone("A2 Kobuleti CTLD",CTLD.CargoZoneType.LOAD,SMOKECOLOR.Blue,true,false)
Blue_CTLD:AddCTLDZone("A3 Batumi CTLD",CTLD.CargoZoneType.LOAD,SMOKECOLOR.Blue,true,false)
Blue_CTLD:AddCTLDZone("A4 Kutaisi-West CTLD",CTLD.CargoZoneType.LOAD,SMOKECOLOR.Blue,true,false)
Blue_CTLD:AddCTLDZone("A5 Sukhumi CTLD",CTLD.CargoZoneType.LOAD,SMOKECOLOR.Blue,true,false)
Blue_CTLD:AddCTLDZone("A6 Gudauta CTLD",CTLD.CargoZoneType.LOAD,SMOKECOLOR.Blue,true,false)
Blue_CTLD:AddCTLDZone("FARP Berlin CTLD",CTLD.CargoZoneType.LOAD,SMOKECOLOR.Blue,true,false)
Blue_CTLD:AddCTLDZone("FARP Dallas CTLD",CTLD.CargoZoneType.LOAD,SMOKECOLOR.Blue,true,false)
Blue_CTLD:AddCTLDZone("FARP London CTLD",CTLD.CargoZoneType.LOAD,SMOKECOLOR.Blue,true,false)
Blue_CTLD:AddCTLDZone("FARP Paris CTLD",CTLD.CargoZoneType.LOAD,SMOKECOLOR.Blue,true,false)
Blue_CTLD:AddCTLDZone("FARP Rome CTLD",CTLD.CargoZoneType.LOAD,SMOKECOLOR.Blue,true,false)
Blue_CTLD:AddCTLDZone("FARP Warsaw CTLD",CTLD.CargoZoneType.LOAD,SMOKECOLOR.Blue,true,false)

--Dodajemy grupy piechoty
local waga_piechota = 90
local waga_manpad = 120
local waga_manpad_commander = 140
local waga_piechotaMG = 105
local waga_piechotaAT = 125

local pojazd_pancerny_min = 200
local pojazd_pancerny_med = 350
local pojazd_pancerny_max = 1000


--waga 470
Blue_CTLD:AddTroopsCargo("Małe MANPADs  (1xInf 2xManpad 1xC2)"			,{"Small MANPADs"},CTLD_CARGO.Enum.TROOPS,1,1*waga_piechota+2*waga_manpad+1*waga_manpad_commander)

--Ładunek statyczny jak skrzynia ammo też może być
--https://flightcontrol-master.github.io/MOOSE_DOCS_DEVELOP/Documentation/Ops.CTLD.html##(CTLD).AddStaticsCargo




Blue_CTLD:AddStaticsCargo("Ammo 1500kg", 1500)
Blue_CTLD:AddStaticsCargo("Beczki 480kg", 480)
Blue_CTLD:AddStaticsCargo("Kontener 1200kg", 1200)
Blue_CTLD:AddStaticsCargo("F-shape barrier 820kg", 820)
Blue_CTLD:AddStaticsCargo("Fueltank 2400kg", 2400)
Blue_CTLD:AddStaticsCargo("ISO container 4500kg", 4500)
Blue_CTLD:AddStaticsCargo("M117 bombs 840kg", 840)
Blue_CTLD:AddStaticsCargo("Oiltank 2300kg", 2300)
Blue_CTLD:AddStaticsCargo("Tetrapod 5000kg", 5000)
Blue_CTLD:AddStaticsCargo("Trunks long 4800kg", 4800)
Blue_CTLD:AddStaticsCargo("UH-1H cargo 1050kg", 1050)


Blue_CTLD:__Start(5)

