-- Written for dNetHack by Chris
-- Converted to Lua and modified for mHack by Ratan Varghese
des.level_init({ style="mazegrid", bg ="-" });

des.level_flags("mazelevel", "noteleport", "noflipy")
--[[
#000000000111111111122222222223333333333444444444455555555556666666666777777
#123456789012345678901234567890123456789012345678901234567890123456789012345
--]]
des.map([[
-...}}}}}}}....}}}}}}}}}..............}}}}}}}}}}}}}}}}}}}}}}}}}
...}}----}}}...}|------}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}..|------}
..}}--..--}}}}}}|.....|--------------------------------|.....|}
.}}--....--}----|.....+................................+.....|}
}}--......--|#|#|----------------+----------------------------}
}--........--F-F-}}}}}}}}}}|........F#|.......S.S.......|}}}}}}
}-....{.....+..............+........-F|.......|.|.......|}.....
}-..........----------------..........---------S--------|}.....
}--........--}}}|..........+........\.S.................+......
}}--......--}}.}|..........|..........---------S--------|}.....
.}}--......|}..}|..........|........-F|.......|.|.......|}.....
..}}--..---|}..}|..........|........F#|.......S.S.......|}}}}}}
...}}----}}}}..}|----------------+----------------------------}
....}}}}}}.....}}}}|.....+.............................+.....|}
.............}}}}}}|.....|-----------------------------|.....|}
...}}}}}}}}}}}}}}}}------|}}}}}}}}}}}}}}}}}}}}}}}}}}}}}|------}
.}}}}}}}}}}}}}....}}}}}}}}}...........................}}}}}}}}}
]]);
-- Random registers initialisation
local random_objects = {'[',')','*','%'}
shuffle(random_objects)
local random_places = {{17,02},{60,02},{20,14},{60,14}}
shuffle(random_places)
local random_monsters = {'L','N','E','H','M','O','R','T','X','Z'}
shuffle(random_monsters)

des.teleport_region({ region = {01,00,10,20}, region_islev=1, exclude={1,1,61,15}, dir="down" })
des.teleport_region({ region = {69,00,79,20}, region_islev=1, exclude={1,1,61,15}, dir="up" })
des.levregion({ region = {01,00,10,20}, region_islev=1, exclude={0,0,62,16}, type="stair-up" })
-- Doors
des.door("locked",12,06)
des.door("locked",22,03)
des.door("locked",25,13)
des.door("locked",27,06)
des.door("closed",27,08)
des.door("closed",33,04)
des.door("closed",33,12)
des.door("locked",55,03)
des.door("locked",55,13)
des.door("locked",56,08)
-- The drawbridge
des.drawbridge({ dir = "west", state = "closed", x = 12, y = 10 })
-- Storeroom number 1
des.object(random_objects[1], 39, 05)
des.object(random_objects[1], 40, 05)
des.object(random_objects[1], 41, 05)
des.object(random_objects[1], 42, 05)
des.object(random_objects[1], 43, 05)
des.object(random_objects[1], 44, 05)
des.object(random_objects[1], 45, 05)
des.object(random_objects[1], 39, 06)
des.object(random_objects[1], 40, 06)
des.object(random_objects[1], 41, 06)
des.object(random_objects[1], 42, 06)
des.object(random_objects[1], 43, 06)
des.object(random_objects[1], 44, 06)
des.object(random_objects[1], 45, 06)
-- Storeroom number 2
des.object(random_objects[2], 49, 05)
des.object(random_objects[2], 50, 05)
des.object(random_objects[2], 51, 05)
des.object(random_objects[2], 52, 05)
des.object(random_objects[2], 53, 05)
des.object(random_objects[2], 54, 05)
des.object(random_objects[2], 55, 05)
des.object(random_objects[2], 49, 06)
des.object(random_objects[2], 50, 06)
des.object(random_objects[2], 51, 06)
des.object(random_objects[2], 52, 06)
des.object(random_objects[2], 53, 06)
des.object(random_objects[2], 54, 06)
des.object(random_objects[2], 55, 06)
-- Storeroom number 3
des.object(random_objects[3], 39, 10)
des.object(random_objects[3], 40, 10)
des.object(random_objects[3], 41, 10)
des.object(random_objects[3], 42, 10)
des.object(random_objects[3], 43, 10)
des.object(random_objects[3], 44, 10)
des.object(random_objects[3], 45, 10)
des.object(random_objects[3], 39, 11)
des.object(random_objects[3], 40, 11)
des.object(random_objects[3], 41, 11)
des.object(random_objects[3], 42, 11)
des.object(random_objects[3], 43, 11)
des.object(random_objects[3], 44, 11)
des.object(random_objects[3], 45, 11)
-- Storeroom number 4
des.object(random_objects[4], 49, 10)
des.object(random_objects[4], 50, 10)
des.object(random_objects[4], 51, 10)
des.object(random_objects[4], 52, 10)
des.object(random_objects[4], 53, 10)
des.object(random_objects[4], 54, 10)
des.object(random_objects[4], 55, 10)
des.object(random_objects[4], 49, 11)
des.object(random_objects[4], 50, 11)
des.object(random_objects[4], 51, 11)
des.object(random_objects[4], 52, 11)
des.object(random_objects[4], 53, 11)
des.object(random_objects[4], 54, 11)
des.object(random_objects[4], 55, 11)
-- THE RING OF THREE WISHES in 1 of the 4 towers
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
des.object("chest",37,08)
-- Traps
des.trap("trap door",40,08)
des.trap("trap door",44,08)
des.trap("trap door",48,08)
des.trap("trap door",52,08)
des.trap("trap door",55,08)
-- Soldiers guarding the entry hall
des.monster("soldier", 05,03)
des.monster("soldier", 09,05)
des.monster("soldier", 08,06)
des.monster("soldier", 02,06)
des.monster("soldier", 05,10)
des.monster("soldier", 07,11)
des.monster("soldier", 06,11)
des.monster("soldier", 08,08)
des.monster("lieutenant", 04,04)
-- Soldiers guarding the towers
des.monster("soldier", 19,02)
des.monster("soldier", 21,02)
des.monster("soldier", 57,02)
des.monster("soldier", 59,02)
des.monster("soldier", 22,14)
des.monster("soldier", 24,14)
des.monster("soldier", 57,14)
des.monster("soldier", 59,14)
-- The four dragons that are guarding the storerooms
des.monster('D', 47,05)
des.monster('D', 47,06)
des.monster('D', 47,10)
des.monster('D', 47,11)
-- Sea monsters in the moat
des.monster("giant eel", 00,04)
des.monster("giant eel", 00,09)
des.monster("giant eel", 57,00)
des.monster("giant eel", 57,16)
des.monster("shark", 15,10)
des.monster("shark", 05,16)
des.monster("shark", 58,00)
des.monster("shark", 58,16)
-- The throne room and the court monsters
des.monster(random_monsters[1], 28, 05)
des.monster(random_monsters[2], 30, 05)
des.monster(random_monsters[3], 33, 05)
des.monster(random_monsters[4], 34, 05)
des.monster(random_monsters[5], 28, 06)
des.monster(random_monsters[6], 31, 06)
des.monster(random_monsters[7], 34, 06)
des.monster(random_monsters[8], 35, 06)
des.monster(random_monsters[9], 28, 07)
des.monster(random_monsters[10], 30, 07)
des.monster(random_monsters[1], 33, 07)
des.monster(random_monsters[2], 34, 07)
des.monster(random_monsters[3], 28, 08)
des.monster(random_monsters[4], 31, 08)
des.monster(random_monsters[5], 34, 08)
des.monster(random_monsters[6], 28, 09)
des.monster(random_monsters[7], 30, 09)
des.monster(random_monsters[8], 33, 09)
des.monster(random_monsters[9], 34, 09)
des.monster(random_monsters[10], 28, 10)
des.monster(random_monsters[1], 31, 10)
des.monster(random_monsters[2], 34, 10)
des.monster(random_monsters[3], 35, 10)
des.monster(random_monsters[4], 28, 11)
des.monster(random_monsters[5], 30, 11)
des.monster(random_monsters[6], 33, 11)
des.monster(random_monsters[7], 34, 11)

-- MazeWalks
des.mazewalk(00, 14, "west")
des.mazewalk(62, 06, "east")
-- Non diggable walls
des.non_diggable(selection.area(00,00,62,16))
-- Subrooms:
--   Entire castle area
des.region(selection.area(00,00,62,16), "unlit")
--   Courtyards
des.region(selection.area(57,05,62,11), "lit")
--   Throne room
des.region({ region={28,05,37,11},lit=1,type="throne", filled=2 })
--   Antechamber
des.region(selection.area(07,07,07,07), "lit")
--   Storerooms
des.region(selection.area(39,05,45,06), "lit")
des.region(selection.area(39,10,45,11), "lit")
des.region(selection.area(49,05,55,06), "lit")
des.region(selection.area(49,10,55,11), "lit")
--   Corners
des.region(selection.area(17,02,21,03), "lit")
des.region(selection.area(56,02,60,03), "lit")
des.region(selection.area(20,13,24,14), "lit")
des.region(selection.area(56,13,60,14), "lit")
--   Barracks
des.region({ region={17,08,26,11},lit=1,type="barracks", filled=1 })
--   Hallways
des.region(selection.area(23,03,54,03), "unlit")
des.region(selection.area(26,13,54,13), "unlit")
des.region(selection.area(13,06,26,06), "unlit")
des.region(selection.area(39,08,55,08), "unlit")
--   Storeroom alcoves
des.region(selection.area(47,05,47,06), "unlit")
des.region(selection.area(47,10,47,11), "unlit")
--	Bloody Hallway hack/patch
des.region(selection.area(06,06,12,06), "lit")
