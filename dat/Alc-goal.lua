-- Written for mHack by Ratan Varghese

des.level_init({ style = "solidfill", fg = " " });
des.level_flags("mazelevel")

--[[
#000000000111111111122222222223333333333444444444455555555556666666666777777
#123456789012345678901234567890123456789012345678901234567890123456789012345
--]]
des.map([[
-----------------------------                                               0
|.........PPPPPPPPP.........|----        ----  ------     ------    ------- 1
|.......PPP.......PPP.......S...|        |..----....|     |....|    |.....| 2
|......PP...........PP......|...| ---- ---........---     |....+####+.....| 3
|.....PP.............PP.....|--.| |..| |.....------       |....|    |.....| 4
|.....P...............P.....| |.| |..---.....|            |....|    ------- 5
|....PP...............PP....| |.| |..........| -----      -+----            6
|....P.................P....| |.| ---........| |...--      #                7
|....P.......PPP......PPP...| |.|   |........---....|      # -----------    8
|....P......PPPPP....PPPPP..| |.--  |...............---    ##+.........|    9
|....P......PPPPP....PPPPP..| |..|  ---...............|      |.........+### 0
|....P......PPPPP....PPPPP..| --.--   |....---........|      |.........|  # 1
|....P.......PPP......PPP...|  |..|  --....| |........#######+.........|  # 2
|....P.................P....|  |..| --...--- |......---      -----------  # 3
|....PP...............PP....| --..| |....|   ---...--                     # 4
|.....P...............P.....| |...---...--     |...|   -----------        # 5
|.....PP.............PP.....| |.........|  --- -----   |.........|   -----# 6
|......PP...........PP......| |...----..----.|         |.........+###+...+# 7
|.......PPP.......PPP.......| |..--  |.......|         -----------   |...|  8
|.........PPPPPPPPP.........| ----   ---------                       -----  9
-----------------------------                                               0
]]);

-- Dungeon Description
des.region(selection.area(00,00,75,20), "unlit")

-- Stairs
local stairlocs = { {60,16}, {61,03}, {71,03}, {72,18} }
shuffle(stairlocs)
des.stair("up", stairlocs[1])

-- Doors
des.door("random", 59,06)
des.door("random", 61,09)
des.door("random", 61,12)
des.door("random", 63,03)
des.door("random", 65,17)
des.door("random", 68,03)
des.door("random", 69,17)
des.door("random", 71,10)
des.door("random", 73,17)

-- Quest nemesis and artifact
des.object({ id = "amethyst", coord = {14, 14}, buc="blessed", name="The Stone of Philosophers" })
des.monster({ id = "Unbioctium", x=14, y=14, peaceful=0 })

-- Monsters
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
des.monster("b")
des.monster("P")
des.monster("P")

-- Items
des.object("?")
des.object("?")
des.object("?")
des.object("?")
des.object("?")
des.object("?")
des.object("!")
des.object("!")
des.object("!")
des.object("!")
des.object("!")
des.object("!")
des.object("+")
des.object("+")
des.object()
des.object()
des.object()
des.object()
des.object()
des.object()

-- Traps
des.trap("spiked pit")
des.trap("spiked pit")
des.trap("spiked pit")
des.trap("dart")
des.trap("dart")
des.trap("sleep gas")
des.trap("sleep gas")
des.trap("magic")
des.trap("magic")
des.trap("polymorph")
des.trap("polymorph")