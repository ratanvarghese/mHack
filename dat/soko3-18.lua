-- Written for NetHack Fourk by tsadok
-- Modified for HackEM by Hackemslashem
-- Converted to Lua and modified for mHack by Ratan Varghese

-- "A Hug and a Kiss"
--MAZE: "soko4-18",' '
-- This level is designed to be the FIRST level in the Sokoban branch
des.level_flags("noteleport", "hardfloor", "premapped", "sokoban", "solidify")
des.message("A Hug and a Kiss")
--GEOMETRY: center, center
--123456789012
des.map([[
----   ----- 
|..-----...| 
|..........| 
|.|------..| 
|.|........| 
|.|........--
|.|.........|
|.|------...|
---     -----
]]);
des.levregion({ region = {03,04,03,04}, type = "branch" })
des.stair("up",01,07)
des.region(selection.area(00,00,12,08), "lit")
des.non_diggable(selection.area(00,00,12,08))
des.non_passwall(selection.area(00,00,12,08))

-- MAGIC_CHEST:(03,06)

des.object("boulder",09,02)
des.object("boulder",04,04)
des.object("boulder",06,04)
des.object("boulder",09,04)
des.object("boulder",05,05)
des.object("boulder",08,05)
des.object("boulder",10,05)
des.object("boulder",04,06)
des.object("boulder",06,06)
des.object("boulder",09,06)

des.trap("pit",03,02)
des.trap("pit",04,02)
des.trap("pit",05,02)
des.trap("pit",06,02)
des.trap("pit",07,02)
des.trap("pit",01,03)
des.trap("pit",01,04)
des.trap("pit",01,05)
des.trap("pit",01,06)

des.object("scroll of earth",01,01)
des.object("scroll of earth",02,01)

des.object('%')
des.object('%')
des.object('%')
des.object('%')
des.object('=')
des.object('/')
