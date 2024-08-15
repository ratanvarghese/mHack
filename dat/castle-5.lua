-- Written for dNetHack by Chris
-- Converted to Lua and modified for mHack by Ratan Varghese
des.level_init({ style="mazegrid", bg ="-" });

des.level_flags("mazelevel", "noteleport", "noflipy")
--GEOMETRY:center,center
des.map([[
......}}}}}}}}}}}}}}}}}}}}}}}}..................}}}}}}}}..}}...
....}}}}}----}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}...----}}.
..|}}}}}}|..|-------------------------------------------|..|}}.
..|}}}}}}|..+...........................................+..|.}}
..|}}}}}}|..|---------------+---------------------------|..|.}}
....}}}}}|..|.......|....|.....F..........|......|......|..|.}}
..|.}}}}}|..|}}}}...|....+.....+..........|....-S-S-....|..|.}}
..|..}}}}----}}}}}}}|....F.....|----------|....|...|....|---}}.
..|...}}}}}}}}}}}}}}|-F-F|............|-|-|------S------|.|}}}.
..|.......}}}}}}}}}}}-#-#F............|#|#|...............+.##.
..|........--.----}}}----|----+------+-F-F--S------S----|.|.}}.
.------.....|....|-}}}}}}|.......|............|..S..S...|---}}.
.|....|--+--|....+.#####}|...{...|..........\.|..--|-...|..|.}}
.|....+...|......|-}}}}}}|.......|..........|-|....|....|..|.}}
.|....|----.|....|}}}}}}}|-------|..........|......|....|..|.}}
.|....+.....|-----}}}}}}.|.......|-----+----------------|..|}}.
.------}}}}}}}}}}}}}}}...|.......+......................+..|}}.
...}}}}}}}}}}}}}}}}}}....|----------------------------------}}.
}}}}}}}}}}}}}}}}}}}}.......................}}}}}}}}}}}}}}}}}}..
]]);

-- Random registers initialisation
local random_objects = {'[',')','*','%'}
shuffle(random_objects)
local random_places = {{10,06},{58,06},{58,12},{26,15}}
shuffle(random_places)
local random_monsters = {'L','N','E','H','M','O','R','T','X','Z'}
shuffle(random_monsters)

des.teleport_region({ region = {01,00,10,20}, region_islev=1, exclude={10,02,59,17}, dir="down" })
des.teleport_region({ region = {69,00,79,20}, region_islev=1, exclude={10,02,59,17}, dir="up" })
des.levregion({ region = {01,00,10,20}, region_islev=1, exclude={0,0,62,16}, type="stair-up" })
-- Doors
des.door("closed",06,13)
des.door("closed",09,12)
des.door("locked",12,03)
des.door("locked",17,12)
des.door("locked",25,06)
des.door("locked",28,04)
des.door("locked",30,10)
des.door("closed",31,06)
des.door("closed",33,16)
des.door("closed",37,10)
des.door("closed",39,15)
des.door("closed",56,03)
des.door("closed",56,16)
des.door("closed",58,09)
-- The drawbridge
des.drawbridge({ dir = "east", state = "closed", x = 24, y = 12 })
-- Storeroom number 1
des.object(random_objects[1], 43, 05)
des.object(random_objects[1], 44, 05)
des.object(random_objects[1], 45, 05)
des.object(random_objects[1], 46, 05)
des.object(random_objects[1], 47, 05)
des.object(random_objects[1], 48, 05)
des.object(random_objects[1], 43, 06)
des.object(random_objects[1], 44, 06)
des.object(random_objects[1], 45, 06)
des.object(random_objects[1], 46, 06)
des.object(random_objects[1], 43, 07)
des.object(random_objects[1], 44, 07)
des.object(random_objects[1], 45, 07)
des.object(random_objects[1], 46, 07)
-- Storeroom number 2
des.object(random_objects[2], 50, 05)
des.object(random_objects[2], 51, 05)
des.object(random_objects[2], 52, 05)
des.object(random_objects[2], 53, 05)
des.object(random_objects[2], 54, 05)
des.object(random_objects[2], 55, 05)
des.object(random_objects[2], 52, 06)
des.object(random_objects[2], 53, 06)
des.object(random_objects[2], 54, 06)
des.object(random_objects[2], 55, 06)
des.object(random_objects[2], 52, 07)
des.object(random_objects[2], 53, 07)
des.object(random_objects[2], 54, 07)
des.object(random_objects[2], 55, 07)
-- Storeroom number 3
des.object(random_objects[3], 47, 11)
des.object(random_objects[3], 48, 11)
des.object(random_objects[3], 47, 12)
des.object(random_objects[3], 48, 12)
des.object(random_objects[3], 47, 13)
des.object(random_objects[3], 48, 13)
des.object(random_objects[3], 49, 13)
des.object(random_objects[3], 50, 13)
des.object(random_objects[3], 45, 14)
des.object(random_objects[3], 46, 14)
des.object(random_objects[3], 47, 14)
des.object(random_objects[3], 48, 14)
des.object(random_objects[3], 49, 14)
des.object(random_objects[3], 50, 14)
-- Storeroom number 4
des.object(random_objects[4], 53, 11)
des.object(random_objects[4], 54, 11)
des.object(random_objects[4], 55, 11)
des.object(random_objects[4], 53, 12)
des.object(random_objects[4], 54, 12)
des.object(random_objects[4], 55, 12)
des.object(random_objects[4], 52, 13)
des.object(random_objects[4], 53, 13)
des.object(random_objects[4], 54, 13)
des.object(random_objects[4], 55, 13)
des.object(random_objects[4], 52, 14)
des.object(random_objects[4], 53, 14)
des.object(random_objects[4], 54, 14)
des.object(random_objects[4], 55, 14)

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
des.object("chest",45,12)
-- Traps
des.trap("trap door",46,09)
des.trap("trap door",48,09)
des.trap("trap door",50,09)
des.trap("trap door",52,09)
des.trap("trap door",55,09)
-- Soldiers guarding the entry hall
des.monster("soldier", 13,10)
des.monster("soldier", 13,14)
des.monster("soldier", 14,13)
des.monster("soldier", 29,11)
des.monster("soldier", 29,13)
des.monster("soldier", 26,11)
des.monster("soldier", 26,13)
des.monster("soldier", 26,12)
des.monster("lieutenant", 28,12)
-- Soldiers guarding the towers
des.monster("soldier", 10,02)
des.monster("soldier", 11,06)
des.monster("soldier", 57,04)
des.monster("soldier", 58,05)
des.monster("soldier", 27,16)
des.monster("soldier", 28,15)
des.monster("soldier", 57,14)
des.monster("soldier", 58,13)
-- The four dragons that are guarding the storerooms
des.monster('D', 48,07)
des.monster('D', 50,07)
des.monster('D', 50,11)
des.monster('D', 51,11)
-- Sea monsters in the moat
des.monster("giant eel", 13,08)
des.monster("giant eel", 06,03)
des.monster("giant eel", 21,15)
des.monster("giant eel", 13,17)
des.monster("shark", 10,00)
des.monster("shark", 10,18)
des.monster("shark", 51,00)
des.monster("shark", 57,18)
-- The throne room and the court monsters
-- MONSTER:'L',"master lich",(05,18),asleep,hostile

des.monster(random_monsters[1], 34, 11)
des.monster(random_monsters[2], 36, 11)
des.monster(random_monsters[3], 38, 11)
des.monster(random_monsters[4], 40, 11)
des.monster(random_monsters[5], 42, 11)
des.monster(random_monsters[6], 43, 11)
des.monster(random_monsters[3], 44, 11)
des.monster(random_monsters[2], 45, 11)
des.monster(random_monsters[7], 35, 12)
des.monster(random_monsters[8], 37, 12)
des.monster(random_monsters[9], 39, 12)
des.monster(random_monsters[6], 40, 12)
des.monster(random_monsters[10], 41, 12)
des.monster(random_monsters[1], 34, 13)
des.monster(random_monsters[2], 36, 13)
des.monster(random_monsters[3], 38, 13)
des.monster(random_monsters[4], 40, 13)
des.monster(random_monsters[5], 42, 13)
des.monster(random_monsters[7], 35, 14)
des.monster(random_monsters[8], 37, 14)
des.monster(random_monsters[9], 39, 14)
des.monster(random_monsters[10], 41, 14)
des.monster(random_monsters[1], 43, 14)
des.monster(random_monsters[4], 42, 14)
des.monster(random_monsters[5], 40, 14)
des.monster(random_monsters[6], 38, 14)
des.monster(random_monsters[7], 34, 14)

-- MazeWalks
des.mazewalk(00, 06, "west")
des.mazewalk(62, 08, "east")
-- Non diggable walls
des.non_diggable(selection.area(00,00,62,18))
-- Subrooms:
--   Entire castle area
des.region(selection.area(00,00,62,18), "unlit")
--   Courtyards
des.region(selection.area(05,00,05,09), "lit")

des.region(selection.area(26,11,32,13), "lit")
--   Throne room
des.region({ region={34,11,45,14},lit=1,type="throne", filled=2 })
--   Antechambers
des.region(selection.area(25,05,31,10), "lit")
des.region(selection.area(25,10,33,14), "lit")
des.region(selection.area(25,08,41,09), "lit")
--   Storerooms
des.region(selection.area(43,05,48,05), "lit")
des.region(selection.area(43,06,46,07), "lit")

des.region(selection.area(50,05,55,05), "lit")
des.region(selection.area(52,06,55,07), "lit")

des.region(selection.area(53,11,55,14), "lit")
des.region(selection.area(52,13,52,14), "lit")

des.region(selection.area(47,11,48,14), "lit")
des.region(selection.area(49,13,50,14), "lit")
des.region(selection.area(45,14,46,14), "lit")

--   Corners
des.region(selection.area(16,15,32,16), "lit")
des.region(selection.area(57,12,58,16), "lit")
des.region(selection.area(10,02,11,06), "lit")
des.region(selection.area(57,02,58,06), "lit")
--   Barracks
des.region({ region={21,05,25,07},lit=1,type="barracks", filled=1 })
des.region({ region={31,05,41,06},lit=1,type="barracks", filled=1 })
--############################################################
--   Hallways
des.region(selection.area(13,03,55,03), "unlit")
des.region(selection.area(34,16,55,16), "unlit")
des.region(selection.area(43,09,57,09), "unlit")
des.region(selection.area(57,08,57,10), "unlit")
