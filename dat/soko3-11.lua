-- "Easy Peasey"
--MAZE:"soko4-11",' '
des.level_flags("noteleport", "hardfloor", "premapped", "sokoban", "solidify")
--MESSAGE: "Easy Peasey"
--GEOMETRY: center, center
--123456789012345
des.map([[
  ------   ---- 
  |....-----..| 
  |...........| 
  |....------.| 
  |.........|.| 
 --.........|.| 
 |..........|.| 
 |....|.------- 
 ------.|...|   
  |.........|   
  --....|...|   
   ---..|...|   
     --------   
]]);
des.levregion({ region = {03,07,03,07}, type = "branch" })
des.stair("up",13,06)
des.region(selection.area(00,00,14,12), "lit")
des.non_diggable(selection.area(00,00,14,12))
des.non_passwall(selection.area(00,00,14,12))

-- MAGIC_CHEST:(05,07)

des.object("boulder",05,10)
des.object("boulder",10,10)
des.object("boulder",05,06)
des.object("boulder",03,05)
des.object("boulder",04,04)
des.object("boulder",05,03)
des.object("boulder",06,02)
des.object("boulder",07,04)
des.object("boulder",08,05)
des.object("boulder",10,04)
des.object("boulder",10,06)

des.trap("pit",07,02)
des.trap("pit",08,02)
des.trap("pit",09,02)
des.trap("pit",10,02)
des.trap("pit",11,02)
des.trap("pit",12,02)
des.trap("pit",13,03)
des.trap("pit",13,04)
des.trap("pit",13,05)

des.object("scroll of earth",12,01)
des.object("scroll of earth",13,01)

des.object('%')
des.object('%')
des.object('%')
des.object('%')
des.object('=')
des.object('/')
