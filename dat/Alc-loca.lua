-- Written for mHack by Ratan Varghese

des.level_init({ style = "solidfill", fg = " " });
des.level_flags("mazelevel")

--[[
#000000000111111111122222222223333333333444444444455555555556666666666777777
#123456789012345678901234567890123456789012345678901234567890123456789012345
--]]
des.map([[
............................................................................0
....................-----------------------------------------...............1
....................|......|........|......|...|.....|......|...............2
....................|......|........|......|...+.....+......|...............3
....................|......|---++---|......|...|.....|......|...............4
....................|-+-----........----+-------.....-------|...............5
....................|........-----..........................|...............6
....................+........|...|------S--------------.....+...............7
....................|....-----...|........|........S..|.....|...............8
....................|....|.......|........|---------..|.....|...............9
....................|....|.......S........S...........|.....|...............0
....................|....|.......|........|---------..|.....|...............1
....................|....-----...|........|........S..|.....|...............2
....................+........|...|------S--------------.....+...............3
....................|........-----..........................|...............4
....................|-+-----........----+-------.....-------|...............5
....................|......|---++---|......|...|.....|......|...............6
....................|......|........|......|...+.....+......|...............7
....................|......|........|......|...|.....|......|...............8
....................-----------------------------------------...............9
............................................................................0
]]);

-- Dungeon Description
des.region(selection.area(00,00,75,20), "lit")

des.replace_terrain({ region={01,01, 18,19}, fromterrain="T", toterrain=".", chance=50 })
des.replace_terrain({ region={62,01, 74,19}, fromterrain="T", toterrain=".", chance=50 })

-- Stairs
des.stair("up", 00,18)
local stairlocs = { {43,8}, {43,12} }
shuffle(stairlocs)
des.stair("down", stairlocs[1])

-- Doors
des.door("closed", 20,07)
des.door("closed", 20,13)
des.door("open", 22,05)
des.door("open", 22,15)
des.door("open", 31,04)
des.door("open", 31,06)
des.door("open", 32,04)
des.door("open", 32,06)
des.door("open", 40,05)
des.door("open", 40,15)
des.door("open", 47,03)
des.door("open", 47,17)
des.door("open", 53,03)
des.door("open", 53,17)
des.door("closed", 60,07)
des.door("closed", 60,13)

-- Rooms
if nh.rn2(3) == 0 then
	des.region({ region={21,02, 26,04}, type="health food shop", filled=1})
end
if nh.rn2(3) == 0 then
	des.region({ region={21,16, 26,18}, type="health food shop", filled=1})
end
if nh.rn2(3) == 0 then
	des.region({ region={37,02, 42,04}, type="potion shop", filled=1})
end
if nh.rn2(3) == 0 then
	des.region({ region={37,16, 42,18}, type="potion shop", filled=1})
end
if nh.rn2(3) == 0 then
	des.region({ region={54,02, 59,04}, type="food shop", filled=1})
end
if nh.rn2(3) == 0 then
	des.region({ region={54,16, 59,18}, type="food shop", filled=1})
end

des.monster("shocking sphere")
des.monster("shocking sphere")
des.monster("shocking sphere")
des.monster("energy vortex")
des.monster("energy vortex")
des.monster("energy vortex")
des.monster("energy vortex")
des.monster("energy vortex")
des.monster("e")
des.monster("e")
des.monster("e")
des.monster("v")
des.monster("v")
des.monster("v")
des.monster("E")
des.monster("E")
des.monster("E")
des.monster()
des.monster()
des.monster()

-- Items
des.object("(", 26, 09)
des.object("(", 26, 10)
des.object("(", 26, 11)
des.object("+", 28, 02)
des.object("+", 28, 18)
des.object("+", 29, 02)
des.object("+", 29, 18)
des.object("+", 30, 02)
des.object("+", 30, 18)
des.object("+", 31, 02)
des.object("+", 31, 18)
des.object("+", 32, 02)
des.object("+", 32, 18)
des.object("+", 33, 02)
des.object("+", 33, 18)
des.object("+", 34, 02)
des.object("+", 34, 18)
des.object("+", 35, 02)
des.object("+", 35, 18)
des.object("?", 44, 02)
des.object("scroll of alchemy", 44, 03)
des.object("?", 44, 04)
des.object("?", 44, 16)
des.object("scroll of alchemy", 44, 17)
des.object("?", 44, 18)
des.object("?", 45, 02)
des.object("?", 45, 03)
des.object("?", 45, 04)
des.object("?", 45, 16)
des.object("?", 45, 17)
des.object("?", 45, 18)
des.object("?", 46, 02)
des.object("scroll of alchemy", 46, 03)
des.object("?", 46, 04)
des.object("?", 46, 16)
des.object("scroll of alchemy", 46, 17)
des.object("?", 46, 18)


-- Traps
local leftlocs = selection.area(01,01,18,19)
des.trap("pit", leftlocs:rndcoord(1))
des.trap("pit", leftlocs:rndcoord(1))
des.trap("spiked pit", leftlocs:rndcoord(1))
des.trap("spiked pit", leftlocs:rndcoord(1))
des.trap("dart", leftlocs:rndcoord(1))
des.trap("dart", leftlocs:rndcoord(1))
local centerlocs = selection.area(34,08,41,12)
des.trap("anti magic", centerlocs:rndcoord(1))
des.trap("anti magic", centerlocs:rndcoord(1))
des.trap("magic", centerlocs:rndcoord(1))
des.trap("magic", centerlocs:rndcoord(1))
des.trap("anti magic",49,10)
des.trap("sleep gas",49,10)
des.trap("magic",50,10)
des.trap("polymorph",51,10)