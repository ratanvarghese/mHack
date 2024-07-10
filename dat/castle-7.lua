-- Copyright (c) Tina Hall, 2002
-- Modifications copyright (c) Slash'EM Development Team, 2003
-- Modifications copyright (c) Hackemslashem, 2022
-- Modifications copyright (c) Ratan Varghese, 2024
-- NetHack may be freely redistributed.  See license for details.

-- Grund has left this world, but his memory lives on
--[[
#000000000111111111122222222223333333333444444444455555555556666666666777777
#123456789012345678901234567890123456789012345678901234567890123456789012345
--]]
des.map([[
### ### ####.}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}....## ### ###   
# ### ###   .}}------------------------------------------}}.... ### ### #   
#-----------.}}|-....---..F..-..-....-.+..+.--..--.|.+..F}}....---------S---
#| - - - - |.}}|-...--....--+-.---..--.----.-...--.|.|..|}}....| - - - - - -
#|---------|.}}|--+--......S#-.---..+..----.+....+.|.|.-|}}....|------------
#| - - - - |.}}|-##-.......---.---F----------....--|.|..F}}....S - - - - - -
#|---------|.}}|-#--+-------...---.-----..-----.---|.|..|}}....|------------
#| - - - - |.}w+.#-........S.----...+.-...-------..+.|..F}}....| - - - - - -
#|---------|.ww|.--.......--.-..+..--.--...---..-.-|.|..|}}....|------------
#| - - - - |.}}|.-.......-----S---..F.+..-.F....+.-|.|..F}.....| - - - - - -
#|---------|.}}|.S\........S...S.-------+---....---|.|..|}.....|------------
#| - - - - |.}}|.-.......-----S----..---..--+-.----|.|..F}.....S - - - - - -
#|---------|.ww|.--.......--.-..+....----....----..+.|..|}}....|------------
#S - - - - |.}w+.#-........S.----.....+.--F----...-|.|..F}}....| - - - - - -
 |---------|.}}|-#--+-------...---...--.-..--...---|.|..|}}....|------------
 | - - - - |.}}|-##-.......---.---F----.--..+.---..+.|..F}}....| - - - - - -
 |---------|.}}|--+--......S#-.---..---....--F---+-|.|.-|}}....|------------
 | - - - - |.}}|-...--....--+-.--....--------.-...-|.|..|}}....S - - - - - -
 |---------|.}}|-....---..F..-..-....+..-...+....--|.+..F}}....|------------
 | - - - - |.}}------------------------------------------}}....| - - - - - -
 -----------.}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}....-------------
]])

local objects = {'[',')'}
local places = { {27,02}, {27,18}, {31,02}, {31,18} }
local monsters = { 'L','N','E','V','M','O','R','T','X','Z' }
shuffle(objects)
shuffle(places)
shuffle(monsters)

des.teleport_region({ region = {64,03,75,20}, region_islev=1, exclude={14,01,56,20}, dir="down" })
des.teleport_region({ region = {01,01,11,20}, region_islev=1, exclude={14,01,75,20}, dir="up" })
des.levregion({ region = {66,05,75,20}, region_islev=1, exclude={11,01,66,20}, type="stair-up" })

des.mazewalk(63,09,"east")
des.mazewalk(09,09,"east")

-- Non-diggable walls
des.non_diggable(selection.area(14,00,56,20))

-- Fountain
des.feature("fountain", 32, 10)

-- Doors
des.door("locked", 15,07)
des.door("locked", 15,13)
des.door("locked", 18,16)
des.door("locked", 18,04)
des.door("closed", 20,06)
des.door("closed", 20,14)
des.door("closed", 28,03)
des.door("closed", 28,17)
des.door("closed", 32,08)
des.door("closed", 32,12)
des.door("closed", 36,04)
des.door("closed", 36,07)
des.door("closed", 38,09)
des.door("closed", 38,13)
des.door("closed", 39,02)
des.door("closed", 40,10)
des.door("closed", 42,02)
des.door("closed", 44,15)
des.door("closed", 44,18)
des.door("closed", 44,11)
des.door("closed", 44,04)
des.door("closed", 48,09)
des.door("closed", 49,16)
des.door("closed", 49,04)
des.door("closed", 51,15)
des.door("closed", 51,12)
des.door("closed", 51,07)
des.door("closed", 53,02)
des.door("closed", 53,18)

-- Drawbridge
des.drawbridge({ dir = "west", state = "closed", x = 57, y = 10 })

-- Minefield
local minefield = selection.area(59,0,62,19)
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
des.trap("trap door",16,07)
des.trap("trap door",16,09)
des.trap("trap door",16,11)
des.trap("trap door",16,13)

-- northern armoury
des.object(objects[1], 17, 02)
des.object(objects[1], 17, 02)
des.object(objects[1], 17, 02)
des.object(objects[1], 17, 02)
des.object(objects[1], 18, 02)
des.object(objects[1], 18, 02)
des.object(objects[1], 18, 02)
des.object(objects[1], 18, 02)
des.object(objects[1], 19, 02)
des.object(objects[1], 19, 02)
des.object(objects[1], 19, 02)
des.object(objects[1], 19, 02)
des.object(objects[1], 20, 02)
des.object(objects[1], 20, 02)
des.object(objects[1], 20, 02)
des.object(objects[1], 20, 02)
-- southern armory
des.object(objects[2], 17, 18)
des.object(objects[2], 17, 18)
des.object(objects[2], 17, 18)
des.object(objects[2], 17, 18)
des.object(objects[2], 18, 18)
des.object(objects[2], 18, 18)
des.object(objects[2], 18, 18)
des.object(objects[2], 18, 18)
des.object(objects[2], 19, 18)
des.object(objects[2], 19, 18)
des.object(objects[2], 19, 18)
des.object(objects[2], 19, 18)
des.object(objects[2], 20, 18)
des.object(objects[2], 20, 18)
des.object(objects[2], 20, 18)
des.object(objects[2], 20, 18)

-- Statue of Grund
des.object({ id = "scimitar", material = "cold iron", spe = 5, x = 29, y = 10 })
des.object({ id = "orcish helm", spe = 5, x = 29, y = 10 })
des.object({ id = "statue", x=29,y=10, buc="uncursed",
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
des.object("chest",19,10)
des.object('/', 18, 10)
des.object('[', 18, 10)
des.object('\"', 18, 10)

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
des.object({ id = "orcish arrow", x = 55, y = 02, material="cold iron", quantity = d(20) })
des.object({ id = "orcish arrow", x = 55, y = 18, material="cold iron", quantity = d(20) })
des.object({ id = "arrow", x = 55, y = 05, quantity = d(20) })
des.object({ id = "arrow", x = 55, y = 15, quantity = d(20) })
des.object({ id = "orcish bow", x = 55, y = 02 })
des.object({ id = "orcish bow", x = 18, y = 18 })
des.object({ id = "bow", x = 55, y = 05 })
des.object({ id = "bow", x = 55, y = 15 })
des.object("wand of fire", 55, 07)
des.object("wand of fire", 55, 13)
des.object("wand of lightning", 55, 09)
des.object("wand of lightning", 55, 11)

-- Dark by default
des.region(selection.area(00,00,75,20), "unlit")

-- Light the front and back of the fort
des.region(selection.area(56,00,62,20), "lit")
des.region(selection.area(12,00,14,20), "lit")

-- Special rooms
des.region({ region={21,03,25,06}, type="barracks", lit=1, filled=1})
des.region({ region={21,14,25,17}, type="barracks", lit=1, filled=1})
des.region({ region={18,09,20,11}, type="throne", lit=1, irregular=1, filled=2 })

-- Entry corridor
des.monster('uruk-hai', 55, 02)
des.monster('uruk-hai', 55, 18)
des.monster('soldier', 55, 05)
des.monster('soldier', 55, 15)
des.monster('uruk-hai', 55, 07)
des.monster('uruk-hai', 55, 13)
des.monster('soldier', 55, 09)
des.monster('soldier', 55, 11)
des.monster('soldier', 54, 05)
des.monster('soldier', 54, 15)
des.monster('soldier', 54, 09)
des.monster('soldier', 54, 11)
des.monster('lieutenant', 54, 10)

-- Caves
des.monster('uruk-hai', 34, 02)
des.monster('uruk-hai', 34, 03)
des.monster('uruk-hai', 34, 04)
des.monster('uruk-hai', 35, 02)
des.monster('uruk-hai', 35, 03)
des.monster('uruk-hai', 35, 04)

des.monster('orc shaman', 40, 02)
des.monster('orc shaman', 41, 02)

des.monster('olog-hai', 45,04)
des.monster('olog-hai', 46,03)

des.monster('soldier', 33, 07)
des.monster('soldier', 34, 07)

des.monster('ogre', 40, 07)
des.monster('ogre', 41, 07)
des.monster('ogre', 40, 08)
des.monster('ogre', 41, 08)

des.monster('hill orc', 44, 09)
des.monster('hill orc', 45, 09)
des.monster('hill orc', 46, 09)
des.monster('hill orc', 44, 10)
des.monster('hill orc', 45, 10)
des.monster('hill orc', 46, 10)

des.monster('uruk-hai', 33, 12)
des.monster('uruk-hai', 34, 12)
des.monster('uruk-hai', 35, 12)
des.monster('uruk-hai', 33, 13)
des.monster('uruk-hai', 34, 13)
des.monster('uruk-hai', 35, 13)

des.monster('orc shaman', 39, 14)
des.monster('orc shaman', 39, 15)

des.monster('mordor orc', 33, 17)
des.monster('mordor orc', 34, 17)
des.monster('mordor orc', 35, 17)
des.monster('mordor orc', 33, 18)
des.monster('mordor orc', 34, 18)
des.monster('mordor orc', 35, 18)

local caves = selection.area(32,02,52,18)
des.monster('olog-hai', caves:rndcoord(1))
des.monster('olog-hai', caves:rndcoord(1))
des.monster('goblin', caves:rndcoord(1))
des.monster('goblin', caves:rndcoord(1))
des.monster('hobgoblin', caves:rndcoord(1))
des.monster('hobgoblin', caves:rndcoord(1))

-- throne room
des.monster('rogue', 18, 10) -- A pretender to the throne!
des.monster(monsters[1], 19, 07)
des.monster(monsters[2], 21, 07)
des.monster(monsters[3], 23, 07)
des.monster(monsters[4], 25, 07)
des.monster(monsters[5], 20, 08)
des.monster(monsters[6], 22, 08)
des.monster(monsters[7], 24, 08)
des.monster(monsters[8], 19, 09)
des.monster(monsters[9], 21, 09)
des.monster(monsters[10], 23, 09)
des.monster(monsters[1], 20, 10)
des.monster(monsters[2], 22, 10)
des.monster(monsters[3], 24, 10)
des.monster(monsters[4], 19, 11)
des.monster(monsters[5], 21, 11)
des.monster(monsters[6], 23, 11)
des.monster(monsters[7], 20, 12)
des.monster(monsters[8], 22, 12)
des.monster(monsters[9], 24, 12)
des.monster(monsters[10], 19, 13)
des.monster(monsters[1], 21, 13)
des.monster(monsters[2], 23, 13)
des.monster(monsters[3], 25, 13)

-- dragons guarding the armouries
des.monster('D', 17, 02)
des.monster('D', 20, 02)
des.monster('D', 17, 18)
des.monster('D', 20, 18)

-- soldiers guarding the possible wand of wishing locations
des.monster('soldier', 28, 02)
des.monster('soldier', 28, 18)
des.monster('soldier', 30, 02)
des.monster('soldier', 30, 18)

-- monsters in the moat
des.monster('giant eel', 57, 02)
des.monster('giant eel', 57, 18)
des.monster('shark', 57, 05)
des.monster('shark', 57, 15)
des.monster('giant eel', 14, 02)
des.monster('giant eel', 14, 18)
des.monster('shark', 14, 05)
des.monster('shark', 14, 15)