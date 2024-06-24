-- "First Things First"
--MAZE:"soko4-12",' '
des.level_flags("noteleport", "hardfloor", "premapped", "sokoban", "solidify")
des.message("First Things First")
--GEOMETRY: center, center
--12345678901234
des.map([[
---------------
|.....|.....|.|
|.....|.....|.|
|.....|.....|.|
|...........|.|
|--.--|.....|.|
|.....|.....|.|
|.....-------.|
|.............|
-----...----..|
    -----  ----
]]);
des.levregion({ region = {02,02,02,02}, type = "branch" })
des.stair("up",13,01)
des.region(selection.area(00,00,14,10), "lit")
des.non_diggable(selection.area(00,00,14,10))
des.non_passwall(selection.area(00,00,14,10))

-- MAGIC_CHEST:(01,04)

des.object("boulder",02,08)
des.object("boulder",04,08)
des.object("boulder",04,06)
des.object("boulder",02,04)
des.object("boulder",05,04)
des.object("boulder",05,02)
des.object("boulder",07,03)
des.object("boulder",08,02)
des.object("boulder",09,03)
des.object("boulder",10,02)
des.object("boulder",07,05)
des.object("boulder",10,05)

des.trap("pit",09,08)
des.trap("pit",10,08)
des.trap("pit",11,08)
des.trap("pit",12,08)
des.trap("pit",13,07)
des.trap("pit",13,06)
des.trap("pit",13,05)
des.trap("pit",13,04)
des.trap("pit",13,03)
des.trap("pit",13,02)

des.object("scroll of earth",12,09)
des.object("scroll of earth",13,09)

des.object('%')
des.object('%')
des.object('%')
des.object('%')
des.object('=')
des.object('/')
