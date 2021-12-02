-- Gildiansky Range by VladMordock
-- created for and copyrighted for gildia.org


test = false

test_dispaczer = false

serwer_lucasa = false

poradniki = false

--funkcje testowe
if test == true then
explorer_file_path_default = "C:\\Users\\Gildias1s2\\Saved Games\\#Misje\\09_Skrypty\\Gildiansky_Range\\dev\\"
else
explorer_file_path_default = "C:\\Users\\Gildias1s2\\Saved Games\\#Misje\\09_Skrypty\\Gildiansky_Range\\"
end

--Wykonuje plik CSAR_Moose.lua
function CSAR_Moose()
dofile(explorer_file_path_default.."CSAR_Moose.lua")
end
timer.scheduleFunction(CSAR_Moose, nil, timer.getTime()+2)

--Wykonuje plik CTLD_Moose.lua
function CTLD_Moose()
dofile(explorer_file_path_default.."CTLD_Moose.lua")
end
--timer.scheduleFunction(CTLD_Moose, nil, 10)



-- Tankery oraz AWACS ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

	Texaco=			SPAWN:New("Tanker 50Y Texaco")	:InitLimit( 1, 0 ):SpawnScheduled( 60, .1 ):OnSpawnGroup( function (texaco_11) texaco_11:CommandSetCallsign(1,1) end):InitRepeatOnLanding()
	Shell=			SPAWN:New("Tanker 51Y Shell")	:InitLimit( 1, 0 ):SpawnScheduled( 60, .1 ):OnSpawnGroup( function (shell_11) shell_11:CommandSetCallsign(3,1) end):InitRepeatOnLanding()
	Texaco2=		SPAWN:New("Tanker 52Y Texaco 2"):InitLimit( 1, 0 ):SpawnScheduled( 60, .1 ):OnSpawnGroup( function (texaco_21) texaco_21:CommandSetCallsign(1,2) end):InitRepeatOnLanding()
	Shell2=			SPAWN:New("Tanker 53Y Shell 2")	:InitLimit( 1, 0 ):SpawnScheduled( 60, .1 ):OnSpawnGroup( function (shell_11) shell_11:CommandSetCallsign(3,2) end):InitRepeatOnLanding()
	Texaco3=		SPAWN:New("Tanker 54Y Texaco 3"):InitLimit( 1, 0 ):SpawnScheduled( 60, .1 ):OnSpawnGroup( function (texaco_31) texaco_31:CommandSetCallsign(1,3) end):InitRepeatOnLanding()
	Shell3=			SPAWN:New("Tanker 55Y Shell 3")	:InitLimit( 1, 0 ):SpawnScheduled( 60, .1 ):OnSpawnGroup( function (shell_31) shell_31:CommandSetCallsign(3,3) end):InitRepeatOnLanding()	
	Arco2=			SPAWN:New("Tanker 70Y Arco 2")	:InitLimit( 1, 0 ):SpawnScheduled( 60, .1 ):OnSpawnGroup( function (arco_21) arco_21:CommandSetCallsign(2,2) end):InitRepeatOnLanding()

	AWACSOverlord=	SPAWN:New("AWACS Overlord")		:InitLimit( 1, 0 ):SpawnScheduled( 60, .1 ):OnSpawnGroup( function (Overlord_11) Overlord_11:CommandSetCallsign(1,1) end):InitRepeatOnLanding()
	AWACSDarkstar=	SPAWN:New("AWACS Darkstar")		:InitLimit( 1, 0 ):SpawnScheduled( 60, .1 ):OnSpawnGroup( function (Darkstar_11) Darkstar_11:CommandSetCallsign(5,1) end):InitRepeatOnLanding()

	AWACS100=		SPAWN:New("RED AWACS 100")		:InitLimit( 1, 0 ):SpawnScheduled( 60, .1 ):InitRepeatOnLanding()
	AWACSE3Red=		SPAWN:New("RED AWACS E-3")		:InitLimit( 1, 0 ):SpawnScheduled( 60, .1 ):InitRepeatOnLanding()


-- SAMY BLUE-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
	SA10_SENAKI = SPAWN:New( "BLUE SAM A1 Senaki 01" ):InitLimit( 12, 0 ):SpawnScheduled( 5400, .1 )
	TOR_SENAKI = SPAWN:New( "BLUE SAM A1 Senaki 02" ):InitLimit( 1, 0 ):SpawnScheduled( 5400, .1 )
	
	PATRIOT_BATUMI = SPAWN:New( "BLUE SAM A3 Batumi 01" ):InitLimit( 10, 0 ):SpawnScheduled( 5400, .1 )
	SA10_BATUMI = SPAWN:New( "BLUE SAM A3 Batumi 02" ):InitLimit( 12, 0 ):SpawnScheduled( 5400, .1 )
	TOR_BATUMI = SPAWN:New( "BLUE SAM A3 Batumi 03" ):InitLimit( 1, 0 ):SpawnScheduled( 5400, .1 )
	
	TOR_KUTAISI_WEST = SPAWN:New( "BLUE SAM A4 Kutaisi-West 01" ):InitLimit( 1, 0 ):SpawnScheduled( 5400, .1 )
	
	TOR_SUKHUMI = SPAWN:New( "BLUE SAM A5 Sukhumi 01" ):InitLimit( 1, 0 ):SpawnScheduled( 5400, .1 )
	
	TOR_GUDAUTA = SPAWN:New( "BLUE SAM A6 Gudauta 01" ):InitLimit( 1, 0 ):SpawnScheduled( 5400, .1 )
	
	SA10_KUTAISI = SPAWN:New( "BLUE SAM Ax Kutaisi 01" ):InitLimit( 12, 0 ):SpawnScheduled( 5400, .1 )
	
	SA15_FARP_DALLAS = SPAWN:New( "BLUE SAM FARP Dallas 01" ):InitLimit( 1, 0 ):SpawnScheduled( 5400, .1 )
	
	SA15_FARP_PARIS = SPAWN:New( "BLUE SAM FARP Paris 01" ):InitLimit( 1, 0 ):SpawnScheduled( 5400, .1 )

-- OTH NAZIEMNE -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------	
	
	TECHNIKA_FARP_DALLAS = SPAWN:New( "BLUE TECH FARP Dallas 01" ):InitLimit( 4, 0 ):SpawnScheduled( 5400, .1 )
	TECHNIKA_FARP_PARIS = SPAWN:New( "BLUE TECH FARP Paris 01" ):InitLimit( 4, 0 ):SpawnScheduled( 5400, .1 )
	TECHNIKA_FARP_ROME = SPAWN:New( "BLUE TECH FARP Rome 01" ):InitLimit( 4, 0 ):SpawnScheduled( 5400, .1 )
	TECHNIKA_FARP_MADRIT = SPAWN:New( "BLUE TECH FARP Madrit 01" ):InitLimit( 4, 0 ):SpawnScheduled( 5400, .1 )


-- OKRĘTY-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
	--KuzniecovRed=SPAWN:New("RED CV 1143.5 Admiral Kuzniecov"):InitLimit( 1, 100 ):SpawnScheduled( 60, .1 )	
	
	
-- POLIGONY A2A-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- A2A 01 Vaziani MiG-23 ----------------------------

	CapZone_RED_Vaziani_J11 = ZONE_POLYGON:New( "A2A Vaziani 01 Su27", GROUP:FindByName( "A2A Vaziani 01 Su27" ) )
	CapZone_RED_Vaziani_Mig23 = ZONE_POLYGON:New( "A2A Vaziani 01 MiG23", GROUP:FindByName( "A2A Vaziani 01 MiG23" ) )

	South_CAP_Detection_Units = SET_GROUP:New()
	South_CAP_Detection_Units:FilterPrefixes( { "RED","DEF"} )
	South_CAP_Detection_Units:FilterStart()
	South_CAP_Detection = DETECTION_AREAS:New( South_CAP_Detection_Units, 300000 )
	
	South_CAP_Border = ZONE_POLYGON:New( "A2A Vaziani BORDER", GROUP:FindByName( "A2A Vaziani BORDER" ) )
	
	
	A2A_Vaziani_CAP = AI_A2A_DISPATCHER:New( South_CAP_Detection )
	A2A_Vaziani_CAP:SetBorderZone( South_CAP_Border )

	A2A_Vaziani_CAP:SetSquadron( "Vaziani J11", AIRBASE.Caucasus.Tbilisi_Lochini, "RED CAP VAZIANI J11")
	A2A_Vaziani_CAP:SetSquadronCap( "Vaziani J11", CapZone_RED_Vaziani_J11, UTILS.FeetToMeters(21000), UTILS.FeetToMeters(27000), UTILS.KnotsToKmph(270), UTILS.KnotsToKmph(320), UTILS.KnotsToKmph(270), UTILS.KnotsToKmph(900), "BARO" )
	A2A_Vaziani_CAP:SetSquadronCapRacetrack( "Vaziani J11", UTILS.FeetToMeters(21000), UTILS.FeetToMeters(27000), 240, 60, 20*60, 40*60)
	A2A_Vaziani_CAP:SetSquadronCapInterval( "Vaziani J11", 2, 30, 90, 1 )
	A2A_Vaziani_CAP:SetSquadronGci( "Vaziani J11", 900, 1200 )


	A2A_Vaziani_CAP:SetSquadron( "Vaziani MiG23", AIRBASE.Caucasus.Vaziani, "RED CAP VAZIANI MIG23 01")
	A2A_Vaziani_CAP:SetSquadronCap( "Vaziani MiG23", CapZone_RED_Vaziani_Mig23, UTILS.FeetToMeters(19000), UTILS.FeetToMeters(27000), UTILS.KnotsToKmph(270), UTILS.KnotsToKmph(320), UTILS.KnotsToKmph(270), UTILS.KnotsToKmph(900), "BARO" )
	A2A_Vaziani_CAP:SetSquadronCapRacetrack( "Vaziani MiG23", UTILS.FeetToMeters(19000), UTILS.FeetToMeters(27000), 120, 305, 20*60, 40*60)
	A2A_Vaziani_CAP:SetSquadronCapInterval( "Vaziani MiG23", 2, 30, 90, 1 )
	A2A_Vaziani_CAP:SetSquadronGci( "Vaziani MiG23", 900, 1200 )
	A2A_Vaziani_CAP:SetSquadronTakeoffFromParkingCold("Vaziani MiG23")
	

	A2A_Vaziani_CAP:SetDefaultOverhead(1.25)
	A2A_Vaziani_CAP:SetEngageRadius(100000)
	A2A_Vaziani_CAP:SetDefaultTakeoffFromParkingHot()
	A2A_Vaziani_CAP:SetDefaultLandingNearAirbase ()
	A2A_Vaziani_CAP:SetDefaultFuelThreshold(0.20)
	A2A_Vaziani_CAP:SetDefaultGrouping(2)
	A2A_Vaziani_CAP:SetDefaultDamageThreshold( 0.90 )
	A2A_Vaziani_CAP:SetDefaultCapLimit(6)
	
	A2A_Vaziani_CAP:SetTacticalDisplay( false )


	
--A2A 02 North Sochi, Carrier, Maykop -----------------------------------------------------------------------------------------------------------------

	North_CAP_Lotniskowiec = ZONE_POLYGON:New( "A2A Carrier CAP", GROUP:FindByName( "A2A Carrier CAP" ) )
	North_CAP_Sochi = ZONE_POLYGON:New( "A2A Sochi CAP", GROUP:FindByName( "A2A Sochi CAP" ) )
	North_CAP_Maykop = ZONE_POLYGON:New( "A2A Maykop CAP", GROUP:FindByName( "A2A Maykop CAP" ) )

	North_CAP_Detection_Units = SET_GROUP:New()
	North_CAP_Detection_Units:FilterPrefixes( { "RED","DEF"} )
	North_CAP_Detection_Units:FilterStart()
	North_CAP_Detection = DETECTION_AREAS:New( North_CAP_Detection_Units, 300000 )
	
	North_CAP_Border = ZONE_POLYGON:New( "A2A Maykop BORDER", GROUP:FindByName( "A2A Maykop BORDER" ) )
	
	

	
	A2A_CAP = AI_A2A_DISPATCHER:New( North_CAP_Detection )
	A2A_CAP:SetBorderZone( North_CAP_Border )

	A2A_CAP:SetSquadron( "Sochi Su27", AIRBASE.Caucasus.Sochi_Adler, "A2A Sochi Su-27")
	A2A_CAP:SetSquadronCap( "Sochi Su27", North_CAP_Sochi, UTILS.FeetToMeters(21000), UTILS.FeetToMeters(27000), UTILS.KnotsToKmph(270), UTILS.KnotsToKmph(320), UTILS.KnotsToKmph(270), UTILS.KnotsToKmph(900), "BARO" )
	A2A_CAP:SetSquadronCapRacetrack( "Sochi Su27", UTILS.FeetToMeters(21000), UTILS.FeetToMeters(27000), 240, 60, 20*60, 40*60)
	A2A_CAP:SetSquadronCapInterval( "Sochi Su27", 2, 30, 90, 1 )
	A2A_CAP:SetSquadronGci( "Sochi Su27", 900, 1200 )


	A2A_CAP:SetSquadron( "Carrier Su-33", "CV 1143.5 Admiral Kuznetsov", "A2A Carrier Su-33")
	A2A_CAP:SetSquadronCap( "Carrier Su-33", North_CAP_Lotniskowiec, UTILS.FeetToMeters(19000), UTILS.FeetToMeters(27000), UTILS.KnotsToKmph(270), UTILS.KnotsToKmph(320), UTILS.KnotsToKmph(270), UTILS.KnotsToKmph(900), "BARO" )
	A2A_CAP:SetSquadronCapRacetrack( "Carrier Su-33", UTILS.FeetToMeters(19000), UTILS.FeetToMeters(27000), 120, 305, 20*60, 40*60)
	A2A_CAP:SetSquadronCapInterval( "Carrier Su-33", 2, 30, 90, 1 )
	--A2A_CAP:SetSquadronGci( "Carrier Su-33", 900, 1200 )
	A2A_CAP:SetSquadronTakeoffFromParkingCold("Carrier Su-33")
	
	
	A2A_CAP:SetSquadron( "Maykop MiG-31", AIRBASE.Caucasus.Maykop_Khanskaya, "A2A Maykop MiG-31")
	A2A_CAP:SetSquadronCap( "Maykop MiG-31", North_CAP_Maykop, UTILS.FeetToMeters(25000), UTILS.FeetToMeters(42000), UTILS.KnotsToKmph(270), UTILS.KnotsToKmph(320), UTILS.KnotsToKmph(270), UTILS.KnotsToKmph(900), "BARO" )
	A2A_CAP:SetSquadronCapRacetrack( "Maykop MiG-31", UTILS.FeetToMeters(25000), UTILS.FeetToMeters(42000), 185, 305, 20*60, 40*60)
	A2A_CAP:SetSquadronCapInterval( "Maykop MiG-31", 1, 30, 90, 1 )
	--A2A_CAP:SetSquadronGci( "Maykop MiG-31", 900, 1200 )
	
	
	A2A_CAP:SetDefaultOverhead(1.25)
	A2A_CAP:SetEngageRadius(100000)
	A2A_CAP:SetDefaultTakeoffFromParkingHot()
	A2A_CAP:SetDefaultLandingNearAirbase ()
	A2A_CAP:SetDefaultFuelThreshold(0.20)
	A2A_CAP:SetDefaultGrouping(2)
	A2A_CAP:SetDefaultDamageThreshold( 0.90 )
	A2A_CAP:SetDefaultCapLimit(6)
	A2A_CAP:SetGciRadius( 125000 )
	
	A2A_CAP:SetTacticalDisplay( false )

-- OBRONA RED A2A---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Obrona Krasnodar
	KrasnodarSAM_Spawn1= SPAWN:New( "DEF Krasnodar 01" ):InitLimit( 12, 0 ):SpawnScheduled( 5400, .1 )

-- Obrona Maykop
	MaykopSAM_Spawn1= SPAWN:New( "DEF Maykop 01" ):InitLimit( 1, 0 ):SpawnScheduled( 5400, .1 )
	MaykopSAM_Spawn2= SPAWN:New( "DEF Maykop 02" ):InitLimit( 1, 0 ):SpawnScheduled( 5400, .1 )
	MaykopSAM_Spawn3= SPAWN:New( "DEF Maykop 03" ):InitLimit( 1, 0 ):SpawnScheduled( 5400, .1 )
	MaykopSAM_Spawn4= SPAWN:New( "DEF Maykop 04" ):InitLimit( 13, 0 ):SpawnScheduled( 5400, .1 )
	MaykopSAM_Spawn5= SPAWN:New( "DEF Maykop 05" ):InitLimit( 1, 0 ):SpawnScheduled( 5400, .1 )
	MaykopSAM_Spawn6= SPAWN:New( "DEF Maykop 06" ):InitLimit( 1, 0 ):SpawnScheduled( 5400, .1 )
	MaykopSAM_Spawn7= SPAWN:New( "DEF Maykop 07" ):InitLimit( 1, 0 ):SpawnScheduled( 5400, .1 )
	MaykopSAM_Spawn8= SPAWN:New( "DEF Maykop 08" ):InitLimit( 1, 0 ):SpawnScheduled( 5400, .1 )
	
	MaykopAAA_Spawn1= SPAWN:New( "DEF Maykop AAA 01" ):InitLimit( 10, 0 ):SpawnScheduled( 5400, .1 )
	MaykopAAA_Spawn2= SPAWN:New( "DEF Maykop AAA 02" ):InitLimit( 10, 0 ):SpawnScheduled( 5400, .1 )
	MaykopAAA_Spawn3= SPAWN:New( "DEF Maykop AAA 03" ):InitLimit( 10, 0 ):SpawnScheduled( 5400, .1 )
	MaykopAAA_Spawn4= SPAWN:New( "DEF Maykop AAA 04" ):InitLimit( 5, 0 ):SpawnScheduled( 5400, .1 )
	MaykopAAA_Spawn5= SPAWN:New( "DEF Maykop AAA 05" ):InitLimit( 5, 0 ):SpawnScheduled( 5400, .1 )
	MaykopAAA_Spawn6= SPAWN:New( "DEF Maykop AAA 06" ):InitLimit( 5, 0 ):SpawnScheduled( 5400, .1 )

	Advanced_SAM_Network_Maykop = SEAD:New( { "DEF Maykop 01","DEF Maykop 02","DEF Maykop 03","DEF Maykop 05" } )

-- Obrona Vaziani
	VazianiSAM_Spawn1= SPAWN:New( "DEF Vaziani 01" ):InitLimit( 1, 0 ):SpawnScheduled( 5400, .1 )
	VazianiSAM_Spawn2= SPAWN:New( "DEF Vaziani 02" ):InitLimit( 1, 0 ):SpawnScheduled( 5400, .1 )
	VazianiSAM_Spawn3= SPAWN:New( "DEF Vaziani 03" ):InitLimit( 1, 0 ):SpawnScheduled( 5400, .1 )
	VazianiSAM_Spawn4= SPAWN:New( "DEF Vaziani 04" ):InitLimit( 24, 0 ):SpawnScheduled( 5400, .1 )
	VazianiSAM_Spawn5= SPAWN:New( "DEF Vaziani 05" ):InitLimit( 1, 0 ):SpawnScheduled( 5400, .1 )
	VazianiSAM_Spawn5= SPAWN:New( "DEF Vaziani 06" ):InitLimit( 1, 0 ):SpawnScheduled( 5400, .1 )
	VazianiSAM_Spawn5= SPAWN:New( "DEF Vaziani 07" ):InitLimit( 1, 0 ):SpawnScheduled( 5400, .1 )
	VazianiSAM_Spawn5= SPAWN:New( "DEF Vaziani 08" ):InitLimit( 1, 0 ):SpawnScheduled( 5400, .1 )
	
	VazianiAAA_Spawn1= SPAWN:New( "DEF Vaziani AAA 01" ):InitLimit( 10, 0 ):SpawnScheduled( 5400, .1 )
	VazianiAAA_Spawn2= SPAWN:New( "DEF Vaziani AAA 02" ):InitLimit( 10, 0 ):SpawnScheduled( 5400, .1 )
	VazianiAAA_Spawn3= SPAWN:New( "DEF Vaziani AAA 03" ):InitLimit( 10, 0 ):SpawnScheduled( 5400, .1 )
	VazianiAAA_Spawn4= SPAWN:New( "DEF Vaziani AAA 04" ):InitLimit( 5, 0 ):SpawnScheduled( 5400, .1 )
	VazianiAAA_Spawn5= SPAWN:New( "DEF Vaziani AAA 05" ):InitLimit( 5, 0 ):SpawnScheduled( 5400, .1 )
	VazianiAAA_Spawn6= SPAWN:New( "DEF Vaziani AAA 06" ):InitLimit( 5, 0 ):SpawnScheduled( 5400, .1 )
	
	Advanced_SAM_Network_Vaziani = SEAD:New( { "DEF Vaziani 01","DEF Vaziani 02","DEF Vaziani 03","DEF Vaziani 04" } )
	
	
	TbilisiSAM_Spawn1= SPAWN:New( "DEF Tbilisi 01" ):InitLimit( 1, 0 ):SpawnScheduled( 5400, .1 )
	TbilisiSAM_Spawn2= SPAWN:New( "DEF Tbilisi 02" ):InitLimit( 1, 0 ):SpawnScheduled( 5400, .1 )
	TbilisiSAM_Spawn3= SPAWN:New( "DEF Tbilisi 03" ):InitLimit( 1, 0 ):SpawnScheduled( 5400, .1 )
	TbilisiSAM_Spawn4= SPAWN:New( "DEF Tbilisi 04" ):InitLimit( 1, 0 ):SpawnScheduled( 5400, .1 )
	TbilisiSAM_Spawn5= SPAWN:New( "DEF Tbilisi 05" ):InitLimit( 1, 0 ):SpawnScheduled( 5400, .1 )
	TbilisiSAM_Spawn5= SPAWN:New( "DEF Tbilisi 06" ):InitLimit( 1, 0 ):SpawnScheduled( 5400, .1 )
	
	TbilisiAAA_Spawn1= SPAWN:New( "DEF Tbilisi AAA 01" ):InitLimit( 10, 0 ):SpawnScheduled( 5400, .1 )
	TbilisiAAA_Spawn2= SPAWN:New( "DEF Tbilisi AAA 02" ):InitLimit( 10, 0 ):SpawnScheduled( 5400, .1 )
	TbilisiAAA_Spawn3= SPAWN:New( "DEF Tbilisi AAA 03" ):InitLimit( 10, 0 ):SpawnScheduled( 5400, .1 )
	TbilisiAAA_Spawn4= SPAWN:New( "DEF Tbilisi AAA 04" ):InitLimit( 10, 0 ):SpawnScheduled( 5400, .1 )
	TbilisiAAA_Spawn5= SPAWN:New( "DEF Tbilisi AAA 05" ):InitLimit( 5, 0 ):SpawnScheduled( 5400, .1 )
	TbilisiAAA_Spawn6= SPAWN:New( "DEF Tbilisi AAA 06" ):InitLimit( 5, 0 ):SpawnScheduled( 5400, .1 )
	
	Advanced_SAM_Network_Tblisi = SEAD:New( { "DEF Tbilisi 01","DEF Tbilisi 02","DEF Tbilisi 03","DEF Tbilisi 04","DEF Tbilisi 05","DEF Tbilisi 06"} )
	
	
-- Obrona Sochi
	SochiSAM_Spawn1= SPAWN:New( "DEF Sochi 01" ):InitLimit( 3, 0 ):SpawnScheduled( 5400, .1 )
	SochiSAM_Spawn2= SPAWN:New( "DEF Sochi 02" ):InitLimit( 3, 0 ):SpawnScheduled( 5400, .1 )
	SochiSAM_Spawn3= SPAWN:New( "DEF Sochi 03" ):InitLimit( 3, 0 ):SpawnScheduled( 5400, .1 )
	SochiSAM_Spawn4= SPAWN:New( "DEF Sochi 04" ):InitLimit( 2, 0 ):SpawnScheduled( 5400, .1 )
	SochiSAM_Spawn5= SPAWN:New( "DEF Sochi 05" ):InitLimit( 16, 0 ):SpawnScheduled( 5400, .1 )
	
	SochiAAA_Spawn1= SPAWN:New( "DEF Sochi AAA 01" ):InitLimit( 14, 0 ):SpawnScheduled( 5400, .1 )
	SochiAAA_Spawn2= SPAWN:New( "DEF Sochi AAA 02" ):InitLimit( 10, 0 ):SpawnScheduled( 5400, .1 )
	SochiAAA_Spawn3= SPAWN:New( "DEF Sochi AAA 03" ):InitLimit( 5, 0 ):SpawnScheduled( 5400, .1 )
	SochiAAA_Spawn4= SPAWN:New( "DEF Sochi AAA 04" ):InitLimit( 5, 0 ):SpawnScheduled( 5400, .1 )
	SochiAAA_Spawn5= SPAWN:New( "DEF Sochi AAA 05" ):InitLimit( 5, 0 ):SpawnScheduled( 5400, .1 )
	SochiAAA_Spawn6= SPAWN:New( "DEF Sochi AAA 06" ):InitLimit( 5, 0 ):SpawnScheduled( 5400, .1 )
	
	Advanced_SAM_Network_Sochi = SEAD:New( { "DEF Sochi 01","DEF Sochi 02","DEF Sochi 03","DEF Sochi 04","DEF Sochi 05" } )
	
	

-- FUNKCJONALNOŚCI-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- No MOOSE settings menu. Comment out this line if required.
_SETTINGS:SetPlayerMenuOff()

-- S-3B Recovery Tanker spawning in air.
local tanker=RECOVERYTANKER:New("CVN-71 Theodore Roosevelt", "Tanker 60Y Arco") -- Nazwa lotniskowca zależy od wybranego modelu
tanker:SetRadio(302):SetModex(511):SetTACAN(60, "ARC"):SetAltitude(3500):SetRacetrackDistances(15, 2):SetHomeBase ("CVN-71 Theodore Roosevelt"):__Start(1)

-- Rescue Helo with home base Lake Erie. Has to be a global object!
rescuehelo=RESCUEHELO:New("CVN-71 Theodore Roosevelt", "B1 Roosevelt Guard")
rescuehelo:SetHomeBase(AIRBASE:FindByName("B1 Roosevelt 01")) -- wybrany okręt
rescuehelo:SetModex(42)
rescuehelo:__Start(1)

-- POLIGONY A2G-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--A2G 01 Kutaisi Zaawansowany

	Kutaisi_Range=RANGE:New("Kutaisi Range")
	Kutaisi_Range_BombTargets_Moving={"AI RED Kutaisi Range Moving"}
	Kutaisi_Range_BombTargets_Bomb001={"Kutaisi Bomb #001"}
	Kutaisi_Range_BombTargets_JTAC={"AI RED Kutaisi Range JTAC"}
	Kutaisi_Range_BombTargets_SEAD={"AI RED Kutaisi Range SEAD"}
	
	Kutaisi_Range_StrafeTargets={"Kutaisi Strafe #001", "Kutaisi Strafe #002","Kutaisi Strafe #003","Kutaisi Strafe #004","Kutaisi Strafe #005"}
	
	Kutaisi_Range:AddStrafePit(Kutaisi_Range_StrafeTargets, 3000, 300, 251, true, 20, 610)
	
	Kutaisi_Range:AddBombingTargets(Kutaisi_Range_BombTargets_Moving, 50)
	Kutaisi_Range:AddBombingTargets(Kutaisi_Range_BombTargets_Bomb001, 50)
	Kutaisi_Range:AddBombingTargets(Kutaisi_Range_BombTargets_JTAC, 50)
	Kutaisi_Range:AddBombingTargets(Kutaisi_Range_BombTargets_SEAD, 50)
	
	Kutaisi_Range:GetFoullineDistance("Kutaisi Strafe #001", "Kutaisi Strafe Foul Line")
	Kutaisi_Range:Start()

	
-- A2G 02
function Poligon_A2G_02_Spawner()
	Kobuleti_Range_Spawn_ZoneTable1 = { ZONE:New( "Kobuleti Spawn 1" ), ZONE:New( "Kobuleti Spawn 2" ), ZONE:New( "Kobuleti Spawn 3" ) }
	Kobuleti_Range_Spawn1 = SPAWN:New( "AI RED Kobuleti Range Static 1" ):InitLimit( 1, 0 ):InitRandomizeZones( Kobuleti_Range_Spawn_ZoneTable1 ):SpawnScheduled( 60, .8 )
	
	Kobuleti_Range_Spawn_ZoneTable2 = { ZONE:New( "Kobuleti Spawn 4" ), ZONE:New( "Kobuleti Spawn 5" ), ZONE:New( "Kobuleti Spawn 6" ) }
	Kobuleti_Range_Spawn2 = SPAWN:New( "AI RED Kobuleti Range Static 2" ):InitLimit( 1, 0 ):InitRandomizeZones( Kobuleti_Range_Spawn_ZoneTable2 ):SpawnScheduled( 60, .8 )

	if A2G02_Na_mapie == true then 
		MESSAGE:New("Poligon A2G 02 został zrespawnowany.", 5):ToCoalition( coalition.side.BLUE )
	else
		MESSAGE:New("Poligon A2G 02 został uruchomiony.", 5):ToCoalition( coalition.side.BLUE )
		A2G02_Na_mapie = true
	end
end

-- A2G A2G 03 Cele niepancerne		
function Poligon_A2G_03_Spawner()   
	A2G03_1= SPAWN:New( "A2G 03 01" ):InitLimit( 3, 0 ):SpawnScheduled(5400, 1)
	A2G03_2= SPAWN:New( "A2G 03 02" ):InitLimit( 3, 0 ):SpawnScheduled(5400, 1)
	A2G03_3= SPAWN:New( "A2G 03 03" ):InitLimit( 3, 0 ):SpawnScheduled(5400, 1)
	A2G03_4= SPAWN:New( "A2G 03 04" ):InitLimit( 3, 0 ):SpawnScheduled(5400, 1)
	A2G03_5= SPAWN:New( "A2G 03 05" ):InitLimit( 3, 0 ):SpawnScheduled(5400, 1)
	
	if A2G03_Na_mapie == true then 
		MESSAGE:New("Poligon A2G 03 został zrespawnowany.", 5):ToCoalition( coalition.side.BLUE )
	else
		MESSAGE:New("Poligon A2G 03 został uruchomiony.", 5):ToCoalition( coalition.side.BLUE )
		A2G03_Na_mapie = true
	end
end
	
-- A2G A2G 04 Płaskowyż
function Poligon_A2G_04_Spawner()
	A2G04_1= SPAWN:New( "A2G 04 01" ):InitLimit( 7, 0 ):SpawnScheduled(5400, 1)
	
	if A2G04_Na_mapie == true then 
		MESSAGE:New("Poligon A2G 04 został zrespawnowany.", 5):ToCoalition( coalition.side.BLUE )
	else
		MESSAGE:New("Poligon A2G 04 został uruchomiony.", 5):ToCoalition( coalition.side.BLUE )
		A2G04_Na_mapie = true
	end
end

-- A2G 05 SA-10 Beslan
function Poligon_A2G_05_Spawner()
	A2G05_1 = SPAWN:New( "A2G 05 01" ):InitLimit( 12, 0 ):SpawnScheduled(5400, 1)
	A2G05_2 = SPAWN:New( "A2G 05 02" ):InitLimit( 1, 0 ):SpawnScheduled(5400, 1)
	A2G05_3 = SPAWN:New( "A2G 05 03" ):InitLimit( 1, 0 ):SpawnScheduled(5400, 1)
	A2G05_4 = SPAWN:New( "A2G 05 04" ):InitLimit( 1, 0 ):SpawnScheduled(5400, 1)
	A2G05_5 = SPAWN:New( "A2G 05 05" ):InitLimit( 1, 0 ):SpawnScheduled(5400, 1)
	A2G05_6 = SPAWN:New( "A2G 05 06" ):InitLimit( 1, 0 ):SpawnScheduled(5400, 1)
	A2G05_7 = SPAWN:New( "A2G 05 07" ):InitLimit( 1, 0 ):SpawnScheduled(5400, 1)
	A2G05_8 = SPAWN:New( "A2G 05 08" ):InitLimit( 1, 0 ):SpawnScheduled(5400, 1)
	A2G05_9 = SPAWN:New( "A2G 05 09" ):InitLimit( 1, 0 ):SpawnScheduled(5400, 1)
	A2G05_10 = SPAWN:New( "A2G 05 10" ):InitLimit( 1, 0 ):SpawnScheduled(5400, 1)
	A2G05_11 = SPAWN:New( "A2G 05 11" ):InitLimit( 1, 0 ):SpawnScheduled(5400, 1)
	A2G05_12 = SPAWN:New( "A2G 05 12" ):InitLimit( 1, 0 ):SpawnScheduled(5400, 1)
	A2G05_13 = SPAWN:New( "A2G 05 13" ):InitLimit( 1, 0 ):SpawnScheduled(5400, 1)
	A2G05_14 = SPAWN:New( "A2G 05 14" ):InitLimit( 1, 0 ):SpawnScheduled(5400, 1)
	A2G05_15 = SPAWN:New( "A2G 05 15" ):InitLimit( 1, 0 ):SpawnScheduled(5400, 1)
	
	if A2G05_Na_mapie == true then 
		MESSAGE:New("Poligon A2G 05 został zrespawnowany.", 5):ToCoalition( coalition.side.BLUE )
	else
		MESSAGE:New("Poligon A2G 05 został uruchomiony.", 5):ToCoalition( coalition.side.BLUE )
		A2G05_Na_mapie = true
	end
end
	
-- A2G 06 Wioska SAM
function Poligon_A2G_06_Spawner()
	A2G06_1 = SPAWN:New( "A2G 06 01" ):InitLimit( 1, 0 ):SpawnScheduled(5400, 1)
	A2G06_2 = SPAWN:New( "A2G 06 02" ):InitLimit( 1, 0 ):SpawnScheduled(5400, 1)
	A2G06_3 = SPAWN:New( "A2G 06 03" ):InitLimit( 1, 0 ):SpawnScheduled(5400, 1)
	A2G06_4 = SPAWN:New( "A2G 06 04" ):InitLimit( 1, 0 ):SpawnScheduled(5400, 1)
	A2G06_5 = SPAWN:New( "A2G 06 05" ):InitLimit( 1, 0 ):SpawnScheduled(5400, 1)
	A2G06_6 = SPAWN:New( "A2G 06 06" ):InitLimit( 1, 0 ):SpawnScheduled(5400, 1)
	
	if A2G06_Na_mapie == true then 
		MESSAGE:New("Poligon A2G 06 został zrespawnowany.", 5):ToCoalition( coalition.side.BLUE )
	else
		MESSAGE:New("Poligon A2G 06 został uruchomiony.", 5):ToCoalition( coalition.side.BLUE )
		A2G06_Na_mapie = true
	end
end

-- A2G 07 Wioska SAM
function Poligon_A2G_07_Spawner()
	A2G07_1 = SPAWN:New( "A2G 07 01" ):InitLimit( 1, 0 ):SpawnScheduled(5400, 1)
	A2G07_2 = SPAWN:New( "A2G 07 02" ):InitLimit( 1, 0 ):SpawnScheduled(5400, 1)
	A2G07_3 = SPAWN:New( "A2G 07 03" ):InitLimit( 1, 0 ):SpawnScheduled(5400, 1)
	A2G07_4 = SPAWN:New( "A2G 07 04" ):InitLimit( 1, 0 ):SpawnScheduled(5400, 1)
	A2G07_5 = SPAWN:New( "A2G 07 05" ):InitLimit( 1, 0 ):SpawnScheduled(5400, 1)
	A2G07_6 = SPAWN:New( "A2G 07 06" ):InitLimit( 1, 0 ):SpawnScheduled(5400, 1)
	
	if A2G07_Na_mapie == true then 
		MESSAGE:New("Poligon A2G 07 został zrespawnowany.", 5):ToCoalition( coalition.side.BLUE )
	else
		MESSAGE:New("Poligon A2G 07 został uruchomiony.", 5):ToCoalition( coalition.side.BLUE )
		A2G07_Na_mapie = true
	end
end
	
-- A2G 08 Wioska SAM
function Poligon_A2G_08_Spawner()
	A2G08_1 = SPAWN:New( "A2G 08 01" ):InitLimit( 1, 0 ):SpawnScheduled(5400, 1)
	A2G08_2 = SPAWN:New( "A2G 08 02" ):InitLimit( 1, 0 ):SpawnScheduled(5400, 1)
	A2G08_3 = SPAWN:New( "A2G 08 03" ):InitLimit( 1, 0 ):SpawnScheduled(5400, 1)
	A2G08_4 = SPAWN:New( "A2G 08 04" ):InitLimit( 1, 0 ):SpawnScheduled(5400, 1)
	A2G08_5 = SPAWN:New( "A2G 08 05" ):InitLimit( 1, 0 ):SpawnScheduled(5400, 1)
	A2G08_6 = SPAWN:New( "A2G 08 06" ):InitLimit( 1, 0 ):SpawnScheduled(5400, 1)
	A2G08_7 = SPAWN:New( "A2G 08 07" ):InitLimit( 1, 0 ):SpawnScheduled(5400, 1)
	A2G08_8 = SPAWN:New( "A2G 08 08" ):InitLimit( 1, 0 ):SpawnScheduled(5400, 1)
	A2G08_9 = SPAWN:New( "A2G 08 09" ):InitLimit( 1, 0 ):SpawnScheduled(5400, 1)
	A2G08_10 = SPAWN:New( "A2G 08 10" ):InitLimit( 1, 0 ):SpawnScheduled(5400, 1)
	A2G08_11 = SPAWN:New( "A2G 08 11" ):InitLimit( 1, 0 ):SpawnScheduled(5400, 1)
	A2G08_12 = SPAWN:New( "A2G 08 12" ):InitLimit( 1, 0 ):SpawnScheduled(5400, 1)
	A2G08_13 = SPAWN:New( "A2G 08 13" ):InitLimit( 1, 0 ):SpawnScheduled(5400, 1)
	A2G08_14 = SPAWN:New( "A2G 08 14" ):InitLimit( 1, 0 ):SpawnScheduled(5400, 1)
	A2G08_15 = SPAWN:New( "A2G 08 15" ):InitLimit( 1, 0 ):SpawnScheduled(5400, 1)
	A2G08_16 = SPAWN:New( "A2G 08 16" ):InitLimit( 1, 0 ):SpawnScheduled(5400, 1)
	
	if A2G08_Na_mapie == true then 
		MESSAGE:New("Poligon A2G 08 został zrespawnowany.", 5):ToCoalition( coalition.side.BLUE )
	else
		MESSAGE:New("Poligon A2G 08 został uruchomiony.", 5):ToCoalition( coalition.side.BLUE )
		A2G08_Na_mapie = true
	end
end
	
-- A2G #9
function Poligon_A2G_09_Spawner()
	A2G09_1= SPAWN:New( "A2G #09 01" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	A2G09_2= SPAWN:New( "A2G #09 02" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	A2G09_3= SPAWN:New( "A2G #09 03" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	A2G09_4= SPAWN:New( "A2G #09 04" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	A2G09_5= SPAWN:New( "A2G #09 05" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	A2G09_6= SPAWN:New( "A2G #09 06" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	A2G09_7= SPAWN:New( "A2G #09 07" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	A2G09_8= SPAWN:New( "A2G #09 08" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	A2G09_9= SPAWN:New( "A2G #09 09" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	A2G09_10= SPAWN:New( "A2G #09 10" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	A2G09_11= SPAWN:New( "A2G #09 11" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	A2G09_12= SPAWN:New( "A2G #09 12" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	A2G09_13= SPAWN:New( "A2G #09 13" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	A2G09_14= SPAWN:New( "A2G #09 14" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	A2G09_15= SPAWN:New( "A2G #09 15" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	A2G09_16= SPAWN:New( "A2G #09 16" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	A2G09_17= SPAWN:New( "A2G #09 17" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	A2G09_18= SPAWN:New( "A2G #09 18" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	A2G09_19= SPAWN:New( "A2G #09 19" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	A2G09_20= SPAWN:New( "A2G #09 20" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	A2G09_21= SPAWN:New( "A2G #09 21" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	A2G09_22= SPAWN:New( "A2G #09 22" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	A2G09_23= SPAWN:New( "A2G #09 23" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	A2G09_24= SPAWN:New( "A2G #09 24" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	A2G09_25= SPAWN:New( "A2G #09 25" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	A2G09_26= SPAWN:New( "A2G #09 26" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	A2G09_27= SPAWN:New( "A2G #09 27" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	
	if A2G09_Na_mapie == true then 
		MESSAGE:New("Poligon A2G 09 został zrespawnowany.", 5):ToCoalition( coalition.side.BLUE )
	else
		MESSAGE:New("Poligon A2G 09 został uruchomiony.", 5):ToCoalition( coalition.side.BLUE )
		A2G09_Na_mapie = true
	end
end

-- A2G #10
function Poligon_A2G_10_Spawner()
	A2G10_1= SPAWN:New( "A2G #10 01" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	A2G10_2= SPAWN:New( "A2G #10 02" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	A2G10_3= SPAWN:New( "A2G #10 03" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	A2G10_4= SPAWN:New( "A2G #10 04" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	A2G10_5= SPAWN:New( "A2G #10 05" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	A2G10_6= SPAWN:New( "A2G #10 06" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	A2G10_7= SPAWN:New( "A2G #10 07" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	A2G10_8= SPAWN:New( "A2G #10 08" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	A2G10_9= SPAWN:New( "A2G #10 09" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	A2G10_10= SPAWN:New( "A2G #10 10" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	A2G10_11= SPAWN:New( "A2G #10 11" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	A2G10_12= SPAWN:New( "A2G #10 12" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	A2G10_13= SPAWN:New( "A2G #10 13" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	A2G10_14= SPAWN:New( "A2G #10 14" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	A2G10_15= SPAWN:New( "A2G #10 15" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	A2G10_16= SPAWN:New( "A2G #10 16" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	A2G10_17= SPAWN:New( "A2G #10 17" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	A2G10_18= SPAWN:New( "A2G #10 18" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	A2G10_19= SPAWN:New( "A2G #10 19" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	A2G10_20= SPAWN:New( "A2G #10 20" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	A2G10_21= SPAWN:New( "A2G #10 21" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	A2G10_22= SPAWN:New( "A2G #10 22" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	A2G10_23= SPAWN:New( "A2G #10 23" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	A2G10_24= SPAWN:New( "A2G #10 24" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	A2G10_25= SPAWN:New( "A2G #10 25" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	A2G10_26= SPAWN:New( "A2G #10 26" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	A2G10_27= SPAWN:New( "A2G #10 27" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	
	if A2G10_Na_mapie == true then 
		MESSAGE:New("Poligon A2G 10 został zrespawnowany.", 5):ToCoalition( coalition.side.BLUE )
	else
		MESSAGE:New("Poligon A2G 10 został uruchomiony.", 5):ToCoalition( coalition.side.BLUE )
		A2G10_Na_mapie = true
	end
end

-- A2G #11
function Poligon_A2G_11_Spawner()
	A2G11_01= SPAWN:New( "A2G #11 01" ):InitLimit( 7, 0 ):SpawnScheduled(5400, .1 )
	A2G11_02= SPAWN:New( "A2G #11 02" ):InitLimit( 6, 0 ):SpawnScheduled(5400, .1 )
	A2G11_03= SPAWN:New( "A2G #11 03" ):InitLimit( 7, 0 ):SpawnScheduled(5400, .1 )
	A2G11_04= SPAWN:New( "A2G #11 04" ):InitLimit( 6, 0 ):SpawnScheduled(5400, .1 )
	A2G11_05= SPAWN:New( "A2G #11 05" ):InitLimit( 7, 0 ):SpawnScheduled(5400, .1 )
	A2G11_06= SPAWN:New( "A2G #11 06" ):InitLimit( 7, 0 ):SpawnScheduled(5400, .1 )
	
	if A2G11_Na_mapie == true then 
		MESSAGE:New("Poligon A2G 11 został zrespawnowany.", 5):ToCoalition( coalition.side.BLUE )
	else
		MESSAGE:New("Poligon A2G 11 został uruchomiony.", 5):ToCoalition( coalition.side.BLUE )
		A2G11_Na_mapie = true
	end
end

-- A2G #12
function Poligon_A2G_12_Spawner()
	A2G12_01= SPAWN:New( "A2G #12 01" ):InitLimit( 9, 0 ):SpawnScheduled(5400, .1 )
	A2G12_02= SPAWN:New( "A2G #12 02" ):InitLimit( 9, 0 ):SpawnScheduled(5400, .1 )
	
	if A2G12_Na_mapie == true then 
		MESSAGE:New("Poligon A2G 12 został zrespawnowany.", 5):ToCoalition( coalition.side.BLUE )
	else
		MESSAGE:New("Poligon A2G 12 został uruchomiony.", 5):ToCoalition( coalition.side.BLUE )
		A2G12_Na_mapie = true
	end
end

-- A2G #13
function Poligon_A2G_13_Spawner()
	A2G13_01= SPAWN:New( "A2G #13 01" ):InitLimit( 16, 0 ):SpawnScheduled(5400, .1 )

	if A2G13_Na_mapie == true then 
		MESSAGE:New("Poligon A2G 13 został zrespawnowany.", 5):ToCoalition( coalition.side.BLUE )
	else
		MESSAGE:New("Poligon A2G 13 został uruchomiony.", 5):ToCoalition( coalition.side.BLUE )
		A2G13_Na_mapie = true
	end
end

-- A2G #14
function Poligon_A2G_14_Spawner()
	A2G14_01= SPAWN:New( "A2G 14-1" ):InitLimit( 12, 0 ):SpawnScheduled(5400, .1 )
	A2G14_02= SPAWN:New( "A2G 14-2" ):InitLimit( 12, 0 ):SpawnScheduled(5400, .1 )
	A2G14_03= SPAWN:New( "A2G 14-3" ):InitLimit( 12, 0 ):SpawnScheduled(5400, .1 )

	if A2G14_Na_mapie == true then 
		MESSAGE:New("Poligon A2G 14 został zrespawnowany.", 5):ToCoalition( coalition.side.BLUE )
	else
		MESSAGE:New("Poligon A2G 14 został uruchomiony.", 5):ToCoalition( coalition.side.BLUE )
		A2G14_Na_mapie = true
	end
end

-- POLIGONY AS-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

	--AS1
function Poligon_AS_01_Spawner()
	AS1_01= SPAWN:New( "AS1 01" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )

	if AS1_Na_mapie == true then 
		MESSAGE:New("Poligon AS 1 został zrespawnowany.", 5):ToCoalition( coalition.side.BLUE )
	else
		MESSAGE:New("Poligon AS 1 został uruchomiony.", 5):ToCoalition( coalition.side.BLUE )
		AS1_Na_mapie = true
	end
end
	
	--AS2
function Poligon_AS_02_Spawner()
	AS2_01= SPAWN:New( "AS2 01" ):InitLimit( 11, 0 ):SpawnScheduled(5400, .1 )

	if AS2_Na_mapie == true then 
		MESSAGE:New("Poligon AS 2 został zrespawnowany.", 5):ToCoalition( coalition.side.BLUE )
	else
		MESSAGE:New("Poligon AS 2 został uruchomiony.", 5):ToCoalition( coalition.side.BLUE )
		AS2_Na_mapie = true
	end
end
	
	--AS3
function Poligon_AS_03_Spawner()
	AS3_01= SPAWN:New( "AS3 01" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	AS3_02= SPAWN:New( "AS3 02" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	AS3_03= SPAWN:New( "AS3 03" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	AS3_04= SPAWN:New( "AS3 04" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	AS3_05= SPAWN:New( "AS3 05" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )

	if AS3_Na_mapie == true then 
		MESSAGE:New("Poligon AS 3 został zrespawnowany.", 5):ToCoalition( coalition.side.BLUE )
	else
		MESSAGE:New("Poligon AS 3 został uruchomiony.", 5):ToCoalition( coalition.side.BLUE )
		AS3_Na_mapie = true
	end
end

	--AS4
function Poligon_AS_04_Spawner()
	AS4_01= SPAWN:New( "AS4 01" ):InitLimit( 12, 0 ):SpawnScheduled(5400, .1 )

	if AS4_Na_mapie == true then 
		MESSAGE:New("Poligon AS 4 został zrespawnowany.", 5):ToCoalition( coalition.side.BLUE )
	else
		MESSAGE:New("Poligon AS 4 został uruchomiony.", 5):ToCoalition( coalition.side.BLUE )
		AS4_Na_mapie = true
	end
end


	--AS5
function Poligon_AS_05_Spawner()
	AS5_01= SPAWN:New( "AS5 01" ):InitLimit( 9, 0 ):SpawnScheduled(5400, .1 )
	
	if AS5_Na_mapie == true then 
		MESSAGE:New("Poligon AS 5 został zrespawnowany.", 5):ToCoalition( coalition.side.BLUE )
	else
		MESSAGE:New("Poligon AS 5 został uruchomiony.", 5):ToCoalition( coalition.side.BLUE )
		AS5_Na_mapie = true
	end

end
	
	--AS6
function Poligon_AS_06_Spawner()
	AS6_01= SPAWN:New( "AS6 #01" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	AS6_02= SPAWN:New( "AS6 #02" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	AS6_03= SPAWN:New( "AS6 #03" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	AS6_04= SPAWN:New( "AS6 #04" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	AS6_05= SPAWN:New( "AS6 #05" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	AS6_06= SPAWN:New( "AS6 #06" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	AS6_07= SPAWN:New( "AS6 #07" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	AS6_08= SPAWN:New( "AS6 #08" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	AS6_09= SPAWN:New( "AS6 #09" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	AS6_10= SPAWN:New( "AS6 #10" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	AS6_11= SPAWN:New( "AS6 #11" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	AS6_12= SPAWN:New( "AS6 #12" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	AS6_13= SPAWN:New( "AS6 #13" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	AS6_14= SPAWN:New( "AS6 #14" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	AS6_15= SPAWN:New( "AS6 #15" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	AS6_16= SPAWN:New( "AS6 #16" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	AS6_17= SPAWN:New( "AS6 #17" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	AS6_18= SPAWN:New( "AS6 #18" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	AS6_19= SPAWN:New( "AS6 #19" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	AS6_20= SPAWN:New( "AS6 #20" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	AS6_21= SPAWN:New( "AS6 #21" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	AS6_22= SPAWN:New( "AS6 #22" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	AS6_23= SPAWN:New( "AS6 #23" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	AS6_24= SPAWN:New( "AS6 #24" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	AS6_25= SPAWN:New( "AS6 #25" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	AS6_26= SPAWN:New( "AS6 #26" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	AS6_27= SPAWN:New( "AS6 #27" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	AS6_28= SPAWN:New( "AS6 #28" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	AS6_29= SPAWN:New( "AS6 #29" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	AS6_30= SPAWN:New( "AS6 #30" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	AS6_31= SPAWN:New( "AS6 #31" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	AS6_32= SPAWN:New( "AS6 #32" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	AS6_33= SPAWN:New( "AS6 #33" ):InitLimit( 1, 0 ):SpawnScheduled(5400, .1 )
	
	if AS6_Na_mapie == true then 
		MESSAGE:New("Poligon AS 6 został zrespawnowany.", 5):ToCoalition( coalition.side.BLUE )
	else
		MESSAGE:New("Poligon AS 6 został uruchomiony.", 5):ToCoalition( coalition.side.BLUE )
		AS6_Na_mapie = true
	end

end


-- Poligony morskie które startują na początku

Poligon_AS_02_Spawner()
Poligon_AS_04_Spawner()
Poligon_AS_05_Spawner()

-- Menu spawn

	Spawner_Main = MENU_COALITION:New( coalition.side.BLUE, "Włączanie poligonów" )

	Spawner_Main_A2G_Pierwsze = MENU_COALITION:New( coalition.side.BLUE, "Lądowe część pierwsza" , Spawner_Main)
	Spawner_Main_A2G_Drugie = MENU_COALITION:New( coalition.side.BLUE, "Lądowe część druga" , Spawner_Main)
	Spawner_Main_AS = MENU_COALITION:New( coalition.side.BLUE, "Morskie" , Spawner_Main)


	Spawner_Main_A2G_02 = MENU_COALITION_COMMAND:New( coalition.side.BLUE, "A2G 02", Spawner_Main_A2G_Pierwsze, Poligon_A2G_02_Spawner)
	Spawner_Main_A2G_03 = MENU_COALITION_COMMAND:New( coalition.side.BLUE, "A2G 03", Spawner_Main_A2G_Pierwsze, Poligon_A2G_03_Spawner)
	Spawner_Main_A2G_04 = MENU_COALITION_COMMAND:New( coalition.side.BLUE, "A2G 04", Spawner_Main_A2G_Pierwsze, Poligon_A2G_04_Spawner)
	Spawner_Main_A2G_05 = MENU_COALITION_COMMAND:New( coalition.side.BLUE, "A2G 05", Spawner_Main_A2G_Pierwsze, Poligon_A2G_05_Spawner)
	Spawner_Main_A2G_06 = MENU_COALITION_COMMAND:New( coalition.side.BLUE, "A2G 06", Spawner_Main_A2G_Pierwsze, Poligon_A2G_06_Spawner)
	Spawner_Main_A2G_07 = MENU_COALITION_COMMAND:New( coalition.side.BLUE, "A2G 07", Spawner_Main_A2G_Pierwsze, Poligon_A2G_07_Spawner)
	Spawner_Main_A2G_08 = MENU_COALITION_COMMAND:New( coalition.side.BLUE, "A2G 08", Spawner_Main_A2G_Pierwsze, Poligon_A2G_08_Spawner)
	Spawner_Main_A2G_09 = MENU_COALITION_COMMAND:New( coalition.side.BLUE, "A2G 09", Spawner_Main_A2G_Pierwsze, Poligon_A2G_09_Spawner)
	Spawner_Main_A2G_10 = MENU_COALITION_COMMAND:New( coalition.side.BLUE, "A2G 10", Spawner_Main_A2G_Drugie, Poligon_A2G_10_Spawner)
	Spawner_Main_A2G_11 = MENU_COALITION_COMMAND:New( coalition.side.BLUE, "A2G 11", Spawner_Main_A2G_Drugie, Poligon_A2G_11_Spawner)
	Spawner_Main_A2G_12 = MENU_COALITION_COMMAND:New( coalition.side.BLUE, "A2G 12", Spawner_Main_A2G_Drugie, Poligon_A2G_12_Spawner)
	Spawner_Main_A2G_13 = MENU_COALITION_COMMAND:New( coalition.side.BLUE, "A2G 13", Spawner_Main_A2G_Drugie, Poligon_A2G_13_Spawner)
	Spawner_Main_A2G_14 = MENU_COALITION_COMMAND:New( coalition.side.BLUE, "A2G 14", Spawner_Main_A2G_Drugie, Poligon_A2G_14_Spawner)

	Spawner_Main_AS_01 = MENU_COALITION_COMMAND:New( coalition.side.BLUE, "AS 01", Spawner_Main_AS, Poligon_AS_01_Spawner)
	Spawner_Main_AS_02 = MENU_COALITION_COMMAND:New( coalition.side.BLUE, "AS 02", Spawner_Main_AS, Poligon_AS_02_Spawner)
	Spawner_Main_AS_03 = MENU_COALITION_COMMAND:New( coalition.side.BLUE, "AS 03", Spawner_Main_AS, Poligon_AS_03_Spawner)
	Spawner_Main_AS_04 = MENU_COALITION_COMMAND:New( coalition.side.BLUE, "AS 04", Spawner_Main_AS, Poligon_AS_04_Spawner)
	Spawner_Main_AS_05 = MENU_COALITION_COMMAND:New( coalition.side.BLUE, "AS 05", Spawner_Main_AS, Poligon_AS_05_Spawner)
	Spawner_Main_AS_06 = MENU_COALITION_COMMAND:New( coalition.side.BLUE, "AS 06", Spawner_Main_AS, Poligon_AS_06_Spawner)
	

test = false

test_dispaczer = false

serwer_lucasa = false

poradniki = false

--funkcje testowe
if test == true then
explorer_file_path_default = "C:\\Users\\Gildias1s2\\Saved Games\\#Misje\\09_Skrypty\\Gildiansky_Range\\dev\\"
else
explorer_file_path_default = "C:\\Users\\Gildias1s2\\Saved Games\\#Misje\\09_Skrypty\\Gildiansky_Range\\"
end

--Wykonuje plik CSAR_Moose.lua
function CSAR_Moose()
dofile("C:\\Users\\Gildias1s2\\Saved Games\\#Misje\\09_Skrypty\\DR\\CSAR_Moose.lua")
end
timer.scheduleFunction(CSAR_Moose, nil, 10)

--Wykonuje plik CTLD_Moose.lua
function CTLD_Moose()
dofile(explorer_file_path_default.."CTLD_Moose.lua")
end
--timer.scheduleFunction(CTLD_Moose, nil, 10)
















	