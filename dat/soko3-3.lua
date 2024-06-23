--LEVEL:"soko4-3"
des.level_flags("noteleport", "hardfloor", "mazelevel", "premapped", "sokoban", "solidify")
des.level_init({ style = "solidfill", fg = " " });
--MESSAGE:"Mirror Hall"
--GEOMETRY: center, center
-- "J Franklin Mentzer <wryter@aol.com>"
des.map([[
     -------                 
     |..|..|     --------    
------.....-------......---  
|......---...|.|..........|  
|.|.|......|.|.|........|.---
|.|.--..|..|...-F-F-F-F--...|
|.......|...................|
|.|.--..|..|...-F-F-F-F--...|
|.|.|......|.|.|........|.---
|......---...|.|..........|  
------.....-------......---  
     |..|..|     --------    
     -------                 
]]);
des.levregion({ region = {13,06,13,06}, type = "branch" })
des.stair("up",26,06)
des.region(selection.area(00,00,28,12), "lit")
des.non_diggable(selection.area(00,00,28,12))
des.non_passwall(selection.area(00,00,28,12))
-- MAGIC_CHEST:(14,03)

des.object("boulder",08,02)
des.object("boulder",08,04)
des.object("boulder",03,05)
des.object("boulder",06,06)
des.object("boulder",07,06)
des.object("boulder",09,06)
des.object("boulder",10,06)
des.object("boulder",03,07)
des.object("boulder",08,08)
des.object("boulder",08,10)

des.trap("pit",15,06)
des.trap("pit",16,06)
des.trap("pit",17,06)
des.trap("pit",18,06)
des.trap("pit",19,06)
des.trap("pit",20,06)
des.trap("pit",21,06)
des.trap("pit",22,06)
des.trap("pit",23,06)

des.object("scroll of earth",16,03)
des.object("scroll of earth",16,09)

des.object('%')
des.object('%')
des.object('%')
des.object('%')
des.object('=')
des.object('/')
