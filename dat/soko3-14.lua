-- "Three-Room Monte"
--MAZE: "soko4-14",' '
des.level_flags("noteleport", "hardfloor", "premapped", "sokoban", "solidify")
des.message("Three-Room Monte")
--GEOMETRY: center, center
--12345678901234
des.map([[
--------   ----
|......-----..|
|.............|
|......------.|
|......|....|.|
|--..---....|.|
|...........|.|
|......|....|.|
----...|....|.|
   ------------
]]);
des.levregion({ region = {03,02,03,02}, type = "branch" })
des.stair("up",13,08)
des.region(selection.area(00,00,14,09), "lit")
des.non_diggable(selection.area(00,00,14,09))
des.non_passwall(selection.area(00,00,14,09))

-- MAGIC_CHEST:(01,01)

des.object("boulder",02,03)
des.object("boulder",05,03)
des.object("boulder",03,04)
des.object("boulder",05,04)
des.object("boulder",03,05)
des.object("boulder",09,05)
des.object("boulder",03,06)
des.object("boulder",05,06)
des.object("boulder",07,06)
des.object("boulder",10,06)
des.object("boulder",08,07)
des.object("boulder",10,07)

des.trap("pit",07,02)
des.trap("pit",08,02)
des.trap("pit",09,02)
des.trap("pit",10,02)
des.trap("pit",11,02)
des.trap("pit",13,03)
des.trap("pit",13,04)
des.trap("pit",13,05)
des.trap("pit",13,06)
des.trap("pit",13,07)

des.object("scroll of earth",12,01)
des.object("scroll of earth",13,01)

des.object('%')
des.object('%')
des.object('%')
des.object('%')
des.object('=')
des.object('/')
