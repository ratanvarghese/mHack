-- Written for GruntHack by Steve Melenchuk
-- Modified for HackEM by Hackemslashem
-- Converted to Lua and modified for mHack by Ratan Varghese

--MAZE:"soko4-9",' '
des.level_flags("noteleport", "hardfloor", "solidify", "sokoban", "premapped")
des.message("One More Time")
--GEOMETRY: center, center
-- Steve Melenchuk <smelenchuk@gmail.com>
des.map([[
------------- 
|.|.....|..-- 
|.|.....|...| 
|.|-.......-- 
|.||....-...| 
|.|---.--...| 
|.|  |.---.-- 
|.|  |.---.---
|.----.--....|
|............|
|..------....|
----    |...--
        ----- 
]]);
des.levregion({ region = {11,05,11,05}, type = "branch" })
des.stair("up",01,01)
des.region(selection.area(00,00,13,12), "lit")
des.non_diggable(selection.area(00,00,13,12))
des.non_passwall(selection.area(00,00,13,12))

-- MAGIC_CHEST:(9,05)

des.object("boulder",04,02)
des.object("boulder",06,02)
des.object("boulder",07,02)
des.object("boulder",04,03)
des.object("boulder",09,03)
des.object("boulder",06,04)
des.object("boulder",10,05)
des.object("boulder",06,06)
des.object("boulder",08,09)
des.object("boulder",11,09)
des.object("boulder",11,10)

des.trap("pit",05,09)
des.trap("pit",04,09)
des.trap("pit",03,09)
des.trap("pit",01,08)
des.trap("pit",01,07)
des.trap("pit",01,06)
des.trap("pit",01,05)
des.trap("pit",01,04)
des.trap("pit",01,03)
des.trap("pit",01,02)

des.object("scroll of earth",01,10)
des.object("scroll of earth",02,10)

des.object('%')
des.object('%')
des.object('%')
des.object('%')
des.object('=')
des.object('/')

des.monster('m')
