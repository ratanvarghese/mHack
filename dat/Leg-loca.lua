-- Written for mHack by Ratan Varghese

des.level_init({ style = "solidfill", fg = " " });
des.level_flags("mazelevel", "hardfloor")

--[[
#000000000111111111122222222223333333333444444444455555555556666666666777777
#123456789012345678901234567890123456789012345678901234567890123456789012345
--]]
des.map([[
TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT...TTTTTTTTTTTTTT..---------------
TTT.........TTTTTTTTTTTTT.TTTTTTTTTTTTTTTTT...TTTTTTTTTTTT...|......|......|
TTT.-------.TTTTTTTTTTT....TTTTTTTT....TTTTT...TTTTTTTTTT....|......|......|
TTT.|.....+......TTTTT..TT..TTTTTTT....TTTTTT...TTTTTTTT.....--+-----+------
TTT.|.....|......TTTTT.TTTT.TTTTTTT....TTTTTTT...TTTTTTTT.............|....|
TTT.-------.TTT..TTTTT..TT..TTTTTTT....TTTTTTTT...TTTTTTTT............|....|
TTT.........TTT..TTTTTT....TTTTTT........TTTTTTT...TTTTTTTT...........+....|
TTTTTTTTTTTTTTT..TTTTTTT.TTTTTTTT........TTTTTTTT...TTTTTTTT..........------
............................................................................
............................................................................
............................................................................
............................................................................
TTTTT..TTTTTTTTTTTTTTTTTTTTTTTTTT........TTTTTTTTTTTT...TTTTwwwwwwwwwwwwwwww
TTTTT..TTT-----TTTTTTTTTTTTTTTTTT........TTTTTTTTTTTTT...TTTwPPPPPPPPPPPPPPP
TTTT..TTT.|...|.TTTTT.........TTTTT....TTTTTTTTTTTTTTTT...TTwwPPPPPPPPPPPPPP
TTTT..TTT.+...|.TTTTT.........TTTTT....TTTTTTTTTTTTTTTTT...TTwwPPPPPPPPPPPPP
TTTT..TTT.-----TTTTTT..................TTTTTTTTTTTTTTTTTT...TTwwwPPPPPPPPPPP
TTTTT.......TTTTTTTTT.........TTTTT....TTTTTTTTTTTTTTTTTTT...TTTwPPPPPPPPPPP
TTTTTT..TTTTTTTTTTTTT.........TTTTT....TTTTTTTTTTTTTTTTTTTT...TTwPPPPPPPPPPP
TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT....TTTTTTTTTTTTTTTTTTTTT...TwPPPPPPPPPPP
]]);

des.replace_terrain({ region={00,00, 37,19}, fromterrain="T", toterrain=".", chance=50 })

-- Dungeon Description
des.region(selection.area(00,00,75,19), "lit")
-- Doors
des.door("random",10,03)
des.door("random",10,15)
des.door("random",63,03)
des.door("random",69,03)
des.door("random",70,06)
-- Stairs
des.stair("up", 00,10)
des.stair("down", 74,01)
-- Fountains
des.feature("fountain", 36,03)
des.feature("fountain", 36,04)
-- Objects
des.object({ x = 05, y = 04 })
des.object({ x = 05, y = 04 })
des.object({ x = 05, y = 04 })
des.object({ x = 13, y = 14 })
des.object({ x = 13, y = 14 })
des.object({ x = 13, y = 14 })
des.object({ x = 13, y = 14 })
des.object({ x = 62, y = 01 })
des.object({ x = 74, y = 06 })
des.object({ x = 74, y = 06 })
des.object({ x = 74, y = 06 })

local yardlocs = selection.area(21,14,29,18)
des.object({ coord = yardlocs:rndcoord(1) })
des.object({ coord = yardlocs:rndcoord(1) })
des.object({ coord = yardlocs:rndcoord(1) })
des.object({ coord = yardlocs:rndcoord(1) })

local waterlocs = selection.area(65,14,74,18)
des.object({ coord = waterlocs:rndcoord(1) })
des.object({ coord = waterlocs:rndcoord(1) })

-- Random traps
des.trap("spiked pit",yardlocs:rndcoord(1))
des.trap("spiked pit",yardlocs:rndcoord(1))
des.trap("spiked pit",yardlocs:rndcoord(1))
des.trap("spiked pit",yardlocs:rndcoord(1))
des.trap("magic")
des.trap("magic")
des.trap("magic")
des.trap("magic")

-- Monsters
des.monster("soldier")
des.monster("soldier")
des.monster("soldier")
des.monster("soldier")
des.monster("soldier")
des.monster("soldier")
des.monster("soldier")
des.monster("soldier")
des.monster("soldier")
des.monster("soldier")
des.monster("soldier")
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