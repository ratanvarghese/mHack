-- Based on The Wizards Manse from the Lethe patch

des.level_init({ style="mazegrid", bg ="-" });

des.level_flags("mazelevel", "noteleport", "noflipy")

--[[
#000000000111111111122222222223333333333444444444455555555556666666666777777
#123456789012345678901234567890123456789012345678901234567890123456789012345
--]]
des.map([[
------------------------------------}}}}}}}---------------------------------
|.............T...........T........|}}..}}}...............###S..|      ----|
|TTTT..TTTTT..TTT..TTTTT..TTT..TT..|}}...}.}.  ....  .   .   |..|##### |...|
|......T...T...........T..T.....T..|}...}.}}.  .}}...   ...  |..|#   # |...|
|..TTTTTT..T..TTTTTTT..T........T..|}..}}}}}}..}}}}.....  .. |..+# ### --+-|
|..........T..T.....TTTT..T.....T..|}.}}}}}}}}}}}}}}}}}......|..|  #     # |
|TTTT..TTTTT..TTTT..T..T..TTT..TT..|}.}}}}}}}}}}}}}}}}}}}}...------+-- ### |
|..........T........T.....T........|}.}}}}}}}}}}  }}}}}}}}}....  |...| #---|
|.T..}}..T.------------------------|}}}}}}}            }}}}}...##S...+##|..|
|....}}....|.........|..|.|..|..|..-------------------  }}}}}.   |...| #|..|
|....}}....|.........|+--+--+|+---+|..........|.|....|   }}}}}}  ----- #+..|
|.T..}}..T.|.........|.......|.....|..........+.|....|  }}}}}}}}}}}     |..|
|....}}....|.........|.......|.....|..........|.S....|  }}}}}}}}}}}}    ---|
|....}}....-----+--------+------+---..........-----+--  }}}}}}}}}}}}}}}}}}}|
|.T..}}..T.+.......................+.........\..| |.|    }}}}}}}}}}}}}}}}}}}
|....}}....-----+--------+------+---..........-----+--..     }}}}}}}}}}}}}}}
|....}}....|.........|.......|.....|..........|.S....|.....  }}..}}}}}}}}}}}
|.T..}}..T.|.........|.......|+---+|..........+.|....+................}}}}}}
|..........|.........|.......|..|..|..........|.|....|..................}}}}
--------------------------------------------------------------------------}}
]]);

local objects = {'[',')'}
local places = { {31,09}, {33,09}, {31,18}, {33,18} }
local monsters = { 'L','N','E','V','M','O','R','T','X','Z' }
shuffle(objects)
shuffle(places)
shuffle(monsters)

des.teleport_region({ region = {64,03,75,09}, region_islev=1, exclude={00,00,53,19}, dir="down" })
des.teleport_region({ region = {54,17,69,18}, region_islev=1, exclude={00,00,53,19}, dir="up" })
des.levregion({ region = {64,03,75,09}, region_islev=1, exclude={00,00,50,19}, type="stair-up" })

des.mazewalk(63,09,"east")

-- Non-diggable walls
des.non_diggable(selection.area(00,00,35,20))
des.non_diggable(selection.area(36,09,53,20))

-- Fountain
des.feature("fountain", 29, 04)

-- Doors
des.door("closed", 11,14)
des.door("closed", 16,13)
des.door("closed", 16,15)
des.door("closed", 22,10)
des.door("closed", 25,10)
des.door("closed", 25,13)
des.door("closed", 25,15)
des.door("closed", 28,10)
des.door("closed", 30,10)
des.door("closed", 30,17)
des.door("closed", 32,13)
des.door("closed", 32,15)
des.door("closed", 34,10)
des.door("closed", 34,17)
des.door("closed", 35,14)
des.door("locked", 46,11)
des.door("locked", 46,17)
des.door("locked", 51,13)
des.door("locked", 51,15)
des.door("locked", 53,17)

des.door("random", 64,04)
des.door("random", 67,06)
des.door("random", 69,08)
des.door("random", 72,10)
des.door("random", 73,04)

-- Drawbridge
des.drawbridge({ dir = "west", state = "closed", x = 36, y = 04 })

-- Trap doors
des.trap("trap door",47,10)
des.trap("trap door",47,12)
des.trap("trap door",47,16)
des.trap("trap door",47,18)

-- northern armoury
des.object(objects[1], 49, 10)
des.object(objects[1], 49, 10)
des.object(objects[1], 50, 10)
des.object(objects[1], 50, 10)
des.object(objects[1], 51, 10)
des.object(objects[1], 51, 10)
des.object(objects[1], 52, 10)
des.object(objects[1], 52, 10)
des.object(objects[1], 49, 11)
des.object(objects[1], 49, 11)
des.object(objects[1], 50, 11)
des.object(objects[1], 50, 11)
des.object(objects[1], 51, 11)
des.object(objects[1], 51, 11)
des.object(objects[1], 52, 11)
des.object(objects[1], 52, 11)

-- southern armory
des.object(objects[2], 49, 17)
des.object(objects[2], 49, 17)
des.object(objects[2], 50, 17)
des.object(objects[2], 50, 17)
des.object(objects[2], 51, 17)
des.object(objects[2], 51, 17)
des.object(objects[2], 52, 17)
des.object(objects[2], 52, 17)
des.object(objects[2], 49, 18)
des.object(objects[2], 49, 18)
des.object(objects[2], 50, 18)
des.object(objects[2], 50, 18)
des.object(objects[2], 51, 18)
des.object(objects[2], 51, 18)
des.object(objects[2], 52, 18)
des.object(objects[2], 52, 18)

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

-- The treasure of the lord
des.object("chest",47,14)

-- Treasure in closets
des.object("chest",23,09)
des.object("chest",25,09)
des.object("chest",27,09)

-- Dark by default
des.region(selection.area(00,00,75,20), "unlit")

-- Light the fort
des.region(selection.area(00,00,35,20), "lit")
des.region(selection.area(36,09,53,20), "lit")

-- Special rooms
des.region({ region={12,09,20,12}, type="barracks", lit=1, filled=1})
des.region({ region={12,16,20,18}, type="barracks", lit=1, filled=1})
des.region({ region={36,10,44,18}, type="throne", lit=1, filled=2 })

-- throne room
des.monster('master mind flayer', 45, 14)
des.monster(monsters[1], 36, 10)
des.monster(monsters[2], 38, 10)
des.monster(monsters[3], 40, 10)
des.monster(monsters[4], 42, 10)
des.monster(monsters[5], 44, 10)
des.monster(monsters[6], 37, 11)
des.monster(monsters[7], 39, 11)
des.monster(monsters[8], 41, 11)
des.monster(monsters[9], 43, 11)
des.monster(monsters[10], 36, 12)
des.monster(monsters[1], 38, 12)
des.monster(monsters[2], 40, 12)
des.monster(monsters[3], 42, 12)
des.monster(monsters[4], 44, 12)
des.monster(monsters[5], 37, 13)
des.monster(monsters[6], 39, 13)
des.monster(monsters[7], 41, 13)
des.monster(monsters[8], 43, 13)
des.monster(monsters[9], 36, 14)
des.monster(monsters[10], 38, 14)
des.monster(monsters[1], 40, 14)
des.monster(monsters[2], 42, 14)
des.monster(monsters[3], 44, 14)
des.monster(monsters[4], 37, 15)
des.monster(monsters[5], 39, 15)
des.monster(monsters[6], 41, 15)
des.monster(monsters[7], 43, 15)
des.monster(monsters[8], 36, 16)
des.monster(monsters[9], 38, 16)
des.monster(monsters[10], 40, 16)
des.monster(monsters[1], 42, 16)
des.monster(monsters[2], 44, 16)
des.monster(monsters[3], 37, 17)
des.monster(monsters[4], 39, 17)
des.monster(monsters[5], 41, 17)
des.monster(monsters[6], 43, 17)
des.monster(monsters[7], 36, 18)
des.monster(monsters[8], 38, 18)
des.monster(monsters[9], 40, 18)
des.monster(monsters[10], 42, 18)
des.monster(monsters[1], 44, 18)

-- dragons guarding the armouries
des.monster('D', 49, 12)
des.monster('D', 52, 12)
des.monster('D', 49, 16)
des.monster('D', 52, 16)

-- soldiers guarding the possible wand of wishing locations
des.monster('soldier', 30, 09)
des.monster('soldier', 30, 18)
des.monster('soldier', 34, 09)
des.monster('soldier', 34, 18)

-- soldiers guarding closets
des.monster("soldier",23,11)
des.monster("soldier",25,11)
des.monster("soldier",27,11)

-- garden
des.monster('a',03,15)
des.monster('a',04,15)
des.monster('a',03,16)
des.monster('a',04,16)
des.monster('u',06,03)
des.monster('u',18,07)
des.monster('u',30,02)
des.monster('u',26,07)
des.monster('C',10,13)
des.monster('C',10,15)

des.monster('soldier',33,01)
des.monster('soldier',33,02)
des.monster('soldier',33,03)
des.monster('lieutenant',33,04)
des.monster('soldier',33,04)
des.monster('soldier',33,06)
des.monster('soldier',33,07)

des.monster('Grey-elf',02,09)
des.monster('Grey-elf',09,09)
des.monster('Green-elf',02,12)
des.monster('Green-elf',09,12)
des.monster('elf-noble',02,15)
des.monster('elf-noble',09,15)
des.monster('elven monarch',02,18)
des.monster('elven monarch',09,18)


-- monsters in the moat
des.monster('giant eel', 36, 00)
des.monster('giant eel', 36, 01)
des.monster('shark', 36, 02)
des.monster('shark', 36, 03)
des.monster('giant eel', 74, 14)
des.monster('giant eel', 74, 15)
des.monster('shark', 74, 16)
des.monster('shark', 74, 17)