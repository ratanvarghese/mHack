-- Written by Joseph L Traub
-- Heavily modified for NetHack Sokoban Levels patch by Pasi Kallinen
-- Possibly modified for SLASHEM by J Ali Harlow
-- Possibly modified for SLASHEM Extended by AmyBSOD
-- Possibly modified for SLASHTHEM by Soviet5lo
-- Modified for HackEM by Hackemslashem
-- Converted to Lua and modified for mHack by Ratan Varghese

--MAZE:"soko4-7",' '
des.level_flags("noteleport", "hardfloor", "solidify", "sokoban", "premapped")
des.message("Open the Door")
--GEOMETRY: center, center
-- "Joseph L Traub"
des.map([[
       ----------- 
       |.........| 
       |.........| 
------ |...-----.| 
|....-----....--.| 
|................| 
|-.|.......--.--.| 
|-.|---.----|.||.| 
|..------...|.--.--
|...........F.....|
---------...|.....|
        -----------
]]);
des.levregion({ region = {7,7,7,7}, type = "branch" })
des.stair("up",10,9)
des.region(selection.area(00,00,18,11), "lit")
des.non_diggable(selection.area(00,00,18,11))
des.non_passwall(selection.area(00,00,18,11))

-- MAGIC_CHEST:(04,06)

des.object("boulder",12,2)
des.object("boulder",14,2)
des.object("boulder",9,3)
des.object("boulder",11,4)
des.object("boulder",16,4)
des.object("boulder",8,5)
des.object("boulder",10,5)
des.object("boulder",14,9)

des.trap("pit",2,6)
des.trap("pit",2,7)
des.trap("pit",4,9)
des.trap("pit",5,9)
des.trap("pit",6,9)
des.trap("pit",7,9)
des.trap("pit",8,9)

des.object("scroll of earth",1,8)
des.object("scroll of earth",1,9)

des.object('%')
des.object('%')
des.object('%')
des.object('%')
des.object('=')
des.object('/')

des.monster('m')