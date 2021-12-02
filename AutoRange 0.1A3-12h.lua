--[[
	AutoRange 0.1 by Bartek16194

    Pozwala na ustawienie automatycznych powiadomień o czasie do wyłączenia misji oraz restartuje misję po określonym czasie.
	
	Co potrafi skrypt w wersji 0.1?
	-Wyświetla na żądanie czas pozostały do końca misji z menu pod F10.
	-Wyświetla automatycznie co określoną ilość czasu informację za ile minut restart.
	-Wyświetla automatycznie informację o tym że restart nastąpi za określoną ilość minut.
	-Wyświetla automatycznie informację o tym że restart nastąpi za minutę.
	-Wyświetla automatycznie informację o tym że restart nastąpi za kilka sekund.
	-Wywołuje trigger kończący misję.
	
	Wymagania:
	-Aby zadziałał poprawnie do misji musi zostać dodany trigger: https://i.postimg.cc/137GYVfs/image.png
	-MIST: https://github.com/mrSkortch/MissionScriptingTools
	-MOOSE: https://github.com/FlightControl-Master/MOOSE_INCLUDE/blob/develop/Moose_Include_Static/Moose.lua
	
	Planowane:
	-Wskazanie deklinacji magnetycznej.
	-Wskazanie świtu i zmierzchu.
	-W sumie nie wiem co jeszcze
	
 ]]

-- ************************************************************************
-- *********************  USER CONFIGURATION ******************************
-- ************************************************************************

--[[Tutaj jest ustawienie
-Czas trwania misji 4 godziny.
-Komunikaty o restarcie co 15 minut.
-Informacja o wyłączeniu 5 min przed końcem.
-Skrypt wystartował 5 sekund po starcie misji.
]]

ile_h_trwa_misja = 12 -- czas w godzinach trwania misji. (Może być wpisane 1.5 czyli 90min).
powiadomienia_restart = 30 -- co ile minut ma się pokazywać komunikat ile minut do końca misji.
ile_przed_koncem_1info = 15 -- ile min przed końcem ma się pojawić 1 komunikat że zaraz koniec misji
kiedy_start = 12 -- ile sekund po starcie misji został załadowany skrpyt. Nie może być większa niż 58



-- ************************************************************************
-- *********************  SCRIPT ******************************************
-- ************************************************************************


ile_trwa_misja_sekundy = ile_h_trwa_misja*60*60 --roboczy przelicznik czasu trwania misji z godzin na sekundy
powiadomienia_restart_sekundy = powiadomienia_restart*60 --przelicznik minut co ile ma się pokazywać komunikat o czasie do końca misji na sekundy
ile_przed_koncem_1info_sekundy = ile_przed_koncem_1info*60 --przelicznika ile minut przed końcem misji ma się pokazać komunikat o niebawym końcu misji na sekundy


-- funkcja odpowiedzialna za komuniat tekstowy oraz obliczanie czasu do końca
function Test_01() 
ile_zostalo = UTILS.SecondsToClock((ile_trwa_misja_sekundy)-(timer.getAbsTime() - timer.getTime0()), true) --oblicza ile minut zostało do końca misji na podtawie kilku zmiennych.
JD = MESSAGE:New("Do zakończenia misji pozostało "..ile_zostalo.." \n Przypominamy o możliwości spawnowania poligonów A2G z menu Comms>F10>Włączanie poligonów", 5):ToAll() --Wyświetla komunikat o czasie ze zmiennej ile_zostalo
end


-- wyświetlanie menu funkcjunego pod F10
	Dev_Main = MENU_MISSION:New("Funkcjonalności") --Główny kontener 

	Funkcja_1 = MENU_MISSION_COMMAND:New("Ile czasu do restartu?" , Dev_Main, Test_01) --Podkontener
	


--[[ funkcja odpowiedzialna za kontrolę tego kiedy ma się wyświetlać powtarzalny komunikat tekstowy o restarcie
	Działa on do momentu kiedy ma się wyświetlić komunikat o niedalekim wyłączeniu poligonu z ile_przed_koncem_1info
]]

function powtarzaneinfo()
Test_01()
	if ((timer.getTime() + powiadomienia_restart_sekundy))<(ile_trwa_misja_sekundy-(ile_przed_koncem_1info_sekundy-1)) then --Dopóki nie zostanie przekroczona granica ze stałej powiadomienia_restart będą wyświetlane komunikaty
		if (timer.getTime()<65) then 		--Odejmuje 60 sekund od pierwszego powiadomienia aby wyświetlać komunikaty o dokładnie wstazanych minutach ze stałej powiadomienia_restart
		return (timer.getTime() + (powiadomienia_restart_sekundy-60))
		else								--Zwraca instrukcję o wyświetleniu komunikatu za tyle minut ile jest wpisane w powiadomienia_restart 
		return timer.getTime() + (powiadomienia_restart_sekundy)
		end
	end
end

timer.scheduleFunction(powtarzaneinfo, nil, timer.getTime() + (60-kiedy_start-1))	--Wywołuje pierwszy komunikat dokładnie minutę po starcie poligonu
	


--[[ funkcja odpowiedzialna za przestanie wyświetlenie komunikatu o tym że zostało ile_przed_koncem_1info minut do końca misji np ostatnie 15 minut.
]]

function funkcja_czasowa_15min()
JD = MESSAGE:New("Do końca misji pozostało "..ile_przed_koncem_1info.." minut.", 5):ToAll() --Wiadomość o ile_przed_koncem_1info minutach do końca
end	

timer.scheduleFunction(funkcja_czasowa_15min, nil, ile_trwa_misja_sekundy-ile_przed_koncem_1info_sekundy) --Wywołuje komunikat (ile_przed_koncem_1info_sekundy) przed zakończeniem misji.


--[[ funkcja odpowiedzialna za przestanie wyświetlenie komunikatu o tym że restart za minutę.
]]

function funkcja_czasowa_minuta()
JD = MESSAGE:New("Do końca misji pozostała jedna minuta.", 5):ToAll() --Komunikat
end	

timer.scheduleFunction(funkcja_czasowa_minuta, nil, ile_trwa_misja_sekundy-60) --Wywołuje komunikat o minucie do końca.


--[[ funkcje odpowiedzialne za automatyczne wyłączenie misji po czasie misji określonym w ile_h_trwa_misja. Przed końcem 15 sekund pojawi się komunikat. Aby zadziałała poprawnie do misji musi zostać dodany trigger: https://i.postimg.cc/137GYVfs/image.png
]]

function wylacznik()
trigger.action.setUserFlag('880', 10)
end
timer.scheduleFunction(wylacznik, nil, ile_trwa_misja_sekundy+1)

function wylacznik_info()
JD = MESSAGE:New("Do końca misji pozostało kilka sekund.", 5):ToAll()
end
timer.scheduleFunction(wylacznik_info, nil, ile_trwa_misja_sekundy-15)
