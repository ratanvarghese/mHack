-- "To the Top"
--MAZE: "soko4-17",' '
-- This level is designed to be the FIRST level in the Sokoban branch
des.level_flags("noteleport", "hardfloor", "premapped", "sokoban", "solidify")
--MESSAGE: "To the Top"
--GEOMETRY: center, center
--12345678901234
des.map([[
---------------
|.............|
|..------------
--.....|.....| 
 |.....|.....| 
 |.....|.....| 
 |--.-------.--
 |....|..|....|
 |....|.......|
 |............|
 |....---------
 ------        
]]);
des.stair("up",13,01)
des.levregion({ region = {08,03,08,03}, type = "branch" })
des.region(selection.area(00,00,14,11), "lit")
des.non_diggable(selection.area(00,00,14,11))
des.non_passwall(selection.area(00,00,14,11))

-- MAGIC_CHEST:(08,05)

des.object("boulder",04,03)
des.object("boulder",04,04)
des.object("boulder",05,04)
des.object("boulder",10,04)
des.object("boulder",12,04)
des.object("boulder",03,05)
des.object("boulder",09,05)
des.object("boulder",11,05)
des.object("boulder",03,08)
des.object("boulder",11,08)
des.object("boulder",03,09)
des.object("boulder",12,09)

des.trap("pit",03,01)
des.trap("pit",04,01)
des.trap("pit",05,01)
des.trap("pit",06,01)
des.trap("pit",07,01)
des.trap("pit",08,01)
des.trap("pit",09,01)
des.trap("pit",10,01)
des.trap("pit",11,01)
des.trap("pit",12,01)

des.object("scroll of earth",07,07)
des.object("scroll of earth",08,07)

des.object('%')
des.object('%')
des.object('%')
des.object('%')
des.object('=')
des.object('/')
