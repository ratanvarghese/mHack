-- Copyright (c) Tina Hall, 2002
-- Modifications copyright (c) Slash'EM Development Team, 2003
-- Modifications copyright (c) Hackemslashem, 2022
-- Modifications copyright (c) Ratan Varghese, 2024
-- NetHack may be freely redistributed.  See license for details.

-- Grund has left this world, but his memory lives on
des.level_init({ style="mazegrid", bg ="-" });

des.level_flags("mazelevel", "noteleport", "noflipy")

--[[
#000000000111111111122222222223333333333444444444455555555556666666666777777
#123456789012345678901234567890123456789012345678901234567890123456789012345
--]]
des.map([[
...}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}....
...}}------------------------------------------}}....
...}}|-....---..F..-..-....-.+..+.--..--.|.+..F}}....
...}}|-...--....--+-.---..--.----.-...--.|.|..|}}....
...}}|--+--......S#-.---..+..----.+....+.|.|.-|}}....
...}}|-##-.......---.---F----------....--|.|..F}}....
...}}|-#--+-------...---.-----..-----.---|.|..|}}....
...}w+.#-........S.----...+.-...-------..+.|..F}}....
...ww|.--.......--.-..+..--.--...---..-.-|.|..|}}....
...}}|.-.......-----S---..F.+..-.F....+.-|.|..F}.....
...}}|.S\........S...S.-------+---....---|.|..|}.....
...}}|.-.......-----S----..---..--+-.----|.|..F}.....
...ww|.--.......--.-..+....----....----..+.|..|}}....
...}w+.#-........S.----.....+.--F----...-|.|..F}}....
...}}|-#--+-------...---...--.-..--...---|.|..|}}....
...}}|-##-.......---.---F----.--..+.---..+.|..F}}....
...}}|--+--......S#-.---..---....--F---+-|.|.-|}}....
...}}|-...--....--+-.--....--------.-...-|.|..|}}....
...}}|-....---..F..-..-....+..-...+....--|.+..F}}....
...}}------------------------------------------}}....
...}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}....
]])

local objects = {'[',')'}
local places = { {17,02}, {17,18}, {21,02}, {21,18} }
local monsters = { 'L','N','E','V','M','O','R','T','X','Z' }
shuffle(objects)
shuffle(places)
shuffle(monsters)

des.teleport_region({ region = {64,03,75,20}, region_islev=1, exclude={00,00,52,20}, dir="down" })
des.teleport_region({ region = {01,01,11,20}, region_islev=1, exclude={00,00,52,20}, dir="up" })
des.levregion({ region = {66,05,75,20}, region_islev=1, exclude={00,00,52,20}, type="stair-up" })

des.mazewalk(52,09,"east")
des.mazewalk(00,09,"west")

-- Non-diggable walls
des.non_diggable(selection.area(04,00,46,20))

-- Fountain
des.feature("fountain", 22, 10)

-- Doors
des.door("locked", 05,07)
des.door("locked", 05,13)
des.door("locked", 08,16)
des.door("locked", 08,04)
des.door("closed", 10,06)
des.door("closed", 10,14)
des.door("closed", 18,03)
des.door("closed", 18,17)
des.door("closed", 22,08)
des.door("closed", 22,12)
des.door("closed", 26,04)
des.door("closed", 26,07)
des.door("closed", 28,09)
des.door("closed", 28,13)
des.door("closed", 29,02)
des.door("closed", 30,10)
des.door("closed", 32,02)
des.door("closed", 34,15)
des.door("closed", 34,18)
des.door("closed", 34,11)
des.door("closed", 34,04)
des.door("closed", 38,09)
des.door("closed", 39,16)
des.door("closed", 39,04)
des.door("closed", 41,15)
des.door("closed", 41,12)
des.door("closed", 41,07)
des.door("closed", 43,02)
des.door("closed", 43,18)

-- Drawbridge
des.drawbridge({ dir = "west", state = "closed", x = 47, y = 10 })

-- Minefield
local minefield = selection.area(49,0,52,19)
des.trap("land mine", minefield:rndcoord(1))
des.trap("land mine", minefield:rndcoord(1))
des.trap("land mine", minefield:rndcoord(1))
des.trap("land mine", minefield:rndcoord(1))
des.trap("land mine", minefield:rndcoord(1))
des.trap("land mine", minefield:rndcoord(1))
des.trap("land mine", minefield:rndcoord(1))
des.trap("land mine", minefield:rndcoord(1))
des.trap("land mine", minefield:rndcoord(1))
des.trap("land mine", minefield:rndcoord(1))
des.trap("land mine", minefield:rndcoord(1))
des.trap("land mine", minefield:rndcoord(1))
des.trap("land mine", minefield:rndcoord(1))
des.trap("land mine", minefield:rndcoord(1))
des.trap("land mine", minefield:rndcoord(1))
des.trap("land mine", minefield:rndcoord(1))
des.trap("spiked pit", minefield:rndcoord(1))
des.trap("spiked pit", minefield:rndcoord(1))
des.trap("spiked pit", minefield:rndcoord(1))
des.trap("spiked pit", minefield:rndcoord(1))
des.trap("spiked pit", minefield:rndcoord(1))
des.trap("spiked pit", minefield:rndcoord(1))
des.trap("spiked pit", minefield:rndcoord(1))
des.trap("spiked pit", minefield:rndcoord(1))
des.trap("arrow", minefield:rndcoord(1))
des.trap("arrow", minefield:rndcoord(1))
des.trap("arrow", minefield:rndcoord(1))
des.trap("arrow", minefield:rndcoord(1))
des.trap("rust", minefield:rndcoord(1))
des.trap("rust", minefield:rndcoord(1))
des.trap("rust", minefield:rndcoord(1))
des.trap("rust", minefield:rndcoord(1))

-- Trap doors
des.trap("trap door",06,07)
des.trap("trap door",06,09)
des.trap("trap door",06,11)
des.trap("trap door",06,13)

-- northern armoury
des.object(objects[1], 07, 02)
des.object(objects[1], 07, 02)
des.object(objects[1], 07, 02)
des.object(objects[1], 07, 02)
des.object(objects[1], 08, 02)
des.object(objects[1], 08, 02)
des.object(objects[1], 08, 02)
des.object(objects[1], 08, 02)
des.object(objects[1], 09, 02)
des.object(objects[1], 09, 02)
des.object(objects[1], 09, 02)
des.object(objects[1], 09, 02)
des.object(objects[1], 10, 02)
des.object(objects[1], 10, 02)
des.object(objects[1], 10, 02)
des.object(objects[1], 10, 02)
-- southern armory
des.object(objects[2], 07, 18)
des.object(objects[2], 07, 18)
des.object(objects[2], 07, 18)
des.object(objects[2], 07, 18)
des.object(objects[2], 08, 18)
des.object(objects[2], 08, 18)
des.object(objects[2], 08, 18)
des.object(objects[2], 08, 18)
des.object(objects[2], 09, 18)
des.object(objects[2], 09, 18)
des.object(objects[2], 09, 18)
des.object(objects[2], 09, 18)
des.object(objects[2], 10, 18)
des.object(objects[2], 10, 18)
des.object(objects[2], 10, 18)
des.object(objects[2], 10, 18)

-- Statue of Grund
des.object({ id = "scimitar", material = "cold iron", spe = 5, x = 19, y = 10 })
des.object({ id = "orcish helm", spe = 5, x = 19, y = 10 })
des.object({ id = "statue", x=19,y=10, buc="uncursed",
             montype="orc-captain", historic=1, male = 1, name="Grund"})


-- THE WAND OF WISHING
local loc = places[1];
des.object({ id = "chest", trapped = 0, locked = 1, coord = loc ,
             contents = function()
                des.object("wishing");
             end
});
-- Prevent monsters from eating it.  (@'s never eat objects)
des.engraving({ coord = loc, type="burn", text="Elbereth" })
des.object({ id = "scroll of scare monster", coord = loc, buc="cursed" })

-- The treasure of the (illegitimate) lord
des.object("chest",09,10)
des.object('/', 08, 10)
des.object('[', 08, 10)
des.object('\"', 08, 10)

-- To help the enemies
-- intentionally avoiding create monster
des.object("wand of speed monster")
des.object("wand of speed monster")
des.object("wand of speed monster")
des.object("wand of speed monster")
des.object("wand of make invisible")
des.object("wand of make invisible")
des.object("potion of invisibility")
des.object("potion of invisibility")
des.object("potion of invisibility")
des.object("potion of invisibility")
des.object("potion of speed")
des.object("potion of speed")
des.object("potion of speed")
des.object("potion of speed")
des.object("potion of full healing")
des.object("potion of full healing")
des.object("potion of extra healing")
des.object("potion of extra healing")
des.object("potion of healing")
des.object("potion of healing")
des.object("potion of healing")
des.object("potion of gain level")
des.object("potion of gain level")

-- Dead elves
des.object({ id="corpse", montype="elven monarch", coord=minefield:rndcoord(1) })
des.object({ id="corpse", montype="elven monarch", coord=minefield:rndcoord(1) })
des.object({ id="corpse", montype="elf-noble", coord=minefield:rndcoord(1) })
des.object({ id="corpse", montype="elf-noble", coord=minefield:rndcoord(1) })
des.object({ id="corpse", montype="Green-elf", coord=minefield:rndcoord(1) })
des.object({ id="corpse", montype="Green-elf", coord=minefield:rndcoord(1) })
des.object({ id="corpse", montype="Grey-elf", coord=minefield:rndcoord(1) })
des.object({ id="corpse", montype="Grey-elf", coord=minefield:rndcoord(1) })
des.object({ id="corpse", montype="Woodland-elf", coord=minefield:rndcoord(1) })
des.object({ id="corpse", montype="Woodland-elf", coord=minefield:rndcoord(1) })

-- Ammo for the guards of the entry hall
des.object({ id = "orcish arrow", x = 45, y = 02, material="cold iron", quantity = d(20) })
des.object({ id = "orcish arrow", x = 45, y = 18, material="cold iron", quantity = d(20) })
des.object({ id = "arrow", x = 45, y = 05, quantity = d(20) })
des.object({ id = "arrow", x = 45, y = 15, quantity = d(20) })
des.object({ id = "orcish bow", x = 45, y = 02 })
des.object({ id = "orcish bow", x = 45, y = 18 })
des.object({ id = "bow", x = 45, y = 05 })
des.object({ id = "bow", x = 45, y = 15 })
des.object("wand of fire", 45, 07)
des.object("wand of fire", 45, 13)
des.object("wand of lightning", 45, 09)
des.object("wand of lightning", 45, 11)

-- Dark by default, light the front and back of the fort
des.region(selection.area(00,00,45,20), "unlit")
des.region(selection.area(46,00,52,20), "lit")
des.region(selection.area(02,00,04,20), "lit")

-- Special rooms
des.region({ region={11,03,15,06}, type="barracks", lit=1, filled=1})
des.region({ region={11,14,15,17}, type="barracks", lit=1, filled=1})
des.region({ region={08,09,10,11}, type="throne", lit=1, irregular=1, filled=2 })

-- Entry corridor
des.monster('uruk-hai', 45, 02)
des.monster('uruk-hai', 45, 18)
des.monster('soldier', 45, 05)
des.monster('soldier', 45, 15)
des.monster('uruk-hai', 45, 07)
des.monster('uruk-hai', 45, 13)
des.monster('soldier', 45, 09)
des.monster('soldier', 45, 11)
des.monster('soldier', 44, 05)
des.monster('soldier', 44, 15)
des.monster('soldier', 44, 09)
des.monster('soldier', 44, 11)
des.monster('lieutenant', 44, 10)

-- Hell hounds
des.monster('hell hound',42,05)
des.monster('hell hound',42,15)
des.monster('hell hound',42,07)
des.monster('hell hound',42,13)

-- Caves
des.monster('uruk-hai', 24, 02)
des.monster('uruk-hai', 24, 03)
des.monster('uruk-hai', 24, 04)
des.monster('uruk-hai', 25, 02)
des.monster('uruk-hai', 25, 03)
des.monster('uruk-hai', 25, 04)

des.monster('orc shaman', 30, 02)
des.monster('orc shaman', 31, 02)

des.monster('olog-hai', 35,04)
des.monster('olog-hai', 36,03)

des.monster('soldier', 23, 07)
des.monster('soldier', 24, 07)

des.monster('ogre', 30, 07)
des.monster('ogre', 31, 07)
des.monster('ogre', 30, 08)
des.monster('ogre', 31, 08)

des.monster('hill orc', 34, 09)
des.monster('hill orc', 35, 09)
des.monster('hill orc', 36, 09)
des.monster('hill orc', 34, 10)
des.monster('hill orc', 35, 10)
des.monster('hill orc', 36, 10)

des.monster('uruk-hai', 23, 12)
des.monster('uruk-hai', 24, 12)
des.monster('uruk-hai', 25, 12)
des.monster('uruk-hai', 23, 13)
des.monster('uruk-hai', 24, 13)
des.monster('uruk-hai', 25, 13)

des.monster('orc shaman', 29, 14)
des.monster('orc shaman', 29, 15)

des.monster('mordor orc', 23, 17)
des.monster('mordor orc', 24, 17)
des.monster('mordor orc', 25, 17)
des.monster('mordor orc', 23, 18)
des.monster('mordor orc', 24, 18)
des.monster('mordor orc', 25, 18)

local caves = selection.area(22,02,42,18)
des.monster('olog-hai', caves:rndcoord(1))
des.monster('olog-hai', caves:rndcoord(1))
des.monster('goblin', caves:rndcoord(1))
des.monster('goblin', caves:rndcoord(1))
des.monster('hobgoblin', caves:rndcoord(1))
des.monster('hobgoblin', caves:rndcoord(1))

-- throne room
des.monster('rogue', 08, 10) -- A pretender to the throne!
des.monster(monsters[1], 09, 07)
des.monster(monsters[2], 11, 07)
des.monster(monsters[3], 13, 07)
des.monster(monsters[4], 15, 07)
des.monster(monsters[5], 10, 08)
des.monster(monsters[6], 12, 08)
des.monster(monsters[7], 14, 08)
des.monster(monsters[8], 09, 09)
des.monster(monsters[9], 11, 09)
des.monster(monsters[10], 13, 09)
des.monster(monsters[1], 10, 10)
des.monster(monsters[2], 12, 10)
des.monster(monsters[3], 14, 10)
des.monster(monsters[4], 09, 11)
des.monster(monsters[5], 11, 11)
des.monster(monsters[6], 13, 11)
des.monster(monsters[7], 10, 12)
des.monster(monsters[8], 12, 12)
des.monster(monsters[9], 14, 12)
des.monster(monsters[10], 09, 13)
des.monster(monsters[1], 11, 13)
des.monster(monsters[2], 13, 13)
des.monster(monsters[3], 15, 13)

-- dragons guarding the armouries
des.monster('D', 07, 02)
des.monster('D', 10, 02)
des.monster('D', 07, 18)
des.monster('D', 10, 18)

-- soldiers guarding the possible wand of wishing locations
des.monster('soldier', 18, 02)
des.monster('soldier', 18, 18)
des.monster('soldier', 20, 02)
des.monster('soldier', 20, 18)

-- monsters in the moat
des.monster('giant eel', 47, 02)
des.monster('giant eel', 47, 18)
des.monster('shark', 47, 05)
des.monster('shark', 47, 15)
des.monster('giant eel', 04, 02)
des.monster('giant eel', 04, 18)
des.monster('shark', 04, 05)
des.monster('shark', 04, 15)