-- Written for GruntHack by Steve Melenchuk
-- Modified for HackEM by Hackemslashem
-- Converted to Lua and modified for mHack by Ratan Varghese


--MAZE:"soko3-10",' '
des.level_flags("noteleport", "solidify", "sokoban", "premapped")
des.message("Christmas Chimney")
--GEOMETRY: center, center
-- Steve Melenchuk <smelenchuk@gmail.com>
des.map([[
 ----           
 |..|  ---------
 |..----.|.....|
 |.......|.....|
 |..-....|.....|
 |.....-.|.....|
 |.......|.....|
 |...-...|.....|
--.-------.....|
|..----------+--
|.............| 
--------------- 
]]);
des.stair("down",08,02)
des.stair("up",12,05)
des.region(selection.area(00,00,15,11), "lit")
des.non_diggable(selection.area(00,00,15,11))
des.non_passwall(selection.area(00,00,15,11))

des.door("locked",13,09)

des.object("boulder",03,03)
des.object("boulder",06,03)
des.object("boulder",02,04)
des.object("boulder",05,04)
des.object("boulder",07,04)
des.object("boulder",03,06)
des.object("boulder",04,06)
des.object("boulder",05,06)
des.object("boulder",06,06)
des.object("boulder",07,06)
des.object("boulder",02,07)

des.trap("hole",03,10)
des.trap("hole",04,10)
des.trap("hole",05,10)
des.trap("hole",06,10)
des.trap("hole",07,10)
des.trap("hole",08,10)
des.trap("hole",09,10)
des.trap("hole",10,10)
des.trap("hole",11,10)
des.trap("hole",12,10)

des.object('%')
des.object('%')
des.object('%')
des.object('%')
des.object('=')
des.object('/')

des.monster('m')