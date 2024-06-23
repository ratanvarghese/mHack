--LEVEL:"soko3-3"
des.level_flags("noteleport", "mazelevel", "premapped", "sokoban", "solidify")
--MESSAGE:"Old Man of the Mountain"
des.level_init({ style = "solidfill", fg = " " });
--GEOMETRY: center, center
-- "Thinking Rabbit" 
des.map([[
----------------- 
|........F......| 
|..--....F......| 
--.|.....F......| 
 |.---------.--.| 
 |...........||.| 
 |..------...--.--
 ----    |.......|
       ---.----.--
       |........| 
       |....----- 
       --...|     
        -----     
]]);
des.stair("down",16,07)
des.stair("up",04,03)
des.region(selection.area(00,00,17,12), "lit")
des.non_diggable(selection.area(00,00,17,12))
des.non_passwall(selection.area(00,00,17,12))
des.object("boulder",12,02)
des.object("boulder",14,02)
des.object("boulder",11,03)
des.object("boulder",13,03)
des.object("boulder",11,06)
des.object("boulder",12,06)
des.object("boulder",11,07)
des.object("boulder",09,09)
des.object("boulder",11,09)
des.object("boulder",10,10)
des.trap("hole",03,01)
des.trap("hole",04,01)
des.trap("hole",02,03)
des.trap("hole",02,04)
des.trap("hole",04,05)
des.trap("hole",05,05)
des.trap("hole",06,05)
des.trap("hole",07,05)
des.trap("hole",08,05)
des.trap("hole",09,05)

des.object('%')
des.object('%')
des.object('%')
des.object('%')
des.object('=')
des.object('/')
