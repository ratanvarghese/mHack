-- Written for NetHack Fourk by tsadok
-- Modified for HackEM by Hackemslashem
-- Converted to Lua and modified for mHack by Ratan Varghese

-- "Slot Machine"
--MAZE:"soko2-12",' '
des.level_flags("noteleport", "premapped", "sokoban", "solidify")
des.message("Slot Machine")
--GEOMETRY: center, center
--12345678901234567890123456789012345678901234567890
des.map([[
 --------------------
 |..|.....|.|.......|
 |..|..|....|.......|
 |..|..|..|.|.......|
 |.....|..|.|.......|
 --.|..|..|.|.......|
  |.|.....|.|.......|
  |.|.......|.......|
  |.......---------.|
  |.......|       |.|
  --...------------+|
   |................|
   ------------------
]]);
des.stair("down",08,08)
des.stair("up",16,04)
des.door("locked",19,10)
des.region(selection.area(00,00,20,12), "lit")
des.non_diggable(selection.area(00,00,20,12))
des.non_passwall(selection.area(00,00,20,12))

des.object("boulder",03,02)
des.object("boulder",03,05)
--
des.object("boulder",06,03)
des.object("boulder",05,05)
des.object("boulder",06,07)
des.object("boulder",07,06)
--
des.object("boulder",09,02)
des.object("boulder",08,04)
des.object("boulder",09,06)
--
des.object("boulder",04,08)
des.object("boulder",04,10)
des.object("boulder",05,09)
des.object("boulder",06,10)
des.object("boulder",08,09)

des.trap("hole",07,11)
des.trap("hole",08,11)
des.trap("hole",09,11)
des.trap("hole",10,11)
des.trap("hole",11,11)
des.trap("hole",12,11)
des.trap("hole",13,11)
des.trap("hole",14,11)
des.trap("hole",15,11)
des.trap("hole",16,11)
des.trap("hole",17,11)
des.trap("hole",18,11)

des.object('%')
des.object('%')
des.object('%')
des.object('%')
des.object('=')
des.object('/')
