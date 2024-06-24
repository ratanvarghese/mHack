-- "Sneak Preview"
--MAZE: "soko2-15",' '
des.level_flags("noteleport", "premapped", "sokoban", "solidify")
des.message("Sneak Preview")
--GEOMETRY: center, center
--12345678901234567890123456789012345678901234567890
des.map([[
           ----
 -----------..|
 |............|
 |.--.-------.|
--......|...|.|
|.......+...|.|
|.......|...|.|
|-+--.--|FFF-+|
|...|...|.....|
|...|.|.|K....|
|...|.|.|.....|
----|...-----F|
    |......--.|
    |.--....|.|
    |.....-.|.|
    |.-.-...|.|
    |.......-S|
    -----.....|
        --....|
         ------
]]);
des.stair("up",11,09)
des.stair("down",11,18)
des.door("closed",08,05)
des.door("closed",02,07)
des.door("locked",13,07)
des.door("locked",13,16)
des.region(selection.area(00,00,14,19), "lit")
des.non_diggable(selection.area(00,00,14,19))
des.non_passwall(selection.area(00,00,14,19))

des.object("boulder",04,02)
des.object("boulder",10,05)
des.object("boulder",02,09)
des.object("boulder",05,10)
des.object("boulder",06,11)
des.object("boulder",07,12)
des.object("boulder",08,13)
des.object("boulder",09,14)
des.object("boulder",10,15)
des.object("boulder",08,16)
des.object("boulder",11,16)
des.object("boulder",12,17)

des.trap("hole",06,02)
des.trap("hole",07,02)
des.trap("hole",08,02)
des.trap("hole",09,02)
des.trap("hole",10,02)
des.trap("hole",11,02)
des.trap("hole",13,03)
des.trap("hole",13,04)
des.trap("hole",13,05)
des.trap("hole",13,06)

des.object('%')
des.object('%')
des.object('%')
des.object('%')
des.object('=')
des.object('/')
