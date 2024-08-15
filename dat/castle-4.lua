-- Written for dNetHack by Chris
-- Converted to Lua and modified for mHack by Ratan Varghese

des.level_init({ style="mazegrid", bg ="-" });

des.level_flags("mazelevel", "noteleport", "noflipy")

--[[
#000000000111111111122222222223333333333444444444455555555556666666666777777
#123456789012345678901234567890123456789012345678901234567890123456789012345
--]]
des.map([[
}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}
}-------------------------------------------------------------}
}|.....+...............................................+.....|}
}|.....|-----------------+-----------------------------|.....|}
}|.....|#F..............|.|............................|.....|}
}-------F-.....----------+--+------------------........-------}
}}}}|.|........|..........|...|.....F#|....|..|.........|.|}}}}
...}|.|........|..........|...|.....-F|....|..|.........+.|}...
...}|.|........----------+|...|.......----+-..|.........|.|}...
...}|.+........+..........|.{.+.....\.S..S.+..|.........|.+}...
...}|.|........----------+|...|.......|..-+----.........|.|}...
...}|.|........|..........|...|.....-F|..|....|.........+.|}...
}}}}|.|........|..........|...|.....F#|..|....|.........|.|}}}}
}-------F-.....-------------+-------------+----........-------}
}|.....|#F...............................|.|...........|.....|}
}|.....|----------------------------------+------------|.....|}
}|.....+...............................................+.....|}
}|------------------------------------------------------------}
}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}
]]);

-- Random registers initialisation
local random_objects = {'[',')','*','%'}
shuffle(random_objects)
local random_places = {{03,03},{59,03},{03,15},{59,15}}
shuffle(random_places)
local random_monsters = {'L','N','E','H','M','O','R','T','X','Z'}
shuffle(random_monsters)

des.teleport_region({ region = {01,00,10,20}, region_islev=1, exclude={1,1,61,17}, dir="down" })
des.teleport_region({ region = {69,00,79,20}, region_islev=1, exclude={1,1,61,17}, dir="up" })
des.levregion({ region = {01,00,10,20}, region_islev=1, exclude={0,0,62,16}, type="stair-up" })
-- Doors
des.door("closed",06,09)
des.door("closed",07,16)
des.door("closed",07,02)

des.door("closed",15,09)

des.door("locked",25,03)
des.door("closed",25,05)
des.door("closed",25,08)
des.door("closed",25,10)

des.door("closed",28,05)
des.door("closed",28,13)

des.door("locked",30,09)

des.door("closed",42,08)
des.door("closed",43,09)
des.door("closed",42,10)
des.door("closed",42,13)
des.door("closed",42,15)

des.door("closed",55,16)
des.door("closed",55,02)
des.door("closed",56,11)
des.door("closed",56,07)
des.door("closed",58,09)

-- The drawbridge
des.drawbridge({ dir = "east", state = "closed", x = 03, y = 09 })
-- Storeroom number 1
des.object(random_objects[1], 39, 06)
des.object(random_objects[1], 40, 06)
des.object(random_objects[1], 41, 06)
des.object(random_objects[1], 42, 06)
des.object(random_objects[1], 39, 06)
des.object(random_objects[1], 40, 06)
des.object(random_objects[1], 41, 06)
des.object(random_objects[1], 39, 07)
des.object(random_objects[1], 40, 07)
des.object(random_objects[1], 41, 07)
des.object(random_objects[1], 42, 07)
des.object(random_objects[1], 40, 07)
des.object(random_objects[1], 41, 07)
des.object(random_objects[1], 42, 07)
-- Storeroom number 2
des.object(random_objects[2], 39, 09)
des.object(random_objects[2], 39, 10)
des.object(random_objects[2], 39, 11)
des.object(random_objects[2], 39, 12)
des.object(random_objects[2], 39, 09)
des.object(random_objects[2], 39, 10)
des.object(random_objects[2], 39, 11)
des.object(random_objects[2], 40, 09)
des.object(random_objects[2], 40, 10)
des.object(random_objects[2], 40, 11)
des.object(random_objects[2], 40, 12)
des.object(random_objects[2], 40, 10)
des.object(random_objects[2], 40, 11)
des.object(random_objects[2], 40, 12)
-- Storeroom number 3
des.object(random_objects[3], 44, 06)
des.object(random_objects[3], 44, 07)
des.object(random_objects[3], 44, 08)
des.object(random_objects[3], 44, 09)
des.object(random_objects[3], 44, 06)
des.object(random_objects[3], 44, 07)
des.object(random_objects[3], 44, 08)
des.object(random_objects[3], 45, 06)
des.object(random_objects[3], 45, 07)
des.object(random_objects[3], 45, 08)
des.object(random_objects[3], 45, 09)
des.object(random_objects[3], 45, 07)
des.object(random_objects[3], 45, 08)
des.object(random_objects[3], 45, 09)
-- Storeroom number 4
des.object(random_objects[4], 42, 11)
des.object(random_objects[4], 43, 11)
des.object(random_objects[4], 44, 11)
des.object(random_objects[4], 45, 11)
des.object(random_objects[4], 42, 11)
des.object(random_objects[4], 43, 11)
des.object(random_objects[4], 44, 11)
des.object(random_objects[4], 42, 12)
des.object(random_objects[4], 43, 12)
des.object(random_objects[4], 44, 12)
des.object(random_objects[4], 45, 12)
des.object(random_objects[4], 43, 12)
des.object(random_objects[4], 44, 12)
des.object(random_objects[4], 45, 12)

local loc = random_places[1];
des.object({ id = "chest", trapped = 0, locked = 1, coord = loc ,
             contents = function()
                des.object("wishing");
             end
});
-- Prevent monsters from eating it.  (@'s never eat objects)
des.engraving({ coord = loc, type="burn", text="Elbereth" })
des.object({ id = "scroll of scare monster", coord = loc, buc="cursed" })

-- The treasure of the lord
des.object("chest",37,09)
-- Traps
des.trap("trap door",57,07)
des.trap("trap door",57,08)
des.trap("trap door",57,09)
des.trap("trap door",57,10)
des.trap("trap door",57,11)
-- Soldiers guarding the entry hall
des.monster("soldier", 08,07)
des.monster("soldier", 09,06)
des.monster("soldier", 11,06)
des.monster("soldier", 12,07)
des.monster("soldier", 08,11)
des.monster("soldier", 09,12)
des.monster("soldier", 11,12)
des.monster("soldier", 12,11)
des.monster("lieutenant", 09,09)

des.monster("soldier", 27,07)
des.monster("soldier", 28,11)
des.monster("soldier", 27,07)
des.monster("soldier", 28,11)
des.monster("lieutenant", 27,09)
-- Soldiers guarding the towers
des.monster("soldier", 03,03)
des.monster("soldier", 05,03)
des.monster("soldier", 57,03)
des.monster("soldier", 59,03)
des.monster("soldier", 03,15)
des.monster("soldier", 05,15)
des.monster("soldier", 57,15)
des.monster("soldier", 59,15)
-- The four dragons that are guarding the storerooms
des.monster('D', 44,06)
des.monster('D', 39,09)
des.monster('D', 39,06)
des.monster('D', 42,11)
-- Sea monsters in the moat
des.monster("giant eel", 05,00)
des.monster("giant eel", 07,18)
des.monster("giant eel", 57,00)
des.monster("giant eel", 57,18)
des.monster("shark", 05,18)
des.monster("shark", 05,00)
des.monster("shark", 57,18)
des.monster("shark", 57,00)
-- The throne room and the court monsters 31-37 06-12
-- MONSTER:'L',"death knight",(36,09),asleep,hostile

des.monster(random_monsters[1], 35, 06)
des.monster(random_monsters[2], 31, 06)
des.monster(random_monsters[3], 33, 06)
des.monster(random_monsters[4], 34, 06)
des.monster(random_monsters[5], 28, 07)
des.monster(random_monsters[6], 31, 07)
des.monster(random_monsters[7], 34, 07)
des.monster(random_monsters[8], 35, 07)
des.monster(random_monsters[9], 32, 08)
des.monster(random_monsters[10], 31, 08)
des.monster(random_monsters[1], 33, 08)
des.monster(random_monsters[2], 34, 08)
des.monster(random_monsters[3], 32, 09)
des.monster(random_monsters[4], 31, 09)
des.monster(random_monsters[5], 34, 09)
des.monster(random_monsters[6], 32, 10)
des.monster(random_monsters[7], 31, 10)
des.monster(random_monsters[8], 33, 10)
des.monster(random_monsters[9], 34, 10)
des.monster(random_monsters[10], 32, 11)
des.monster(random_monsters[1], 31, 11)
des.monster(random_monsters[2], 34, 11)
des.monster(random_monsters[3], 35, 11)
des.monster(random_monsters[4], 35, 12)
des.monster(random_monsters[5], 31, 12)
des.monster(random_monsters[6], 33, 12)
des.monster(random_monsters[7], 34, 12)

-- MazeWalks
des.mazewalk(00, 10, "west")
des.mazewalk(62, 08, "east")
-- Non diggable walls
des.non_diggable(selection.area(00,00,62,18))
-- Subrooms:
--   Entire castle area
des.region(selection.area(00,00,62,18), "unlit")

--   Courtyards
des.region(selection.area(00,07,02,11), "lit")
des.region(selection.area(60,07,62,11), "lit")
--   Throne room
des.region({ region={31,06,37,12},lit=1,type="throne", filled=2 })
--   Antechamber
des.region(selection.area(08,07,14,12), "lit")
des.region(selection.area(09,05,14,14), "lit")

des.region(selection.area(15,05,17,05), "lit")
des.region(selection.area(15,14,17,14), "lit")

des.region(selection.area(27,06,29,12), "lit")

des.region(selection.area(47,07,55,12), "lit")
des.region(selection.area(47,05,54,14), "lit")

des.region(selection.area(44,05,46,05), "lit")
des.region(selection.area(44,14,46,14), "lit")
--   Storerooms
des.region(selection.area(39,06,42,07), "lit")
des.region(selection.area(39,09,40,12), "lit")
des.region(selection.area(44,06,45,09), "lit")
des.region(selection.area(42,11,45,12), "lit")
--   Corners
des.region(selection.area(02,02,06,04), "lit")
des.region(selection.area(56,02,60,04), "lit")
des.region(selection.area(02,14,06,16), "lit")
des.region(selection.area(56,14,60,16), "lit")
--   Barracks
des.region({ region={16,06,25,07},lit=1,type="barracks", filled=1 })
des.region({ region={16,11,25,12},lit=1,type="barracks", filled=1 })
