-- "Boulder Halls of Zim"
--MAZE:"soko3-12",' '
des.level_flags("noteleport", "premapped", "sokoban", "solidify")
--MESSAGE: "Boulder Halls of Zim"
--GEOMETRY: center, center
--12345678901234567890123456
des.map([[
                -----------
   ---------    |.........|
  --.......|    |.........|
  |........--   |.........|
  ---..---..|   |.........|
    |..| |..|   |.........|
 ----.----..|   |.........|
 |.......|..|   |.........|
 |..........|   |.........|
 |..........-------------+|
 --.....--................|
  --.....------------------
   ---.....|               
     -------               
]]);
des.stair("down",07,12)
des.stair("up",21,05)
des.door("locked",25,09)
des.region(selection.area(00,00,26,13), "lit")
des.non_diggable(selection.area(00,00,26,13))
des.non_passwall(selection.area(00,00,26,13))

des.object("boulder",05,03)
des.object("boulder",07,03)
des.object("boulder",09,03)
--
des.object("boulder",03,07)
des.object("boulder",05,07)
des.object("boulder",07,07)
--
des.object("boulder",03,09)
des.object("boulder",05,09)
des.object("boulder",05,11)
des.object("boulder",07,09)

des.object("boulder",09,09)
des.object("boulder",10,08)
des.object("boulder",11,08)
des.object("boulder",11,06)

des.trap("hole",12,10)
des.trap("hole",13,10)
des.trap("hole",14,10)
des.trap("hole",15,10)
des.trap("hole",16,10)
des.trap("hole",17,10)
des.trap("hole",18,10)
des.trap("hole",19,10)
des.trap("hole",20,10)
des.trap("hole",21,10)
des.trap("hole",22,10)
des.trap("hole",23,10)
des.trap("hole",24,10)

des.object('%')
des.object('%')
des.object('%')
des.object('%')
des.object('=')
des.object('/')
