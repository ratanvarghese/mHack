-- Written for NetHack Fourk by tsadok
-- Modified for HackEM by Hackemslashem
-- Converted to Lua and modified for mHack by Ratan Varghese

-- "Four Wings"
--MAZE: "soko3-17",' '
des.level_flags("noteleport", "premapped", "sokoban", "solidify")
des.message("Four Wings")
--GEOMETRY: center, center
--1234567890123456789012345
des.map([[
           ----           
          --..--          
         --....--         
         |......|         
      ---|......----      
      |..|..-----..|      
   ---|.....|......|---   
 ---..|.---.|..---.|..--- 
--....|.| |.--.| |.|....--
|.....|.| |..|.| |.|.....|
|.....|.--|..|.| |.|.....|
--....|..||..|.| |.|....--
 ---.....--..|.--|.+..--- 
   ----..........------   
      |............|      
      ----......----      
         |-.....|         
         --....--         
          ------          
]]);
des.stair("down",12,09)
des.stair("up",22,09)
des.door("locked",19,12)
des.region(selection.area(00,00,25,18), "lit")
des.non_diggable(selection.area(00,00,25,18))
des.non_passwall(selection.area(00,00,25,18))

des.object("boulder",12,03)
des.object("boulder",12,04)
des.object("boulder",09,06)
des.object("boulder",05,08)
des.object("boulder",03,10)
des.object("boulder",04,10)
des.object("boulder",05,10)
des.object("boulder",11,10)
des.object("boulder",03,11)
des.object("boulder",12,11)
des.object("boulder",11,12)
des.object("boulder",15,13)
des.object("boulder",09,14)
des.object("boulder",10,14)
des.object("boulder",11,14)
des.object("boulder",11,16)
des.object("boulder",12,16)

des.trap("hole",15,06)
des.trap("hole",16,06)
des.trap("hole",17,06)
des.trap("hole",14,07)
des.trap("hole",18,07)
des.trap("hole",14,08)
des.trap("hole",18,08)
des.trap("hole",14,09)
des.trap("hole",18,09)
des.trap("hole",14,10)
des.trap("hole",18,10)
des.trap("hole",14,11)
des.trap("hole",18,11)
des.trap("hole",14,12)
des.trap("hole",18,12)

des.object('%')
des.object('%')
des.object('%')
des.object('%')
des.object('=')
des.object('/')
