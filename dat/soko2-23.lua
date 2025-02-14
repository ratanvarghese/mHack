-- Written for GruntHack by Steve Melenchuk
-- Modified for HackEM by Hackemslashem
-- Converted to Lua and modified for mHack by Ratan Varghese

--LEVEL:"soko2-6"
des.level_flags("noteleport", "premapped", "sokoban", "solidify")
des.message("Diligent Escape Plan")
des.level_init({ style = "solidfill", fg = " " });
--GEOMETRY: center, center
--12345678901234567890123456789012345678901234567890
-- Steve Melenchuk <smelenchuk@gmail.com>
des.map([[
---------                
|.......|                
--.....--                
 --...-------------------
  --.--.................|
  |......--------------+|
  |..--..-----    |.....|
  |.....--...|    |.....|
 --...---....|    |.....|
 |....|.....--    |.....|
 |....-.....|     |.....|
 --.........|     |.....|
  |...-...---     |.....|
  --..|...|       -------
   |..-----              
   ----                  
]]);

des.stair("down",04,05)
des.stair("up",21,09)
des.door("locked",23,05)
des.region(selection.area(00,00,24,15), "lit")
des.non_diggable(selection.area(00,00,24,15))
des.non_passwall(selection.area(00,00,24,15))

des.object("boulder",05,02)
des.object("boulder",04,03)
des.object("boulder",03,06)
des.object("boulder",04,07)
des.object("boulder",05,07)
des.object("boulder",03,08)
des.object("boulder",10,08)
des.object("boulder",03,09)
des.object("boulder",11,09)
des.object("boulder",05,10)
des.object("boulder",08,10)
des.object("boulder",03,11)
des.object("boulder",07,11)
des.object("boulder",09,11)
des.object("boulder",10,11)
des.object("boulder",04,12)
des.object("boulder",08,12)

des.trap("hole",09,04)
des.trap("hole",10,04)
des.trap("hole",11,04)
des.trap("hole",12,04)
des.trap("hole",13,04)
des.trap("hole",14,04)
des.trap("hole",15,04)
des.trap("hole",16,04)
des.trap("hole",17,04)
des.trap("hole",18,04)
des.trap("hole",19,04)
des.trap("hole",20,04)
des.trap("hole",21,04)
des.trap("hole",22,04)

des.object('%')
des.object('%')
des.object('%')
des.object('%')
des.object('=')
des.object('/')
