-- "Boomerang Boulders"
--MAZE:"soko4-10",' '
des.level_flags("noteleport", "hardfloor", "premapped", "sokoban", "solidify")
des.message("Boomerang Boulders")
--GEOMETRY: center, center
--1234567890123456
des.map([[
         ----    
 ---------..---  
 |............---
 |.......|......|
---------|......|
|........|......|
|..------|-.-----
--.......|.....| 
 |..|..........| 
 ---|....|.....| 
    ------------ 
]]);
des.levregion({ region = {07,08,07,08}, type = "branch" })
des.stair("up",08,05)
des.region(selection.area(00,00,16,10), "lit")
des.non_diggable(selection.area(00,00,16,10))
des.non_passwall(selection.area(00,00,16,10))

-- MAGIC_CHEST:(05,09)

des.object("boulder",03,02)
des.object("boulder",05,02)
des.object("boulder",10,02)
des.object("boulder",10,03)
des.object("boulder",13,03)
des.object("boulder",14,04)
des.object("boulder",13,05)
des.object("boulder",11,07)
des.object("boulder",12,08)
des.object("boulder",13,08)
des.object("boulder",06,07)
des.object("boulder",05,08)

des.trap("pit",07,05)
des.trap("pit",06,05)
des.trap("pit",05,05)
des.trap("pit",04,05)
des.trap("pit",03,05)
des.trap("pit",02,05)
des.trap("pit",02,06)
des.trap("pit",02,07)
des.trap("pit",03,07)
des.trap("pit",04,07)

des.object("scroll of earth",02,08)
des.object("scroll of earth",03,08)

des.object('%')
des.object('%')
des.object('%')
des.object('%')
des.object('=')
des.object('/')
