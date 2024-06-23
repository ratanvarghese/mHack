-- "Through the Cracks"
--MAZE:"soko2-13",' '
des.level_flags("noteleport", "premapped", "sokoban", "solidify")
--MESSAGE: "Through the Cracks"
--GEOMETRY: center, center
--12345678901234567890123456789012345678901234567890
des.map([[
 ---------------------
--....||...........+.|
|.....||...........|.|
|.....||...........|.|
|....--|...........|.|
---.-- |...........|.|
 |..---------------|.|
 |.................|.|
 |........-........|.|
--.---..---..-.....|.|
|..--..---..--.-----.|
|....................|
-------------------..|
                  ----
]]);
des.stair("down",17,09)
des.stair("up",10,03)
des.door("locked",19,01)
des.region(selection.area(00,00,21,13), "lit")
des.non_diggable(selection.area(00,00,21,13))
des.non_passwall(selection.area(00,00,21,13))

des.object("boulder",14,10)
des.object("boulder",15,09)
des.object("boulder",16,08)
des.object("boulder",17,07)
--
des.object("boulder",11,10)
des.object("boulder",13,08)
des.object("boulder",14,07)
--
des.object("boulder",06,10)
des.object("boulder",08,08)
des.object("boulder",09,07)
--
des.object("boulder",02,10)
des.object("boulder",04,08)
des.object("boulder",05,07)
--
des.object("boulder",03,05)
des.object("boulder",02,04)
des.object("boulder",02,03)
des.object("boulder",03,02)
des.object("boulder",04,02)

des.trap("hole",14,11)
des.trap("hole",15,11)
des.trap("hole",16,11)
des.trap("hole",17,11)
des.trap("hole",18,11)
des.trap("hole",19,11)
des.trap("hole",20,10)
des.trap("hole",20,09)
des.trap("hole",20,08)
des.trap("hole",20,07)
des.trap("hole",20,06)
des.trap("hole",20,05)
des.trap("hole",20,04)
des.trap("hole",20,03)
des.trap("hole",20,02)

des.object('%')
des.object('%')
des.object('%')
des.object('%')
des.object('=')
des.object('/')
