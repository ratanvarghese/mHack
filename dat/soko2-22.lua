--LEVEL:"soko2-5"
des.level_flags("noteleport", "premapped", "sokoban", "solidify")
--MESSAGE:"Snaggletooth"
des.level_init({ style = "solidfill", fg = " " });
--GEOMETRY: center, center
-- Steve Melenchuk <smelenchuk@gmail.com>
des.map([[
  --------------------
  |..................|
  |.....------------.|
  --.----..--------|.|
----.--...........||.|
----....-.....-...||.|
 |.....-..-...-----|.|
 |.-......-.--------+|
 |..-.--.....| |.....|
 --......--.-- |.....|
  --.........| |.....|
   ---..---..- |.....|
     ---- |..| |.....|
          ---- |.....|
               |.....|
               -------
]]);
des.stair("down",07,11)
des.stair("up",18,11)
des.door("locked",20,07)
des.region(selection.area(00,00,21,15), "lit")
des.non_diggable(selection.area(00,00,21,15))
des.non_passwall(selection.area(00,00,21,15))

des.object("boulder",08,04)
des.object("boulder",11,05)
des.object("boulder",12,05)
des.object("boulder",05,06)
des.object("boulder",12,06)
des.object("boulder",05,07)
des.object("boulder",07,07)
des.object("boulder",08,07)
des.object("boulder",05,08)
des.object("boulder",05,09)
des.object("boulder",07,09)
des.object("boulder",08,09)
des.object("boulder",10,10)
des.object("boulder",11,11)

des.trap("hole",08,01)
des.trap("hole",09,01)
des.trap("hole",10,01)
des.trap("hole",11,01)
des.trap("hole",12,01)
des.trap("hole",13,01)
des.trap("hole",14,01)
des.trap("hole",15,01)
des.trap("hole",16,01)
des.trap("hole",17,01)
des.trap("hole",18,01)
des.trap("hole",19,01)

des.object('%')
des.object('%')
des.object('%')
des.object('%')
des.object('=')
des.object('/')

