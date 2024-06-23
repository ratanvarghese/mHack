--LEVEL:"soko4-6"
des.level_flags("noteleport", "hardfloor", "mazelevel", "premapped", "sokoban", "solidify")
des.level_init({ style = "solidfill", fg = " " });
--MESSAGE:"One Wrong Step"
--GEOMETRY: center, center
-- "Joseph L Traub"
des.map([[
-----------------
|.......|...--..|
|.-----.|.......|
|.---...|.......|
|...........--..|
|......--...||..|
|FFFFF-------|.-|
|...........|-..|
|.....-------...|
|..L............|
|.....-------...|
|.....|     |...|
-------     -----
]]);
des.levregion({ region = {01,05,01,05}, type = "branch" })
des.stair("up",11,07)
des.region(selection.area(00,00,16,12), "lit")
des.non_diggable(selection.area(00,00,16,12))
des.non_passwall(selection.area(00,00,16,12))

-- MAGIC_CHEST:(01,01)

des.object("boulder",12,02)
des.object("boulder",06,03)
des.object("boulder",12,03)
des.object("boulder",06,04)
des.object("boulder",07,04)
des.object("boulder",14,04)
des.object("boulder",14,07)
des.object("boulder",12,09)
des.object("boulder",13,09)
des.object("boulder",14,10)

des.trap("pit",06,07)
des.trap("pit",07,07)
des.trap("pit",08,07)
des.trap("pit",09,07)
des.trap("pit",10,07)
des.trap("pit",06,09)
des.trap("pit",07,09)
des.trap("pit",08,09)
des.trap("pit",09,09)
des.trap("pit",10,09)

des.object("scroll of earth",14,01)
des.object("scroll of earth",15,01)

des.object('%')
des.object('%')
des.object('%')
des.object('%')
des.object('=')
des.object('/')
