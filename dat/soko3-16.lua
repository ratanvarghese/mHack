-- "One Weird Trick"
--MAZE: "soko4-16",' '
-- This level is designed to be the FIRST level in the Sokoban branch
des.level_flags("noteleport", "hardfloor", "premapped", "sokoban", "solidify")
des.message("One Weird Trick")
--GEOMETRY: center, center
--123456789012345678
des.map([[
----   ----   ---- 
|..-----..|----..| 
|...--....--.....| 
--............--.| 
 |.....--.....||.| 
 |......|...---|.| 
 ---..|.|.---  |.| 
   |..|...|    |.| 
   |..--.--    |.--
   --....|  ----..|
    |..---  |.....|
    ----    -------
]]);
des.levregion({ region = {01,01,01,01}, type = "branch" })
des.stair("up",13,10)
des.region(selection.area(00,00,18,11), "lit")
des.non_diggable(selection.area(00,00,18,11))
des.non_passwall(selection.area(00,00,18,11))

-- MAGIC_CHEST:(03,02)

des.object("boulder",07,02)
des.object("boulder",03,03)
des.object("boulder",08,03)
des.object("boulder",10,03)
des.object("boulder",03,04)
des.object("boulder",04,04)
des.object("boulder",09,04)
des.object("boulder",11,04)
des.object("boulder",05,05)
des.object("boulder",05,07)
des.object("boulder",05,09)

des.trap("pit",14,02)
des.trap("pit",15,02)
des.trap("pit",16,03)
des.trap("pit",16,04)
des.trap("pit",16,05)
des.trap("pit",16,06)
des.trap("pit",16,07)
des.trap("pit",16,08)
des.trap("pit",14,10)
des.trap("pit",15,10)

des.object("scroll of earth",15,01)
des.object("scroll of earth",16,01)

des.object('%')
des.object('%')
des.object('%')
des.object('%')
des.object('=')
des.object('/')
