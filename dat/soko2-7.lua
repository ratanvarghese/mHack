-- Written by Thinking Rabbit
-- Heavily modified for NetHack Sokoban Levels patch by Pasi Kallinen
-- Possibly modified for SLASHEM by J Ali Harlow
-- Modified for HackEM by Hackemslashem
-- Converted to Lua and modified for mHack by Ratan Varghese

--LEVEL:"soko3-4"
des.level_flags("noteleport", "mazelevel", "premapped", "sokoban", "solidify")
des.message("Roundabout")
des.level_init({ style = "solidfill", fg = " " });
--GEOMETRY: center, center
-- "Thinking Rabbit" 
des.map([[
          ----      
       ---|..----   
       |..|.....|---
 ----  |.....|..|..|
 |..----.|...|.....|
 |...........|--...|
 |.--F--...|.|....--
 |.|...|-.-|......| 
 |.F.L.+...|......| 
--.|...|........--- 
|..--F-----.|.---   
|.........|...|     
---------------     
]]);
des.stair("down",12,09)
des.stair("up",09,11)
des.region(selection.area(00,00,19,12), "lit")
des.non_diggable(selection.area(00,00,19,12))
des.non_passwall(selection.area(00,00,19,12))
des.door("locked",07,08)
des.object("boulder",14,02)
des.object("boulder",12,03)
des.object("boulder",14,03)
des.object("boulder",17,04)
des.object("boulder",16,05)
des.object("boulder",12,06)
des.object("boulder",16,06)
des.object("boulder",09,07)
des.object("boulder",13,07)
des.object("boulder",14,07)
des.object("boulder",16,08)
des.object("boulder",09,09)
des.object("boulder",13,09)
des.object("boulder",11,10)
des.trap("hole",05,05)
des.trap("hole",06,05)
des.trap("hole",07,05)
des.trap("hole",02,06)
des.trap("hole",02,07)
des.trap("hole",02,08)
des.trap("hole",02,09)
des.trap("hole",03,11)
des.trap("hole",04,11)
des.trap("hole",05,11)
des.trap("hole",06,11)
des.trap("hole",07,11)
des.trap("hole",08,11)

des.object('%')
des.object('%')
des.object('%')
des.object('%')
des.object('=')
des.object('/')
