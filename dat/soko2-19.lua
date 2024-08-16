-- Written for NetHack Fourk by tsadok
-- Modified for HackEM by Hackemslashem
-- Converted to Lua and modified for mHack by Ratan Varghese

-- The following level is adapted from sample sokogen output.
-- "You Only Need Six"
--MAZE: "soko3-16",' '
des.level_flags("noteleport", "premapped", "sokoban", "solidify")
des.message("You Only Need Six")
--GEOMETRY: center, center
--         1         2
--123456789012345678901234
des.map([[
  -----         ---------
  |...|         |.+.....|
  |.|.|-----    |.|.....|
---...--...---  |.|.....|
|........|...----.|.....|
|.....|...........|.....|
|....||..|...---..|------
-------------- ----      
]]);
des.stair("down",13,05)
des.stair("up",21,03)
des.door("locked",18,01)
des.region(selection.area(00,00,24,07), "lit")
des.non_diggable(selection.area(00,00,24,07))
des.non_passwall(selection.area(00,00,24,07))

des.object("boulder",05,02)
des.object("boulder",04,03)
des.object("boulder",04,04)
des.object("boulder",07,05)
des.object("boulder",09,05)
des.object("boulder",10,05)
des.object("boulder",11,05)

des.trap("hole",17,02)
des.trap("hole",17,03)
des.trap("hole",17,04)
des.trap("hole",14,05)
des.trap("hole",15,05)
des.trap("hole",16,05)

des.object('%')
des.object('%')
des.object('%')
des.object('%')
des.object('=')
des.object('/')
