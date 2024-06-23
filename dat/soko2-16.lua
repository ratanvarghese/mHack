-- "Two-Phase"
--MAZE:"soko3-13",' '
des.level_flags("noteleport", "premapped", "sokoban", "solidify")
--MESSAGE: "Two-Phase"
--GEOMETRY: center, center
--1234567890123456789012345
des.map([[
----------                
|........|                
|........|                
|........|------------    
|........|.....|.....-----
|........|.....+.........|
|..----+-|.....|.........|
|---..|.--.---.----.----.|
|.....|.|....-..| |......|
|..|..|.|.......---......|
--.|....|.....-..........|
 |.|....|.---...---.------
 |.------............|    
 |..............------    
 |..-------------         
 ----                     
]]);
des.stair("down",12,04)
des.stair("up",04,03)
des.door("locked",07,06)
des.door("locked",15,05)
des.region(selection.area(00,00,25,15), "lit")
des.non_diggable(selection.area(00,00,25,15))
des.non_passwall(selection.area(00,00,25,15))

des.object("boulder",10,06)
des.object("boulder",11,05)
des.object("boulder",12,06)
des.object("boulder",13,05)
des.object("boulder",14,06)
--
des.object("boulder",14,09)
des.object("boulder",10,10)
des.object("boulder",10,12)
--
des.object("boulder",19,10)
des.object("boulder",22,08)
--
des.object("boulder",16,05)
des.object("boulder",17,05)
des.object("boulder",18,05)
des.object("boulder",20,05)
des.object("boulder",20,06)
des.object("boulder",23,06)
--
des.object("boulder",06,10)

des.trap("hole",08,13)
des.trap("hole",07,13)
des.trap("hole",06,13)
des.trap("hole",05,13)
des.trap("hole",04,13)
--
des.trap("hole",02,12)
des.trap("hole",02,11)
des.trap("hole",02,10)
des.trap("hole",02,09)
--
des.trap("hole",03,08)
des.trap("hole",04,08)
--
des.trap("hole",07,10)
des.trap("hole",07,09)
des.trap("hole",07,08)

des.object('%')
des.object('%')
des.object('%')
des.object('%')
des.object('=')
des.object('/')

des.monster({id = "large mimic", appear_as = "obj:boulder", x = 4, y = 10})