--MAZE:"soko3-8",' '
des.level_flags("noteleport", "solidify", "sokoban", "premapped")
des.message("A Secret to Everybody")
--GEOMETRY: center, center
-- "Joseph L Traub" 
des.map([[
            ---------
------------|.....+.|
|...........|.....|.|
|.---.......|.....|.|
|...|.......|.....|.|
|...|---.---|.....|.|
|...--......|.....|.|
|...........-------.|
---.--...|..........|
  |.--...|--------..|
  |......|       ----
  ---.----           
    ---              
]]);
des.stair("down",5,11)
des.stair("up",15,5)
des.region(selection.area(00,00,20,12), "lit")
des.non_diggable(selection.area(00,00,20,12))
des.non_passwall(selection.area(00,00,20,12))
des.door("locked",18,1)

des.object("boulder",6,3)
des.object("boulder",7,3)
des.object("boulder",6,4)
des.object("boulder",9,4)
des.object("boulder",3,5)
des.object("boulder",8,5)
des.object("boulder",2,6)
des.object("boulder",3,7)
des.object("boulder",4,7)
des.object("boulder",6,7)
des.object("boulder",7,8)
des.object("boulder",8,8)

des.trap("hole",19,2)
des.trap("hole",19,3)
des.trap("hole",19,4)
des.trap("hole",19,5)
des.trap("hole",19,6)
des.trap("hole",19,7)
des.trap("hole",12,8)
des.trap("hole",13,8)
des.trap("hole",14,8)
des.trap("hole",15,8)
des.trap("hole",16,8)
des.trap("hole",17,8)

des.object('%')
des.object('%')
des.object('%')
des.object('%')
des.object('=')
des.object('/')

des.monster('m')