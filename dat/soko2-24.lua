-- Written by Thinking Rabbit
-- Heavily modified for NetHack Sokoban Levels patch by Pasi Kallinen
-- Possibly modified for SLASHEM by J Ali Harlow
-- Possibly modified for SLASHEM Extended by AmyBSOD
-- Possibly modified for SLASHTHEM by Soviet5lo
-- Modified for HackEM by Hackemslashem
-- Converted to Lua and modified for mHack by Ratan Varghese

--MAZE:"soko2-7",' '
des.level_flags("noteleport", "solidify", "sokoban", "premapped")
des.message("Corner Pocket")
--GEOMETRY: center, center
-- "Thinking Rabbit"
des.map([[
       ------------
-------|..........|
|...|..|--------..|
|......|..|    |.--
--.--..|..-----|.| 
 |.....--...|..|.| 
 |.|....|......|.| 
 |...|.....---.|.| 
 |.....--..---.|.| 
 ---...|.......|.| 
   ---.|...--..|.| 
    |......||....| 
    |.....-----..| 
    -------   ---- 
]]);
des.stair("down",8,4)
des.stair("up",8,1)
des.region(selection.area(00,00,18,13), "lit")
des.non_diggable(selection.area(00,00,18,13))
des.non_passwall(selection.area(00,00,18,13))

des.object("boulder",2,3)
des.object("boulder",5,4)
des.object("boulder",4,5)
des.object("boulder",6,5)
des.object("boulder",9,5)
des.object("boulder",6,6)
des.object("boulder",10,6)
des.object("boulder",3,7)
des.object("boulder",6,7)
des.object("boulder",10,8)
des.object("boulder",5,9)
des.object("boulder",10,9)
des.object("boulder",10,10)
des.object("boulder",7,11)
des.object("boulder",8,11)

des.trap("hole",9,1)
des.trap("hole",10,1)
des.trap("hole",11,1)
des.trap("hole",12,1)
des.trap("hole",13,1)
des.trap("hole",14,1)
des.trap("hole",15,1)
des.trap("hole",16,3)
des.trap("hole",16,4)
des.trap("hole",16,5)
des.trap("hole",16,6)
des.trap("hole",16,7)
des.trap("hole",16,8)
des.trap("hole",16,9)
des.trap("hole",16,10)

des.object('%')
des.object('%')
des.object('%')
des.object('%')
des.object('=')
des.object('/')

des.monster('m')