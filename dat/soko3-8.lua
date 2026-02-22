-- Written for GruntHack by Steve Melenchuk
-- Modified for HackEM by Hackemslashem
-- Converted to Lua and modified for mHack by Ratan Varghese

--MAZE:"soko4-8",' '
des.level_flags("noteleport", "hardfloor", "solidify", "sokoban", "premapped")
des.message("Mini Me")
--GEOMETRY: center, center
-- Steve Melenchuk <smelenchuk@gmail.com>
des.map([[
        --- 
----   --.--
|..-----...|
|..........|
|.----.-...|
|.----.|...|
|.||...|...|
|.||...-...|
|.||.......|
|.||..--...|
------------
]]);
des.levregion({ region = {09,01,09,01}, type = "branch" })
des.stair("up",01,09)
des.region(selection.area(00,00,11,10), "lit")
des.non_diggable(selection.area(00,00,11,10))
des.non_passwall(selection.area(00,00,11,10))

-- MAGIC_CHEST:(10,02)

des.object("boulder",08,03)
des.object("boulder",09,03)
des.object("boulder",09,04)
des.object("boulder",09,05)
des.object("boulder",05,06)
des.object("boulder",08,06)
des.object("boulder",06,07)
des.object("boulder",09,07)
des.object("boulder",05,08)
des.object("boulder",08,08)

des.trap("pit",05,03)
des.trap("pit",04,03)
des.trap("pit",03,03)
des.trap("pit",01,04)
des.trap("pit",01,05)
des.trap("pit",01,06)
des.trap("pit",01,07)
des.trap("pit",01,08)

des.object("scroll of earth",01,02)
des.object("scroll of earth",02,02)

des.object('%')
des.object('%')
des.object('%')
des.object('%')
des.object('=')
des.object('/')

des.monster('m')