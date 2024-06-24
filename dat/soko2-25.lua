--MAZE:"soko2-8",' '
des.level_flags("noteleport", "solidify", "sokoban", "premapped")
des.message("No Way Out")
--GEOMETRY: center, center
-- "Joseph L Traub"
des.map([[
         ----------
    -----|........|
 ----...-|.-----..|
 |.......---...|.--
 |.............|.| 
 |.|.--------.-|.| 
 |.|.....|.....|.| 
 |.|.....|.|...|.| 
--.|...|.|.----|.| 
|..--....|.....|.| 
|......|.|.......| 
-----.--.........| 
   |.............| 
   |...---.......| 
   ----- --------- 
]]);
des.stair("down",4,4)
des.stair("up",10,2)
des.region(selection.area(00,00,18,14), "lit")
des.non_diggable(selection.area(00,00,18,14))
des.non_passwall(selection.area(00,00,18,14))

des.object("boulder",4,3)
des.object("boulder",3,4)
des.object("boulder",5,4)
des.object("boulder",7,4)
des.object("boulder",12,4)
des.object("boulder",4,5)
des.object("boulder",6,6)
des.object("boulder",5,7)
des.object("boulder",7,7)
des.object("boulder",6,8)
des.object("boulder",5,10)
des.object("boulder",5,12)

des.trap("hole",11,1)
des.trap("hole",12,1)
des.trap("hole",13,1)
des.trap("hole",14,1)
des.trap("hole",15,1)
des.trap("hole",16,3)
des.trap("hole",16,4)
des.trap("hole",16,5)
des.trap("hole",16,6)
des.trap("hole",16,7)
des.trap("hole",16,8)
des.trap("hole",16,9)

des.object('%')
des.object('%')
des.object('%')
des.object('%')
des.object('=')
des.object('/')

des.monster('m')