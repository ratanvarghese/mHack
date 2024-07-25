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
-- ... but this time, with a hexagon

--[[
#000000000111111111122222222223333333333444444444455555555556666666666777777
#123456789012345678901234567890123456789012345678901234567890123456789012345
--]]
des.map([[
........................................w}}}}w..............................0
........................................ww}}ww..............................1
........................................ww}}}w..............................2
.......................................ww}}}}---------+---------............3
....................................wwww}}}}--.................--...........4
....................................w}}}}}}--....---.---.---....--..........5
....................................w}}}}}--.....|.|.|.|.|.|.....--.........6
................................wwwww}}}}--....---S---S---S---....--........7
.............................wwww}}}}}ww--.....|.S.........S.|.....--.......8
............................ww}}}}}}www--......---.........---......--......9
............................w}}}}}}}w.--.........+.........+.........--.....0
............................ww}}}}}}www--......---.........---......--......1
.............................wwww}}}}}ww--.....|.S.........S.|.....--.......2
................................wwwww}}}}--....---S---S---S---....--........3
....................................w}}}}}--.....|.|.|.|.|.|.....--.........4
....................................w}}}}}}--....---.---.---....--..........5
....................................wwww}}}}--.................--...........6
.......................................ww}}}}---------+---------............7
........................................ww}}}w..............................8
.........................................w}}ww..............................9
]])
-- Level setup
des.non_diggable(selection.area(00,00,75,19))
des.region(selection.area(00,00,75,19), "unlit")
des.replace_terrain({ region={00,00, 37,19}, fromterrain=".", toterrain="T", chance=20 })
des.levregion({ type="branch", region={01,01,18,25} })
des.ladder("up", 54,10)

-- Dark forest
local dark_forest = selection.area(00,00, 27,19)
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
local top_shore = selection.area(27,00,35,06)
des.object("boulder", top_shore:rndcoord(1))
des.object("boulder", top_shore:rndcoord(1))
des.object("boulder", top_shore:rndcoord(1))
des.object("boulder", top_shore:rndcoord(1))
local bot_shore = selection.area(27,14,35,19)
des.object("boulder", bot_shore:rndcoord(1))
des.object("boulder", bot_shore:rndcoord(1))
des.object("boulder", bot_shore:rndcoord(1))
des.object("boulder", bot_shore:rndcoord(1))
des.monster("giant eel", 42, 00)
des.monster("giant eel", 42, 19)
des.monster("electric eel", 42, 02)
des.monster("electric eel", 42, 17)
des.monster("piranha", 38, 06)
des.monster("piranha", 38, 14)
des.monster("shark", 33, 09)
des.monster("shark", 33, 11)

-- Tower base
-- Random places are the 10 niches
local place = { {50,06},{54,06},{58,06},{48,08},{60,08},
    {48,12},{60,12},{50,14},{54,14},{58,14} }
shuffle(place)
local tower_base = selection.area(46,04,62,16)

-- Entry doors are, of course, locked
des.door("locked",59,10)
des.door("locked",49,10)
des.door("locked",54,03)
des.door("locked",54,17)
-- Let's put a dragon behind the door, just for the fun...
des.monster("D", 58, 10)
des.monster("V", 57, 09)
des.monster("V", 57, 11)
des.monster("V", 46, 04)
des.monster("V", 62, 04)
des.monster("V", 46, 16)
des.monster("V", 62, 16)
des.monster("elf-noble", 40, 10)
des.monster("elf-noble", 68, 10)
des.monster("elven monarch", 54, 04)
des.monster("elven monarch", 54, 16)

des.object("lock pick",place[1])
des.trap({ coord = place[1] })
des.object("elven cloak",place[2])
des.trap({ coord = place[2] })
des.object("blindfold",place[3])
des.trap({ coord = place[3] })
des.object("long sword",place[4])
des.trap({ coord = place[4] })