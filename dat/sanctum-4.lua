-- Written for mHack by Ratan Varghese

des.level_init({ style = "solidfill", fg = " " })
des.level_flags("mazelevel", "noteleport", "hardfloor", "nommap")
--[[
0         1         2         3         4         5         6         7    7
0123456789012345678901234567890123456789012345678901234567890123456789012345
--]]
des.map([[
----------------------------------------------------------------------------0
|                                                                          |1
|                                                                          |2
|           ---------------                     ---------------            |3
|           |...S.....S...|   ---------------   |...S.....S...|            |4
|           |.---.....---.|   |....LLLLL....|   |.---.....---.|            |5
|           |.|.........|.|   |..LLLLLLLLL..|   |.|...---...|.|            |6
|           |S-.........-S|   |.LLLLLLLLLLL.|   |S-.........-S|            |7
|           |...LLLLLLL...|   |.LLLL...LLLL.|   |...-------...|            |8
|           |...L.....L...|---|LLLL.. ..LLLL|---|.|.|.....|.|.|            |9
|           |...L.....L...+...+LLLL.   .LLLL+...+.|.|.....+.|.|            |0
|           |...L.....L...|---|LLLL.. ..LLLL|---|.|.|.....|.|.|            |1
|           |...LLLLLLL...|   |.LLLL...LLLL.|   |...-------...|            |2
|           |S-.........-S|   |.LLLLLLLLLLL.|   |S-.........-S|            |3
|           |.|.........|.|   |..LLLLLLLLL..|   |.|...---...|.|            |4
|           |.---.....---.|   |....LLLLL....|   |.---.....---.|            |5
|           |...S.....S...|   ---------------   |...S.....S...|            |6
|           ---------------                     ---------------            |7
|                                                                          |8
|                                                                          |9
----------------------------------------------------------------------------0
]]);
des.region({ region={16,08,22,12}, lit=1, type="temple", filled=2 })
des.altar({ x=19, y=10, align="noalign", type="sanctum" })
des.region({ region={53,04, 57,05}, lit=0, type="morgue", filled=1, irregular=1 })

-- Non diggable and phaseable walls
des.non_diggable(selection.area(00,00,75,19))
des.non_passwall(selection.area(00,00,75,19))

-- Lit central room
des.region({ region={31,05,43,15}, lit=2 })

des.stair("up",55,10)

-- Doors
des.door("random",26,10)
des.door("random",30,10)
des.door("random",44,10)
des.door("random",48,10)
des.door("locked",58,10)

-- Random traps
des.trap("magic",15,07)
des.trap("fire",15,08)
des.trap("anti magic",15,09)
des.trap("magic",15,10)
des.trap("anti magic",15,11)
des.trap("fire",15,12)
des.trap("magic",15,13)
des.trap("fire",16,07)
des.trap("fire",16,13)
des.trap("anti magic",17,07)
des.trap("anti magic",17,13)
des.trap("fire",18,07)
des.trap("fire",18,13)
des.trap("magic",19,07)
des.trap("magic",19,13)
des.trap("fire",20,07)
des.trap("fire",20,13)
des.trap("anti magic",21,07)
des.trap("anti magic",21,13)
des.trap("fire",22,07)
des.trap("fire",22,13)
des.trap("magic",23,07)
des.trap("fire",23,08)
des.trap("anti magic",23,09)
des.trap("magic",23,10)
des.trap("anti magic",23,11)
des.trap("fire",23,12)
des.trap("magic",23,13)

-- Some random objects
des.object("[")
des.object("[")
des.object("[")
des.object("[")
des.object(")")
des.object(")")
des.object("*")
des.object("!")
des.object("!")
des.object("!")
des.object("!")
des.object("?")
des.object("?")
des.object("?")
des.object("?")
des.object("?")

-- Some monsters.
des.monster({ id = "horned devil",x=31,y=05,peaceful=0 })
des.monster({ id = "erinys",x=31,y=15,peaceful=0 })
des.monster({ id = "marilith",x=43,y=05,peaceful=0 })
des.monster({ id = "nalfeshnee",x=43,y=15,peaceful=0 })
des.monster({ id = "barbed devil",x=46,y=10,peaceful=0 })

-- Moloch's horde
des.monster({ id = "aligned cleric", x=13,y=10,align="noalign",peaceful=0 })
des.monster({ id = "aligned cleric", x=14,y=10,align="noalign",peaceful=0 })
des.monster({ id = "aligned cleric", x=19,y=04,align="noalign",peaceful=0 })
des.monster({ id = "aligned cleric", x=19,y=05,align="noalign",peaceful=0 })
des.monster({ id = "aligned cleric", x=19,y=15,align="noalign",peaceful=0 })
des.monster({ id = "aligned cleric", x=19,y=16,align="noalign",peaceful=0 })
des.monster({ id = "aligned cleric", x=24,y=10,align="noalign",peaceful=0 })
des.monster({ id = "aligned cleric", x=25,y=10,align="noalign",peaceful=0 })
des.monster({ id = "aligned cleric", x=28,y=10,align="noalign",peaceful=0 })

-- A few nasties
des.monster({ class = "L",x=32,y=05,peaceful=0 })
des.monster({ class = "L",x=32,y=15,peaceful=0 })
des.monster({ class = "L",x=42,y=05,peaceful=0 })
des.monster({ class = "L",x=42,y=15,peaceful=0 })
des.monster({ class = "V",x=31,y=06,peaceful=0 })
des.monster({ class = "V",x=31,y=14,peaceful=0 })
des.monster({ class = "V",x=43,y=06,peaceful=0 })
des.monster({ class = "V",x=43,y=14,peaceful=0 })
des.monster({ id = "horned devil",x=17,y=09,peaceful=0 })
des.monster({ id = "barbed devil",x=17,y=11,peaceful=0 })
des.monster({ id = "marilith",x=21,y=09,peaceful=0 })
des.monster({ id = "nalfeshnee",x=21,y=11,peaceful=0 })
des.monster({ id = "iron golem",x=15,y=06,peaceful=0 })
des.monster({ id = "iron golem",x=15,y=14,peaceful=0 })
des.monster({ id = "iron golem",x=23,y=06,peaceful=0 })
des.monster({ id = "iron golem",x=23,y=14,peaceful=0 })


-- Teleporting to this level is allowed after the invocation creates its
-- entrance.  Force arrival in that case to be on rightmost third of level.
des.teleport_region({ region = {53,09,57,11}, region_islev=1, dir="down" })
