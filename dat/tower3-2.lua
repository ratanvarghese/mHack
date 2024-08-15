-- NetHack tower tower3.lua	$NHDT-Date: 1652196038 2022/05/10 15:20:38 $  $NHDT-Branch: NetHack-3.7 $:$NHDT-Revision: 1.1 $
--	Copyright (c) 1989 by Jean-Christophe Collet
-- NetHack may be freely redistributed.  See license for details.
--

-- Modified heavily for mHack by Ratan Varghese
-- This is essentially a mix of several forest- and courtyard-themed SpliceHack levels:
-- - the Dark Forest
-- - Malcanthet's Lair aka the foocubus level
-- - Vlad's castle
-- ... but this time, with help from our good friend, the letter V!

des.level_init({ style = "solidfill", fg = " " });

des.level_flags("mazelevel", "noteleport", "hardfloor", "solidify")

--[[
#000000000111111111122222222223333333333444444444455555555556666666666777777
#123456789012345678901234567890123456789012345678901234567890123456789012345
--]]
des.map([[
..........ww}}}}}}}ww..........................ww}}}}}}}ww..................0
...........ww}}}}}}}ww........................ww}w}}}}}-------------------..1
............ww}}}}}w}ww......................ww}}}w}}}w|.................|..2
.............ww}}}w}}}ww....................ww}}}}}w}ww|.T.---.---.---.T.|..3
..............ww}w}}}}}ww..................ww}}}}}}}ww.|...|.|.|.|.|.|...|..4
...............ww}}}}}}}ww................ww}}}}}}}ww..|.---S---S---S---.|..5
................ww}}}}}}}ww..............ww}w}}}}}ww...|.|.S.........S.|.|..6
.................ww}}}}}}}ww............ww}}}w}}}ww....|.---.........---.|..7
..................ww}}}}}}}ww..........ww}}}}}w}ww.....|...+.........+...|..8
...................ww}}}}}}}ww........ww}}}}}}}ww......|.---.........---.|..9
....................ww}}}}}}}ww......ww}}}}}}}ww.......|.|.S.........S.|.|..0
.....................ww}}}}}}}ww....ww}}}}}}}ww........|.---S---S---S---.|..1
......................ww}}}}}}www..ww}}}}}}}ww.........|...|.|.|.|.|.|...|..2
.......................ww}}}}w}}wwww}}}}}}}ww..........|.T.---.---.---.T.|..3
........................ww}}w}}}}ww}}}}}}}ww...........|.................|..4
.........................www}}}}}}}}}}}}}ww............---------+---------..5
..........................ww}}}}}}}}}}}}ww..................................6
...........................ww}}}}}}}}}}ww...................................7
............................ww}}}}}}}}ww....................................8
.............................ww}}}}}}ww.....................................9
]])
-- Level setup
des.non_diggable(selection.area(00,00,75,19))
des.region(selection.area(00,00,75,19), "unlit")
des.replace_terrain({ region={00,00, 54,19}, fromterrain=".", toterrain="T", chance=20 })
des.replace_terrain({ region={55,17, 75,19}, fromterrain=".", toterrain="T", chance=20 })
des.levregion({ type="branch", region={01,01,09,25} })
des.ladder("up", 64,08)

-- Dark forest
local forest_edge = selection.area(00,00, 09,19)
local forest_core = selection.area(28,00, 39,07)
local forest_yard = selection.area(47,11, 54,19)
local forest_folk = {
  "succubus", "incubus", "water nymph", "wood nymph", "mountain nymph", "vampire",
  "werewolf", "werejackal", "wererat", "Woodland-elf", "Green-elf", "Grey-elf",
  "elf-noble", "plains centaur", "forest centaur", "mountain centaur"
}
local forest_fauna = {
  "soldier ant", "killer bee", "cockatrice", "fox", "coyote", "wolf", "winter wolf",
  "warg", "lynx", "mumak", "leocrotta", "baluchitherium", "mastodon", "giant spider",
  "trapper", "purple worm", "xan", "giant bat", "raven", "jabberwock", "stalker"
}
shuffle(forest_folk)
shuffle(forest_fauna)
des.monster({ id = forest_folk[1], peaceful = 0, coord = forest_core:rndcoord(1) })
des.monster({ id = forest_folk[1], peaceful = 0, coord = forest_core:rndcoord(1) })
des.monster({ id = forest_folk[1], peaceful = 0, coord = forest_yard:rndcoord(1) })
des.monster({ id = forest_folk[1], peaceful = 0, coord = forest_yard:rndcoord(1) })
des.monster({ id = forest_folk[2], peaceful = 0, coord = forest_core:rndcoord(1) })
des.monster({ id = forest_folk[2], peaceful = 0, coord = forest_core:rndcoord(1) })
des.monster({ id = forest_folk[2], peaceful = 0, coord = forest_yard:rndcoord(1) })
des.monster({ id = forest_folk[2], peaceful = 0, coord = forest_yard:rndcoord(1) })
des.monster({ id = forest_folk[3], peaceful = 0, coord = forest_core:rndcoord(1) })
des.monster({ id = forest_folk[3], peaceful = 0, coord = forest_core:rndcoord(1) })
des.monster({ id = forest_folk[3], peaceful = 0, coord = forest_yard:rndcoord(1) })
des.monster({ id = forest_folk[3], peaceful = 0, coord = forest_yard:rndcoord(1) })
des.monster({ id = forest_folk[4], peaceful = 0, coord = forest_core:rndcoord(1) })
des.monster({ id = forest_folk[4], peaceful = 0, coord = forest_core:rndcoord(1) })
des.monster({ id = forest_folk[4], peaceful = 0, coord = forest_yard:rndcoord(1) })
des.monster({ id = forest_folk[4], peaceful = 0, coord = forest_yard:rndcoord(1) })
des.monster({ id = forest_folk[5], peaceful = 0, coord = forest_core:rndcoord(1) })
des.monster({ id = forest_folk[6], peaceful = 0, coord = forest_core:rndcoord(1) })
des.monster({ id = forest_folk[7], peaceful = 0, coord = forest_core:rndcoord(1) })
des.monster({ id = forest_folk[8], peaceful = 0, coord = forest_yard:rndcoord(1) })
des.monster({ id = forest_folk[9], peaceful = 0, coord = forest_yard:rndcoord(1) })
des.monster({ id = forest_folk[10], peaceful = 0, coord = forest_yard:rndcoord(1) })
des.monster({ id = forest_fauna[1], peaceful = 0, coord =  forest_edge:rndcoord(1) })
des.monster({ id = forest_fauna[1], peaceful = 0, coord =  forest_edge:rndcoord(1) })
des.monster({ id = forest_fauna[1], peaceful = 0, coord =  forest_core:rndcoord(1) })
des.monster({ id = forest_fauna[1], peaceful = 0, coord =  forest_core:rndcoord(1) })
des.monster({ id = forest_fauna[2], peaceful = 0, coord =  forest_edge:rndcoord(1) })
des.monster({ id = forest_fauna[2], peaceful = 0, coord =  forest_edge:rndcoord(1) })
des.monster({ id = forest_fauna[2], peaceful = 0, coord =  forest_core:rndcoord(1) })
des.monster({ id = forest_fauna[2], peaceful = 0, coord =  forest_core:rndcoord(1) })
des.monster({ id = forest_fauna[3], peaceful = 0, coord =  forest_edge:rndcoord(1) })
des.monster({ id = forest_fauna[4], peaceful = 0, coord =  forest_edge:rndcoord(1) })
des.monster({ id = forest_fauna[5], peaceful = 0, coord =  forest_core:rndcoord(1) })
des.monster({ id = forest_fauna[6], peaceful = 0, coord =  forest_core:rndcoord(1) })

des.object(forest_edge:rndcoord(1))
des.object(forest_edge:rndcoord(1))
des.object(forest_edge:rndcoord(1))
des.object(forest_core:rndcoord(1))
des.object(forest_core:rndcoord(1))
des.object(forest_core:rndcoord(1))
des.object(forest_core:rndcoord(1))
des.object(forest_yard:rndcoord(1))
des.object(forest_yard:rndcoord(1))
des.object(forest_yard:rndcoord(1))
des.trap("arrow", forest_edge:rndcoord(1))
des.trap("arrow", forest_edge:rndcoord(1))
des.trap("arrow", forest_core:rndcoord(1))
des.trap("magic", forest_core:rndcoord(1))
des.trap("magic", forest_yard:rndcoord(1))
des.trap("magic", forest_yard:rndcoord(1))
-- Lake
des.monster("giant eel", 49, 00)
des.monster("giant eel", 35, 18)
des.monster("electric eel", 47, 02)
des.monster("electric eel", 37, 16)
des.monster("piranha", 45, 04)
des.monster("piranha", 35, 14)
des.monster("shark", 43, 06)
des.monster("shark", 37, 12)

-- Tower base
-- Random places are the 10 niches
local place = { {60,04},{64,04},{68,04},{58,06},{70,06},
    {58,10},{70,10},{60,12},{64,12},{68,12} }
shuffle(place)
local tower_base = selection.area(56,02,72,14)

-- Entry doors are, of course, locked
des.door("locked",69,08)
des.door("locked",59,08)
des.door("locked",64,15)
-- Let's put a dragon behind the door, just for the fun...
des.monster("D", 68, 08)
des.monster("V", 67, 07)
des.monster("V", 67, 09)
des.monster("V", 56, 02)
des.monster("V", 72, 02)
des.monster("V", 56, 14)
des.monster("V", 72, 14)
des.monster("elf-noble", 56, 08)
des.monster("elf-noble", 72, 08)
des.monster("elven monarch", 64, 02)
des.monster("elven monarch", 64, 14)

des.object("skeleton key",place[1])
des.trap({ coord = place[1] })
des.object("oilskin cloak",place[2])
des.trap({ coord = place[2] })
des.object("towel",place[3])
des.trap({ coord = place[3] })
des.object("broadsword",place[4])
des.trap({ coord = place[4] })