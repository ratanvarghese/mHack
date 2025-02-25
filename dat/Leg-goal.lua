-- Written for mHack by Ratan Varghese
-- Based on https://commons.wikimedia.org/wiki/File:Kastell_Theilenhofen_Iciniacum_(English).png

des.level_init({ style = "solidfill", fg = " " });
des.level_flags("mazelevel", "hardfloor")

--[[
#000000000111111111122222222223333333333444444444455555555556666666666777777
#123456789012345678901234567890123456789012345678901234567890123456789012345
--]]
des.map([[
TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT...TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT0
TTTTTTTTTT--------------------------+++---------------------------TTTTTTTTTT1
TTTTTTTTTT|......................................................|TTTTTTTTTT2
TTTTTTTTTT|..-------------.------.....-------.............------.|TTTTTTTTTT3
TTTTTTTTTT|..|...........|.+..|.|.....|.....|.............+....|.|TTTTTTTTTT4
TTTTTTTTTT|..|.----------|.---|.|.....+..|..|wwwwwwwwwww..-----|.|TTTTTTTTTT5
TTTTTTTTTT|..|.|.|...|...|..|.|.|--++------+|.....----.ww..|.|.|.|TTTTTTTTTT6
TTTTTTTTTT|..|.|.+...+.|.|..|.|.||....+...........|..|..ww.|.|.|.|TTTTTTTTTT7
TTTTTTTTTT|-.-+---...-----..-+-+-|....|------.....-+--...w.-+-+-.|TTTTTTTTTT8
..........+......................+....+.....|............w.......+..........9
..........+......................+....+....w|ww..........w.......+..........0
TTTTTTTTTT|-.-+---...-----..-+-+-|....|------...------...w.-+-+-.|TTTTTTTTTT1
TTTTTTTTTT|..|.|.+...+.|.|..|.|.||....+.......|.|....|...w.|.|.|.|TTTTTTTTTT2
TTTTTTTTTT|..|.|.|...|...|..|.|.|--++--++-++-+|.+....|...w.|.|.|.|TTTTTTTTTT3
TTTTTTTTTT|..|.----------|.-----|.....|..|..|.|.|....|...w---|.|.|TTTTTTTTTT4
TTTTTTTTTT|..|...........|.+....|.....|..|..|.|.------...w+..|.|.|TTTTTTTTTT5
TTTTTTTTTT|..-------------.------.....---------..........w------.|TTTTTTTTTT6
TTTTTTTTTT|..............................................w.......|TTTTTTTTTT7
TTTTTTTTTT--------------------------+++---------------------------TTTTTTTTTT8
TTTTTTTTTTTTTTTTTTTTTTTTTTTTTT.........wTTTTTTTTTTTTTTTTTwTTTTTTTTTTTTTTTTTT9
]]);

des.replace_terrain({ region={00,00, 37,19}, fromterrain="T", toterrain=".", chance=25 })

-- Dungeon Description
des.region(selection.area(00,00,75,19), "lit")
des.region({ region = {34,07,37,12}, lit=1, type = "barracks", filled = 1 })
des.region({ region = {49,12,52,14}, lit=1, type = "barracks", filled = 1 })
des.teleport_region({ region = {66,09,75,10}, dir="down" })

-- Doors
des.door("locked",10,09)
des.door("locked",10,10)
des.door("random",14,08)
des.door("random",14,11)
des.door("random",17,07)
des.door("random",17,12)
des.door("random",21,07)
des.door("random",21,12)
des.door("random",27,04)
des.door("random",27,15)
des.door("random",29,08)
des.door("random",29,11)
des.door("random",31,08)
des.door("random",31,11)
des.door("locked",33,09)
des.door("locked",33,10)
des.door("locked",35,06)
des.door("locked",35,13)
des.door("locked",36,01)
des.door("locked",36,06)
des.door("locked",36,13)
des.door("locked",36,18)
des.door("locked",37,01)
des.door("locked",37,18)
des.door("locked",38,01)
des.door("random",38,05)
des.door("locked",38,07)
des.door("locked",38,09)
des.door("locked",38,10)
des.door("locked",38,12)
des.door("locked",38,18)
des.door("random",39,13)
des.door("random",40,13)
des.door("random",42,13)
des.door("random",43,06)
des.door("random",43,13)
des.door("random",45,13)
des.door("locked",48,13)
des.door("closed",51,08)
des.door("random",58,04)
des.door("random",58,15)
des.door("random",60,08)
des.door("random",60,11)
des.door("random",62,08)
des.door("random",62,11)
des.door("locked",65,09)
des.door("locked",65,10)

-- Stairs
des.stair("up", 74,09)

-- Objects
des.object({ id = "magic marker", x=43,y=09, buc="blessed", spe=100, name="The Stylus of Gracchus" })

des.object()
des.object()
des.object()
des.object()
des.object()
des.object()
des.object()
des.object()
des.object()
des.object()
des.object()
des.object()
des.object()
des.object()
des.object()
des.object()
des.object()

-- Traps
des.trap("spiked pit",04,09)
des.trap("spiked pit",04,10)
des.trap("spiked pit",68,09)
des.trap("spiked pit",68,10)
des.trap("magic")
des.trap("magic")
des.trap("magic")
des.trap("magic")

-- Monsters
des.monster({ id = "Catiline", x=43, y=09, peaceful=0 })
des.monster({ id = "vampire", x=14, y=04 })
des.monster({ id = "vampire", x=14, y=15 })
des.monster({ id = "vampire", x=62, y=04 })
des.monster({ id = "vampire", x=62, y=15 })
des.monster({ id = "werewolf", x=16, y=06 })
des.monster({ id = "werewolf", x=16, y=13 })
des.monster({ id = "werewolf", x=60, y=06 })
des.monster({ id = "werewolf", x=60, y=13 })
des.monster({ id = "captain", x=39, y=09 })
des.monster({ id = "captain", x=39, y=10 })
des.monster({ id = "captain", x=40, y=09 })
des.monster({ id = "captain", x=40, y=10 })
des.monster({ id = "captain", x=41, y=09 })
des.monster({ id = "captain", x=41, y=10 })
des.monster()
des.monster()
des.monster()
des.monster()
des.monster()
des.monster()
des.monster()
des.monster()
des.monster()
des.monster()