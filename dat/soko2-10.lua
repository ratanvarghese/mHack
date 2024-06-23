--MAZE:"soko3-7",' '
des.level_flags("noteleport", "solidify", "sokoban", "premapped")
--MESSAGE:"Thinking Rabbit"
--GEOMETRY: center, center
-- "Thinking Rabbit"
des.map([[
 --------       
 |......|       
 |......-----   
 |---.......|   
 |..--.|....|   
 |.....|.|.-----
 |.--..........|
--.||..|...|...|
|..-------------
|.........|     
-----------     
]]);
des.stair("down",6,5)
des.stair("up",9,9)
des.region(selection.area(00,00,15,10), "lit")
des.non_diggable(selection.area(00,00,15,10))
des.non_passwall(selection.area(00,00,15,10))
des.object("boulder",4,2)
des.object("boulder",8,3)
des.object("boulder",6,4)
des.object("boulder",9,4)
des.object("boulder",6,6)
des.object("boulder",8,6)
des.object("boulder",10,6)
des.object("boulder",11,6)
des.trap("hole",2,6)
des.trap("hole",2,7)
des.trap("hole",4,9)
des.trap("hole",5,9)
des.trap("hole",6,9)
des.trap("hole",7,9)
des.trap("hole",8,9)
des.object('%')
des.object('%')
des.object('%')
des.object('%')
des.object('=')
des.object('/')

des.monster('m')