-- Written for NetHack Fourk by tsadok
-- Modified for HackEM by Hackemslashem
-- Converted to Lua and modified for mHack by Ratan Varghese

-- "Count Carefully"
--MAZE: "soko3-15",' '
des.level_flags("noteleport", "premapped", "sokoban", "solidify")
des.message("Count Carefully")
--GEOMETRY: center, center
--12345678901234567
des.map([[
    --------------
  ---.....---....|
 --...--....|....|
 |...--|.......---
--...--|.|-...--  
|..-..-|.|-----   
|.|....|.|------  
|.--.....|.....|  
|.....---|.....|  
-----.---|.....|  
 |.......+.....|  
 |...----|.....|  
 |...|   -------  
 -----            
]]);
des.stair("down",09,03)
des.stair("up",12,09)
des.door("locked",09,10)
des.region(selection.area(00,00,17,13), "lit")
des.non_diggable(selection.area(00,00,17,13))
des.non_passwall(selection.area(00,00,17,13))

des.object("boulder",09,02)
des.object("boulder",15,02)
des.object("boulder",03,03)
des.object("boulder",04,03)
des.object("boulder",10,03)
des.object("boulder",13,03)
des.object("boulder",04,05)
des.object("boulder",04,06)
des.object("boulder",07,07)
des.object("boulder",02,08)
des.object("boulder",03,11)
des.object("boulder",04,11)

des.trap("hole",04,04)
des.trap("hole",08,04)
des.trap("hole",02,05)
des.trap("hole",08,05)
des.trap("hole",03,06)
des.trap("hole",08,06)
des.trap("hole",04,07)
des.trap("hole",08,07)
des.trap("hole",05,08)
des.trap("hole",05,09)
des.trap("hole",05,10)
des.trap("hole",06,10)
des.trap("hole",07,10)

des.object('%')
des.object('%')
des.object('%')
des.object('%')
des.object('=')
des.object('/')
