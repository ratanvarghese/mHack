-- Written for NetHack Fourk by tsadok
-- Modified for HackEM by Hackemslashem
-- Converted to Lua and modified for mHack by Ratan Varghese

-- "Column B"
--MAZE: "soko4-15",' '
-- This level is designed to be the FIRST level in the Sokoban branch
des.level_flags("noteleport", "hardfloor", "premapped", "sokoban", "solidify")
des.message("Column B")
--GEOMETRY: center, center
--1234567890123
des.map([[
------ ------ 
|....---....| 
|.....|.....| 
---.......|.| 
  |...--..|.| 
  |---|...|.| 
 --...|...|.| 
 |........|.| 
 |....|...|.--
 |...------..|
 |...|.......|
 -------------
]]);
des.levregion({ region = {04,10,04,10}, type = "branch" })
des.stair("up",06,10)
des.region(selection.area(00,00,13,11), "lit")
des.non_diggable(selection.area(00,00,13,11))
des.non_passwall(selection.area(00,00,13,11))

-- MAGIC_CHEST:(02,10)

des.object("boulder",02,02)
des.object("boulder",04,02)
des.object("boulder",08,02)
des.object("boulder",08,03)
des.object("boulder",08,04)
des.object("boulder",08,05)
des.object("boulder",08,06)
des.object("boulder",04,07)
des.object("boulder",05,07)
des.object("boulder",03,08)
des.object("boulder",04,09)

des.trap("pit",11,03)
des.trap("pit",11,04)
des.trap("pit",11,05)
des.trap("pit",11,06)
des.trap("pit",11,07)
des.trap("pit",11,08)
des.trap("pit",07,10)
des.trap("pit",08,10)
des.trap("pit",09,10)
des.trap("pit",10,10)

des.object("scroll of earth",12,09)
des.object("scroll of earth",12,10)

des.object('%')
des.object('%')
des.object('%')
des.object('%')
des.object('=')
des.object('/')
