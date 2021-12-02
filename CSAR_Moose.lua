--https://flightcontrol-master.github.io/MOOSE_DOCS/Documentation/Ops.CSAR.html

BlueCSAR = CSAR:New("blue", "Blue Pilot", "Moose Blue CSAR")
BlueCSAR.allowDownedPilotCAcontrol = true
BlueCSAR.allowFARPRescue = true
BlueCSAR.FARPRescueDistance = 1000
BlueCSAR.autosmoke = true
BlueCSAR.autosmokedistance = 1000
BlueCSAR.coordtype = 1
BlueCSAR.csarOncrash = true
BlueCSAR.enableForAI = false
BlueCSAR.pilotRuntoExtractPoint = true
BlueCSAR.extractDistance = 500
BlueCSAR.immortalcrew = false
BlueCSAR.invisiblecrew = false
BlueCSAR.loadDistance = 75
BlueCSAR.mashprefix = {"FARP"}
BlueCSAR.max_units = 4
BlueCSAR.messageTime = 15
BlueCSAR.radioSound = "beacon.ogg"
BlueCSAR.smokecolor = 4
BlueCSAR.useprefix = false
BlueCSAR.verbose = 0
BlueCSAR.approachdist_far = 5000
BlueCSAR.approachdist_near = 3000
BlueCSAR.pilotmustopendoors = false
BlueCSAR.rescuehoverheight = 20 -- max height for a hovering rescue in meters
BlueCSAR.rescuehoverdistance = 35 -- max distance for a hovering rescue in meters


BlueCSAR:Start()

CSAR_Blue_Niedostepne = MESSAGE:New( "Zadanie niedostępne.", 10)

CSAR_Senaki_timer = 0
function Strefa_CSAR_Senaki()
	local obliczenia = timer.getTime() - CSAR_Senaki_timer
	if (obliczenia>=1500 or CSAR_Senaki_timer == 0) then
		CSAR_Senaki_timer = timer.getTime()
		BlueCSAR:SpawnCSARAtZone("CSAR-Senaki", coalition.side.BLUE, "Senaki promień 15NM", true, false, "Sirtea 1-1", "C-172")
	else
	CSAR_Blue_Niedostepne:ToBlue()
	end
end

CSAR_Batumi_timer = 0
function Strefa_CSAR_Batumi()
	local obliczenia = timer.getTime() - CSAR_Batumi_timer
	if (obliczenia>=1500 or CSAR_Batumi_timer == 0) then
		CSAR_Batumi_timer = timer.getTime()
		BlueCSAR:SpawnCSARAtZone("CSAR-Batumi", coalition.side.BLUE, "Batumi promień 15NM", true, false, "Sirtea 1-1", "C-172")
	else
	CSAR_Blue_Niedostepne:ToBlue()
	end
end

CSAR_FARP_Dallas_timer = 0
function Strefa_CSAR_FARP_Dallas()
	local obliczenia = timer.getTime() - CSAR_FARP_Dallas_timer
	if (obliczenia>=1500 or CSAR_FARP_Dallas_timer == 0) then
		CSAR_FARP_Dallas_timer = timer.getTime()
		BlueCSAR:SpawnCSARAtZone("CSAR-FARP_Dallas", coalition.side.BLUE, "FARP_Dallas promień 15NM", true, false, "Sirtea 1-1", "C-172")
	else
	CSAR_Blue_Niedostepne:ToBlue()
	end
end

CSAR_FARP_Paris_timer = 0
function Strefa_CSAR_FARP_Paris()
	local obliczenia = timer.getTime() - CSAR_FARP_Paris_timer
	if (obliczenia>=1500 or CSAR_FARP_Paris_timer == 0) then
		CSAR_FARP_Paris_timer = timer.getTime()
		BlueCSAR:SpawnCSARAtZone("CSAR-FARP_Paris", coalition.side.BLUE, "FARP_Paris promień 15NM", true, false, "Sirtea 1-1", "C-172")
	else
	CSAR_Blue_Niedostepne:ToBlue()
	end
end

CSAR_Gudauta_timer = 0
function Strefa_CSAR_Gudauta()
	local obliczenia = timer.getTime() - CSAR_Gudauta_timer
	if (obliczenia>=1500 or CSAR_Gudauta_timer == 0) then
		CSAR_Gudauta_timer = timer.getTime()
		BlueCSAR:SpawnCSARAtZone("CSAR-Gudauta", coalition.side.BLUE, "Gudauta promień 15NM", true, false, "Sirtea 1-1", "C-172")
	else
	CSAR_Blue_Niedostepne:ToBlue()
	end
end

CSAR_Kobuleti_timer = 0
function Strefa_CSAR_Kobuleti()
	local obliczenia = timer.getTime() - CSAR_Kobuleti_timer
	if (obliczenia>=1500 or CSAR_Kobuleti_timer == 0) then
		CSAR_Kobuleti_timer = timer.getTime()
		BlueCSAR:SpawnCSARAtZone("CSAR-Kobuleti", coalition.side.BLUE, "Kobuleti promień 15NM", true, false, "Sirtea 1-1", "C-172")
	else
	CSAR_Blue_Niedostepne:ToBlue()
	end
end

CSAR_Kutaisi_timer = 0
function Strefa_CSAR_Kutaisi()
	local obliczenia = timer.getTime() - CSAR_Kutaisi_timer
	if (obliczenia>=1500 or CSAR_Kutaisi_timer == 0) then
		CSAR_Kutaisi_timer = timer.getTime()
		BlueCSAR:SpawnCSARAtZone("CSAR-Kutaisi", coalition.side.BLUE, "Kutaisi promień 15NM", true, false, "Sirtea 1-1", "C-172")
	else
	CSAR_Blue_Niedostepne:ToBlue()
	end
end

CSAR_Sukhumi_timer = 0
function Strefa_CSAR_Sukhumi()
	local obliczenia = timer.getTime() - CSAR_Sukhumi_timer
	if (obliczenia>=1500 or CSAR_Sukhumi_timer == 0) then
		CSAR_Sukhumi_timer = timer.getTime()
		BlueCSAR:SpawnCSARAtZone("CSAR-Sukhumi", coalition.side.BLUE, "Sukhumi promień 15NM", true, false, "Sirtea 1-1", "C-172")
	else
	CSAR_Blue_Niedostepne:ToBlue()
	end
end

Radio_BLUE_CSAR = MENU_COALITION:New(coalition.side.BLUE, "CSAR Misje", Radio_Misje_Blue)
	MENU_COALITION_COMMAND:New(coalition.side.BLUE, "Batumi promień 15NM"	, Radio_BLUE_CSAR, Strefa_CSAR_Batumi)
	MENU_COALITION_COMMAND:New(coalition.side.BLUE, "FARP_Dallas promień 15NM"	, Radio_BLUE_CSAR, Strefa_CSAR_FARP_Dallas)
	MENU_COALITION_COMMAND:New(coalition.side.BLUE, "FARP_Paris promień 15NM"	, Radio_BLUE_CSAR, Strefa_CSAR_FARP_Paris)
	MENU_COALITION_COMMAND:New(coalition.side.BLUE, "Gudauta promień 15NM"	, Radio_BLUE_CSAR, Strefa_CSAR_Gudauta)
	MENU_COALITION_COMMAND:New(coalition.side.BLUE, "Kobuleti promień 15NM"	, Radio_BLUE_CSAR, Strefa_CSAR_Kobuleti)
	MENU_COALITION_COMMAND:New(coalition.side.BLUE, "Kutaisi promień 15NM"	, Radio_BLUE_CSAR, Strefa_CSAR_Kutaisi)
	MENU_COALITION_COMMAND:New(coalition.side.BLUE, "Sukhumi promień 15NM"	, Radio_BLUE_CSAR, Strefa_CSAR_Sukhumi)
	MENU_COALITION_COMMAND:New(coalition.side.BLUE, "Senaki promień 15NM"	, Radio_BLUE_CSAR, Strefa_CSAR_Senaki)