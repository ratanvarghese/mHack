-- Written by Joseph L Traub
-- Heavily modified for NetHack Sokoban Levels patch by Pasi Kallinen
-- Possibly modified for SLASHEM by J Ali Harlow
-- Modified for HackEM by Hackemslashem
-- Converted to Lua and modified for mHack by Ratan Varghese

--LEVEL:"soko3-6"
des.level_flags("noteleport", "mazelevel", "premapped", "sokoban", "solidify")
des.message("The Gauntlet")
des.level_init({ style = "solidfill", fg = " " });
--GEOMETRY: center, center
-- "Joseph L Traub"
des.map([[
----------------    
|...|..|.|.--..|    
|.|.|..........---  
|.|....--FF--....---
|...|..|....|......|
--.-|.-|FFF.|......|
 |.||.|-....--.--.--
 |.FF.FL....LF.FF.| 
 |.||.|--..--|.||.| 
--.--.--|..|-|.||.| 
|......||..|--.--.--
|......-|..|-......|
|.......|..|..---..|
-----..............|
    |.|....|..|...--
    --------------- 
]]);
des.stair("down",08,01)
des.stair("up",08,04)
des.region(selection.area(00,00,19,15), "lit")
des.non_diggable(selection.area(00,00,19,15))
des.non_passwall(selection.area(00,00,19,15))
des.object("boulder",07,02)
des.object("boulder",12,02)
des.object("boulder",14,03)
des.object("boulder",15,04)
des.object("boulder",16,04)
des.object("boulder",02,05)
des.object("boulder",05,05)
des.object("boulder",14,10)
des.object("boulder",17,10)
des.object("boulder",03,11)
des.object("boulder",04,11)
des.object("boulder",02,12)
des.object("boulder",05,12)
des.object("boulder",07,13)
des.object("boulder",11,13)
des.object("boulder",16,13)
des.trap("hole",11,05)
des.trap("hole",09,06)
des.trap("hole",10,06)
des.trap("hole",11,06)
des.trap("hole",09,07)
des.trap("hole",10,07)
des.trap("hole",11,07)
des.trap("hole",09,08)
des.trap("hole",10,08)
des.trap("hole",09,09)
des.trap("hole",10,09)
des.trap("hole",09,10)
des.trap("hole",10,10)
des.trap("hole",09,11)
des.trap("hole",10,11)

des.object('%')
des.object('%')
des.object('%')
des.object('%')
des.object('=')
des.object('/')
