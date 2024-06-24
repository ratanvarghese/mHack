-- "Picking out the Seeds"
--MAZE: "soko4-13",' '
des.level_flags("noteleport", "hardfloor", "premapped", "sokoban", "solidify")
des.message("Picking out the Seeds")
--GEOMETRY: center, center
--12345678901234
des.map([[
   ---------   
 ---..|....--- 
 |....|......| 
--..........---
|.....|.....|.|
|.........---.|
|------...|...|
|.......---...|
--...........--
 |......---..| 
 ---......|--- 
   ---------   
]]);
des.levregion({ region = {12,02,12,02}, type = "branch" })
des.stair("up",13,04)
des.region(selection.area(00,00,14,11), "lit")
des.non_diggable(selection.area(00,00,14,11))
des.non_passwall(selection.area(00,00,14,11))

-- MAGIC_CHEST:(11,04)

des.object("boulder",03,02)
des.object("boulder",09,02)
des.object("boulder",11,02)
des.object("boulder",05,03)
des.object("boulder",06,03)
des.object("boulder",10,03)
des.object("boulder",09,04)
des.object("boulder",02,05)
des.object("boulder",04,05)
des.object("boulder",09,05)
des.object("boulder",04,07)
des.object("boulder",06,07)
des.object("boulder",03,09)
des.object("boulder",07,09)

des.trap("pit",13,05)
des.trap("pit",07,06)
des.trap("pit",12,06)
des.trap("pit",13,06)
des.trap("pit",07,07)
des.trap("pit",12,07)
des.trap("pit",07,08)
des.trap("pit",08,08)
des.trap("pit",09,08)
des.trap("pit",10,08)
des.trap("pit",11,08)
des.trap("pit",12,08)

des.object("scroll of earth",11,09)
des.object("scroll of earth",12,09)

des.object('%')
des.object('%')
des.object('%')
des.object('%')
des.object('=')
des.object('/')
