--MAZE:"soko2-10",' '
des.level_flags("noteleport", "solidify", "sokoban", "premapped")
des.message("Shave and a Haircut")
--GEOMETRY: center, center
-- "J Franklin Mentzer <wryter@aol.com>"
des.map([[
-----------------------------
|.............|.............|
|....|...|....F.............|
|...|..|..|...F.............|
|..|..........F.............|
|.......|..|..F.............|
|.|....|....|.F.............|
|..|..|.......F.............|
|..........|..F.............|
|...|..|..|...F.............|
|....|...|....F.............|
|.............|.............|
|-.-FFFFFFFFF---FFFFFFFFF-+-|
|...........................|
|...........................|
-----------------------------
]]);
des.stair("down",13,11)
des.stair("up",15,11)
des.region(selection.area(00,00,28,15), "lit")
des.non_diggable(selection.area(00,00,28,15))
des.non_passwall(selection.area(00,00,28,15))

des.door("locked",26,12)

des.object("boulder",2,2)
des.object("boulder",7,2)
des.object("boulder",2,3)
des.object("boulder",6,3)
des.object("boulder",8,3)
des.object("boulder",2,4)
des.object("boulder",5,4)
des.object("boulder",9,4)
des.object("boulder",4,5)
des.object("boulder",10,5)
des.object("boulder",1,6)
des.object("boulder",4,6)
des.object("boulder",10,6)
des.object("boulder",13,6)
des.object("boulder",4,7)
des.object("boulder",10,7)
des.object("boulder",5,8)
des.object("boulder",9,8)
des.object("boulder",12,8)
des.object("boulder",6,9)
des.object("boulder",8,9)
des.object("boulder",12,9)
des.object("boulder",7,10)
des.object("boulder",12,10)

des.trap("hole",3,13)
des.trap("hole",4,13)
des.trap("hole",5,13)
des.trap("hole",6,13)
des.trap("hole",7,13)
des.trap("hole",8,13)
des.trap("hole",9,13)
des.trap("hole",10,13)
des.trap("hole",11,13)
des.trap("hole",12,13)
des.trap("hole",16,13)
des.trap("hole",17,13)
des.trap("hole",18,13)
des.trap("hole",19,13)
des.trap("hole",20,13)
des.trap("hole",21,13)
des.trap("hole",22,13)
des.trap("hole",23,13)
des.trap("hole",24,13)
des.trap("hole",25,13)
des.trap("hole",3,14)
des.trap("hole",4,14)
des.trap("hole",5,14)
des.trap("hole",6,14)
des.trap("hole",7,14)
des.trap("hole",8,14)
des.trap("hole",9,14)
des.trap("hole",10,14)
des.trap("hole",18,14)
des.trap("hole",19,14)
des.trap("hole",20,14)
des.trap("hole",21,14)
des.trap("hole",22,14)
des.trap("hole",23,14)
des.trap("hole",24,14)
des.trap("hole",25,14)

des.object('%')
des.object('%')
des.object('%')
des.object('%')
des.object('=')
des.object('/')

des.monster('m')