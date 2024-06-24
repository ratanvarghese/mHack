--LEVEL:"soko3-5"
des.level_flags("noteleport", "mazelevel", "premapped", "sokoban", "solidify")
des.message("Room to Breathe")
des.level_init({ style = "solidfill", fg = " " });
--GEOMETRY: center, center
-- "Joseph L Traub"
des.map([[
-------       --------
|.....|-------|......|
|.....|....|..--FF-..|
|.....|........|..F.--
|.....|....--..|..F.| 
|.....|-.......+..F.| 
|-.|..||.------|..F.| 
|-.|..--.......|..F.| 
|..|...........-FF-.| 
|...................| 
|.....--.|.....---..| 
---------------- ---- 
]]);
des.stair("down",08,10)
des.stair("up",15,01)
des.region(selection.area(00,00,21,11), "lit")
des.non_diggable(selection.area(00,00,21,11))
des.non_passwall(selection.area(00,00,21,11))
des.door("locked",15,05)
des.object("boulder",02,03)
des.object("boulder",10,03)
des.object("boulder",12,03)
des.object("boulder",03,04)
des.object("boulder",09,04)
des.object("boulder",02,05)
des.object("boulder",03,05)
des.object("boulder",08,05)
des.object("boulder",10,05)
des.object("boulder",04,08)
des.object("boulder",04,09)
des.object("boulder",05,09)
des.trap("hole",16,01)
des.trap("hole",17,01)
des.trap("hole",18,01)
des.trap("hole",19,03)
des.trap("hole",19,04)
des.trap("hole",19,05)
des.trap("hole",19,06)
des.trap("hole",19,07)
des.trap("hole",19,08)
des.trap("hole",15,09)
des.trap("hole",16,09)
des.trap("hole",17,09)

des.object('%')
des.object('%')
des.object('%')
des.object('%')
des.object('=')
des.object('/')
