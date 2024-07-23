-- NetHack tower tower3.lua	$NHDT-Date: 1652196038 2022/05/10 15:20:38 $  $NHDT-Branch: NetHack-3.7 $:$NHDT-Revision: 1.1 $
--	Copyright (c) 1989 by Jean-Christophe Collet
--  Copyright (c) 2024 by Ratan Varghese
-- NetHack may be freely redistributed.  See license for details.
--
des.level_init({ style = "solidfill", fg = " " });

des.level_flags("mazelevel", "noteleport", "hardfloor", "solidify")

-- Heavily modified for mHack
-- This is essentially a mix of several forest- and courtyard-themed SpliceHack levels:
-- - the Dark Forest
-- - Malcanthet's Lair aka the foocubus level
-- - Vlad's castle

--[[
#000000000111111111122222222223333333333444444444455555555556666666666777777
#123456789012345678901234567890123456789012345678901234567890123456789012345
--]]
des.map([[
......................................w}}}}}}}}}}}ww}}}}}}}}}}}}}}}}}}}}}}}}0
......................................www}}}}}}}}}www}}-------------------}}1
........................................ww}}}}}}}}}ww}}|.................|w}2
..............wwwww......................wwwww}}}}}w}}w|.T.---.---.---.T.|w}3
.............wwwwwww.........................ww}}}}ww}}|...|.|.|.|.|.|...|}}4
.............wwwwwww..........................w}}}}www}|.---S---S---S---.|}w5
..............wwwww...........................ww}}}}w}}|.|.S.........S.|.|}w6
...............................................ww}}}}}}|.---.........---.|}w7
................................................w}}}}}w|...+.........+...|}w8
...............................................ww}}}}w}|.---.........---.|}w9
...............................................w}}}}}w}|.|.S.........S.|.|}w0
...............................................w}}}}}w}|.---S---S---S---.|}}1
...............................................w}}}}}w}|...|.|.|.|.|.|...|w}2
...............................................ww}}}ww}|.T.---.---.---.T.|w}3
................................................w}}}ww}|.................|w}4
................................................w}}}}ww---------+---------w}5
................................................ww}}}}ww}}}}www...www}}}ww}}6
.................................................w}}}}}wwwwwwwwwwww}}}}}w}}}7
.................................................w}}}}}}}}}}}}}}}wwwwwww}}}}8
.................................................w}}}}}}wwTwww}}}}}}}}}}}}ww9
]])
-- Level setup
des.non_diggable(selection.area(00,00,75,19))
des.region(selection.area(00,00,75,19), "unlit")
des.replace_terrain({ region={00,00, 40,19}, fromterrain=".", toterrain="T", chance=20 })
des.levregion({ type="branch", region={01,01,18,25} })
des.ladder("up", 64,08)

-- Dark forest
local dark_forest = selection.area(00,00, 38,19)
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
des.monster({ id = forest_folk[1], peaceful = 0, coord = dark_forest:rndcoord(1) })
des.monster({ id = forest_folk[1], peaceful = 0, coord = dark_forest:rndcoord(1) })
des.monster({ id = forest_folk[1], peaceful = 0, coord = dark_forest:rndcoord(1) })
des.monster({ id = forest_folk[1], peaceful = 0, coord = dark_forest:rndcoord(1) })
des.monster({ id = forest_folk[2], peaceful = 0, coord = dark_forest:rndcoord(1) })
des.monster({ id = forest_folk[2], peaceful = 0, coord = dark_forest:rndcoord(1) })
des.monster({ id = forest_folk[2], peaceful = 0, coord = dark_forest:rndcoord(1) })
des.monster({ id = forest_folk[2], peaceful = 0, coord = dark_forest:rndcoord(1) })
des.monster({ id = forest_folk[3], peaceful = 0, coord = dark_forest:rndcoord(1) })
des.monster({ id = forest_folk[3], peaceful = 0, coord = dark_forest:rndcoord(1) })
des.monster({ id = forest_folk[3], peaceful = 0, coord = dark_forest:rndcoord(1) })
des.monster({ id = forest_folk[3], peaceful = 0, coord = dark_forest:rndcoord(1) })
des.monster({ id = forest_folk[4], peaceful = 0, coord = dark_forest:rndcoord(1) })
des.monster({ id = forest_folk[4], peaceful = 0, coord = dark_forest:rndcoord(1) })
des.monster({ id = forest_folk[4], peaceful = 0, coord = dark_forest:rndcoord(1) })
des.monster({ id = forest_folk[4], peaceful = 0, coord = dark_forest:rndcoord(1) })
des.monster({ id = forest_folk[5], peaceful = 0, coord = dark_forest:rndcoord(1) })
des.monster({ id = forest_folk[6], peaceful = 0, coord = dark_forest:rndcoord(1) })
des.monster({ id = forest_folk[7], peaceful = 0, coord = dark_forest:rndcoord(1) })
des.monster({ id = forest_folk[8], peaceful = 0, coord = dark_forest:rndcoord(1) })
des.monster({ id = forest_folk[9], peaceful = 0, coord = dark_forest:rndcoord(1) })
des.monster({ id = forest_folk[10], peaceful = 0, coord = dark_forest:rndcoord(1) })
des.monster({ id = forest_fauna[1], peaceful = 0, coord =  dark_forest:rndcoord(1) })
des.monster({ id = forest_fauna[1], peaceful = 0, coord =  dark_forest:rndcoord(1) })
des.monster({ id = forest_fauna[1], peaceful = 0, coord =  dark_forest:rndcoord(1) })
des.monster({ id = forest_fauna[1], peaceful = 0, coord =  dark_forest:rndcoord(1) })
des.monster({ id = forest_fauna[2], peaceful = 0, coord =  dark_forest:rndcoord(1) })
des.monster({ id = forest_fauna[2], peaceful = 0, coord =  dark_forest:rndcoord(1) })
des.monster({ id = forest_fauna[2], peaceful = 0, coord =  dark_forest:rndcoord(1) })
des.monster({ id = forest_fauna[2], peaceful = 0, coord =  dark_forest:rndcoord(1) })
des.monster({ id = forest_fauna[3], peaceful = 0, coord =  dark_forest:rndcoord(1) })
des.monster({ id = forest_fauna[4], peaceful = 0, coord =  dark_forest:rndcoord(1) })
des.monster({ id = forest_fauna[5], peaceful = 0, coord =  dark_forest:rndcoord(1) })
des.monster({ id = forest_fauna[6], peaceful = 0, coord =  dark_forest:rndcoord(1) })

des.object(dark_forest:rndcoord(1))
des.object(dark_forest:rndcoord(1))
des.object(dark_forest:rndcoord(1))
des.object(dark_forest:rndcoord(1))
des.object(dark_forest:rndcoord(1))
des.object(dark_forest:rndcoord(1))
des.object(dark_forest:rndcoord(1))
des.object(dark_forest:rndcoord(1))
des.object(dark_forest:rndcoord(1))
des.object(dark_forest:rndcoord(1))
des.trap("arrow", dark_forest:rndcoord(1))
des.trap("arrow", dark_forest:rndcoord(1))
des.trap("arrow", dark_forest:rndcoord(1))
des.trap("magic", dark_forest:rndcoord(1))
des.trap("magic", dark_forest:rndcoord(1))
des.trap("magic", dark_forest:rndcoord(1))
-- Lake
local shore = selection.area(40,04,44,19)
des.object("boulder", shore:rndcoord(1))
des.object("boulder", shore:rndcoord(1))
des.object("boulder", shore:rndcoord(1))
des.object("boulder", shore:rndcoord(1))
des.object("boulder", shore:rndcoord(1))
des.object("boulder", shore:rndcoord(1))
des.object("boulder", shore:rndcoord(1))
des.object("boulder", shore:rndcoord(1))
des.monster("giant eel", 49, 00)
des.monster("giant eel", 49, 18)
des.monster("electric eel", 49, 02)
des.monster("electric eel", 49, 16)
des.monster("piranha", 49, 04)
des.monster("piranha", 49, 14)
des.monster("shark", 49, 06)
des.monster("shark", 49, 12)

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

des.object("lock pick",place[1])
des.trap({ coord = place[1] })
des.object("elven cloak",place[2])
des.trap({ coord = place[2] })
des.object("blindfold",place[3])
des.trap({ coord = place[3] })
des.object("long sword",place[4])
des.trap({ coord = place[4] })