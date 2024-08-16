-- Written for NetHack Fourk by tsadok
-- Modified for HackEM by Hackemslashem
-- Converted to Lua and modified for mHack by Ratan Varghese

-- "Bring 'em on Down"
--MAZE:"soko2-11",' '
des.level_flags("noteleport", "premapped", "sokoban", "solidify")
des.message("Bring 'em on Down")
--GEOMETRY: center, center
--12345678901234567890123456789012345678901234567890
des.map([[
 ---------------   -----------
 |.............|   |.........|
 |.......|.....|   |.........|
 |....----.....|   |.........|
 |---..........|   |.........|
 |.......|.....|   |.........|
 |.......|.....|   |.........|
 |.....---------   |.........|
 |........|        |.........|
 |........------------------+|
 ----........................|
    --------------------------
]]);
des.stair("down",07,10)
des.stair("up",24,04)
des.door("locked",28,09)
des.region(selection.area(00,00,29,11), "lit")
des.non_diggable(selection.area(00,00,29,11))
des.non_passwall(selection.area(00,00,29,11))

des.object("boulder",03,03)
des.object("boulder",06,02)
--
des.object("boulder",10,02)
des.object("boulder",11,03)
des.object("boulder",13,02)
des.object("boulder",13,03)
--
des.object("boulder",13,05)
des.object("boulder",12,05)
des.object("boulder",10,05)
--
des.object("boulder",07,05)
des.object("boulder",03,06)
des.object("boulder",04,05)
des.object("boulder",05,07)
--
des.object("boulder",03,08)
des.object("boulder",03,09)
des.object("boulder",05,09)
des.object("boulder",06,08)
des.object("boulder",07,09)
des.object("boulder",08,08)

des.trap("hole",10,10)
des.trap("hole",11,10)
des.trap("hole",12,10)
des.trap("hole",13,10)
des.trap("hole",14,10)
des.trap("hole",15,10)
des.trap("hole",16,10)
des.trap("hole",17,10)
des.trap("hole",18,10)
des.trap("hole",19,10)
des.trap("hole",20,10)
des.trap("hole",21,10)
des.trap("hole",22,10)
des.trap("hole",23,10)
des.trap("hole",24,10)
des.trap("hole",25,10)
des.trap("hole",26,10)
des.trap("hole",27,10)

des.object('%')
des.object('%')
des.object('%')
des.object('%')
des.object('=')
des.object('/')
