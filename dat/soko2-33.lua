-- Written for NetHack Fourk by tsadok
-- Modified for HackEM by Hackemslashem
-- Converted to Lua and modified for mHack by Ratan Varghese

-- "Daedalus Delicatessen"
--MAZE:"soko2-16",' '
des.level_flags("noteleport", "premapped", "sokoban", "solidify")
des.message("Daedalus Delicatessen")
--GEOMETRY: center, center
--12345678901234567890123456789012345
des.map([[
       -------              ------- 
    ---|.....|---           |.....| 
  ---..|.....|..---        --.....--
 --....|.....+....--  -----|.......|
 |.....|.....|.....|  |....|.......|
------+---------+------....|.......|
|........................--|.......|
--.....|......---..----|.| |.......|
 |.........--..--..|   |.| -------+|
 --....|...--.....--   |.|       |.|
  ---..|........---    |.---------.|
    ---|....-----      |...........|
       -------         -------------
]]);
des.stair("down",01,06)
des.stair("up",31,04)
des.door("closed",13,03)
des.door("random",06,05)
des.door("locked",16,05)
des.door("locked",34,08)
des.region(selection.area(00,00,35,12), "lit")
des.non_diggable(selection.area(00,00,35,12))
des.non_passwall(selection.area(00,00,35,12))

des.object("boulder",05,06)
des.object("boulder",09,06)
des.object("boulder",13,06)
des.object("boulder",06,07)
des.object("boulder",10,07)
des.object("boulder",11,07)
des.object("boulder",07,08)
des.object("boulder",04,09)
des.object("boulder",08,09)
des.object("boulder",09,10)
des.object("boulder",13,10)

des.trap("hole",19,06)
des.trap("hole",20,06)
des.trap("hole",21,06)
des.trap("hole",22,06)
des.trap("hole",23,06)
des.trap("hole",24,06)
des.trap("hole",24,07)
des.trap("hole",24,08)
des.trap("hole",24,09)
des.trap("hole",24,10)

-- No free food here, but you can buy some from the deli.
des.object('=')
des.object('/')

-- The delicatessen:
des.region({ region = {08,01, 12,04}, lit=1, type=monkfoodshop(), filled=1 })
