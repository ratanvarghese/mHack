--MAZE:"soko3-9",' '
des.level_flags("noteleport", "solidify", "sokoban", "premapped")
--MESSAGE:"Escape Goat"
--GEOMETRY: center, center
-- Steve Melenchuk <smelenchuk@gmail.com>
des.map([[
 ---------      
 |...|...|      
--.......|      
|..--....-------
|..--....|.....|
|..|..-..|.....|
|..|.--..|.....|
|........|.....|
----.--..|.....|
   |.--..|.....|
  --.--..|.....|
  |..------+---|
  |.........|   
  -----------   
]]);
des.stair("down",04,06)
des.stair("up",12,07)
des.door("locked",11,11)
des.region(selection.area(00,00,15,13), "lit")
des.non_diggable(selection.area(00,00,15,13))
des.non_passwall(selection.area(00,00,15,13))

des.object("boulder",06,02)
des.object("boulder",07,02)
des.object("boulder",02,03)
des.object("boulder",05,03)
des.object("boulder",06,04)
des.object("boulder",07,04)
des.object("boulder",02,06)
des.object("boulder",07,06)
des.object("boulder",03,07)
des.object("boulder",07,09)

des.trap("hole",04,08)
des.trap("hole",04,09)
des.trap("hole",04,10)
des.trap("hole",05,12)
des.trap("hole",06,12)
des.trap("hole",07,12)
des.trap("hole",08,12)
des.trap("hole",09,12)
des.trap("hole",10,12)

des.object('%')
des.object('%')
des.object('%')
des.object('%')
des.object('=')
des.object('/')

des.monster('m')