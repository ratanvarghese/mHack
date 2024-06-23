--MAZE:"soko2-9",' '
des.level_flags("noteleport", "solidify", "sokoban", "premapped")
--MESSAGE:"Reading Rooms"
--GEOMETRY: center, center
-- "Thinking Rabbit"
des.map([[
        ---------    
        |...|...---- 
        |...+......| 
        |...|.|..|.| 
  -----------....|.| 
  |................| 
  |.|.|..--.|.|..|.| 
  |...|.....|....|.| 
 --.|...-------+-|.| 
--......|....|...|.| 
|....|..F....F...|.| 
|......-|....|...|.--
|..-----|....|----..|
|..|....+....+......|
---------------------
]]);
des.stair("down",1,13)
des.stair("up",4,13)
des.region(selection.area(00,00,20,14), "lit")
des.non_diggable(selection.area(00,00,20,14))
des.non_passwall(selection.area(00,00,20,14))

des.door("locked",12,2)
des.door("locked",15,8)
des.door("locked",8,13)
des.door("locked",13,13)

des.object("boulder",10,2)
des.object("boulder",13,3)
des.object("boulder",18,4)
des.object("boulder",9,5)
des.object("boulder",8,6)
des.object("boulder",7,7)
des.object("boulder",3,8)
des.object("boulder",6,8)
des.object("boulder",5,9)
des.object("boulder",4,10)
des.object("boulder",15,10)
des.object("boulder",3,11)
des.object("boulder",2,12)

des.trap("hole",18,6)
des.trap("hole",18,7)
des.trap("hole",18,8)
des.trap("hole",18,9)
des.trap("hole",18,10)
des.trap("hole",18,11)
des.trap("hole",5,13)
des.trap("hole",6,13)
des.trap("hole",7,13)
des.trap("hole",14,13)
des.trap("hole",15,13)
des.trap("hole",16,13)
des.trap("hole",17,13)

des.object('%')
des.object('%')
des.object('%')
des.object('%')
des.object('=')
des.object('/')

des.monster('m')