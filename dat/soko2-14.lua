-- "Fly on the Wall"
--MAZE:"soko3-11",' '
des.level_flags("noteleport", "premapped", "sokoban", "solidify")
--MESSAGE: "Fly on the Wall"
--GEOMETRY: center, center
--12345678901234567890123456
des.map([[
                      ---- 
    -------------------..| 
 ----....................--
 |......--...----------...|
 |...--.....--        |...|
 |...--.....|         --|.|
 |..........--  --------|+|
 |...........|  |.........|
 --.----------  |.........|
  |..|          |.........|
 --..-------    |.........|
 |.........|    |.........|
 |.........|    -----------
 -----------               
]]);
des.stair("down",12,07)
des.stair("up",21,09)
des.door("locked",25,06)
des.region(selection.area(00,00,25,13), "lit")
des.non_diggable(selection.area(00,00,26,13))
des.non_passwall(selection.area(00,00,26,13))

des.object("boulder",03,11)
des.object("boulder",05,11)
des.object("boulder",07,11)
--
des.object("boulder",03,08)
--
des.object("boulder",03,06)
des.object("boulder",02,05)
des.object("boulder",03,04)
des.object("boulder",04,05)
des.object("boulder",04,06)
--
des.object("boulder",08,07)
des.object("boulder",07,06)
des.object("boulder",07,05)
des.object("boulder",08,05)
des.object("boulder",09,04)
des.object("boulder",10,05)
--
des.object("boulder",10,03)
des.object("boulder",11,03)

des.trap("hole",13,02)
des.trap("hole",14,02)
des.trap("hole",15,02)
des.trap("hole",16,02)
des.trap("hole",17,02)
des.trap("hole",18,02)
des.trap("hole",19,02)
des.trap("hole",20,02)
des.trap("hole",21,02)
des.trap("hole",22,02)
des.trap("hole",23,02)
des.trap("hole",24,02)
des.trap("hole",24,03)
des.trap("hole",25,04)
des.trap("hole",25,05)

des.object('%')
des.object('%')
des.object('%')
des.object('%')
des.object('=')
des.object('/')
