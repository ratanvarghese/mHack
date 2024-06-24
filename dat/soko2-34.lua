-- "Stacked Dozen"
-- Map created by karadoc
--MAZE: "soko2-17",' '
des.level_flags("noteleport", "premapped", "sokoban", "solidify")
des.message("Stacked Dozen")
--GEOMETRY: center, center
--123456789012345678901234
des.map([[
---------         ------ 
|.......|     ----|....--
|.......|    --..--.....|
|.......|  ---......-.|.|
|.......|  |..........|.|
|.......|  |.....-......|
|+------------.....--...|
|...............|.......|
-------------------------
]]);
des.stair("up",04,03)
des.stair("down",17,07)
des.door("locked",01,06)
des.region(selection.area(00,00,24,08), "lit")
des.non_diggable(selection.area(00,00,24,08))
des.non_passwall(selection.area(00,00,24,08))

-- Spoiler: positions to aim for are as follows:
-- (19,02),(21,02),(16,03),(17,03),(13,04),(17,04),(20,04),
-- (21,04),(16,05),(22,05),(21,06), and the last stands at (14,05).
des.object("boulder",14,05)
des.object("boulder",14,05)
des.object("boulder",14,05)
des.object("boulder",14,05)
des.object("boulder",14,05)
des.object("boulder",14,05)
des.object("boulder",14,05)
des.object("boulder",14,05)
des.object("boulder",14,05)
des.object("boulder",14,05)
des.object("boulder",14,05)
des.object("boulder",14,05)
des.engraving({ coord = {17, 07}, type="burn", text = "How did they all end up on top of each other?" })

des.trap("hole",02,07)
des.trap("hole",03,07)
des.trap("hole",04,07)
des.trap("hole",05,07)
des.trap("hole",06,07)
des.trap("hole",07,07)
des.trap("hole",08,07)
des.trap("hole",09,07)
des.trap("hole",10,07)
des.trap("hole",11,07)
des.trap("hole",12,07)

des.object('%')
des.object('%')
des.object('%')
des.object('%')
des.object('%')
des.object('=')
des.object('/')
