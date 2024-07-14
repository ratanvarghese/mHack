-- footrice level

des.level_init({ style = "solidfill", fg = " " });
des.level_flags("mazelevel");

--[[
#000000000111111111122222222223333333333444444444455555555556666666666777777
#123456789012345678901234567890123456789012345678901234567890123456789012345
--]]
des.map([[
----------------------------------------------------------------------------0
|                     ----------------------        #########+.............|1
|               -------....................-------  #        |-----------..|2
|--------   -----.........---------------.........--#        |..........+..|3
|.......| ---..........----             -----......-+--      |..........|..|4
|.......|--............-                    ---.......+######+..........|..|5
-----+---...........---        --------       --......--     |..........|--|6
|    #--............+####### ---......---      ---------     ------------  |7
|    #+............--      # |...----...|                                  |8
|    --............-       ##+...|  --S--                                  |9
|    -.............-         |...|    #                                    |0
|    --............-       ##+...|  --S--                                  |1
|    #+............--      # |...----...|                                  |2
|    #--............+####### ---......---      ---------     ------------  |3
-----+---...........---        --------       --......--     |..........|--|4
|.......|--............-                    ---.......+######+..........|..|5
|.......| ---..........----             -----......-+--      |..........|..|6
|--------   -----.........---------------.........--#        |..........+..|7
|               -------....................-------  #        |-----------..|8
|                     ----------------------        #########+.............|9
----------------------------------------------------------------------------0
]]);

local stones = { {1,1}, {1,19}, {39,08}, {39,12}, {53,06}, {53,14}, {71,3}, {71,17} }
shuffle(stones)

des.region(selection.area(0,0,75,19), "unlit")
des.region({ region = {1,4,7,5}, lit=0, filled=1, type="cocknest" })
des.region({ region = {1,15,7,16}, lit=0, filled=1, type="cocknest" })

des.stair("up", 13, 10)

des.door("random", 05,06)
des.door("random", 05,14)
des.door("random", 20,07)
des.door("random", 20,13)
des.door("random", 29,09)
des.door("random", 29,11)
des.door("random", 52,04)
des.door("random", 52,04)
des.door("random", 54,05)
des.door("random", 54,15)
des.door("random", 61,01)
des.door("random", 61,05)
des.door("random", 61,15)
des.door("random", 61,19)
des.door("random", 72,03)
des.door("random", 72,17)


des.monster("lizard")
des.monster("c")
des.monster("c")
des.monster("c")
des.monster("c")
des.monster("c")
des.monster("c")
des.monster("c")
des.monster("c")
des.monster("c")
des.monster("c")
des.monster("c")
des.monster("c")
des.monster("c")
des.monster("gargoyle")
des.monster("gargoyle")
des.monster("gargoyle")
des.monster("gargoyle")
des.monster("gremlin")
des.monster("gremlin")
des.monster("winged gargoyle")
des.monster("winged gargoyle")
des.monster("gas spore")
des.monster("gas spore")
des.monster("gas spore")
des.monster("gas spore")
des.monster("freezing sphere")
des.monster("flaming sphere")


des.object({ id="luckstone", coord=stones[1], buc="not-cursed", achievement=1 })
des.object("loadstone", stones[2])
des.object("flint", stones[3])
des.object("flint", stones[4])
local tool_list = {
    "oilskin sack", "stethoscope", "can of grease", "tinning kit",
    "fire horn", "frost horn", "magic flute", "magic harp",
    "drum of earthquake", "magic whistle", "expensive camera",
    "horn of plenty", "saddle"
}
des.object(table.remove(tool_list, d(#tool_list)))
des.object(table.remove(tool_list, d(#tool_list)))
des.object(table.remove(tool_list, d(#tool_list)))
des.object(table.remove(tool_list, d(#tool_list)))
des.object("statue")
des.object("statue")
des.object("statue")
des.object("statue")
des.object("statue")
des.object("statue")
des.object("statue")
des.object("statue")
des.object("statue")
des.object("statue")
des.object("statue")
des.object("statue")
des.object("statue")
des.object("statue")
des.object("statue")
des.object("statue")
des.object()
des.object()
des.object()
des.object()

des.trap("statue", stones[1])
des.trap("statue", stones[2])
des.trap("statue", stones[3])
des.trap("statue", stones[4])
des.trap("statue", stones[5])
des.trap("statue", stones[6])
des.trap("statue", stones[7])
des.trap("statue", stones[8])
des.trap("board")
des.trap("board")
des.trap("board")
des.trap("board")
des.trap("board")
des.trap("board")
des.trap("board")
des.trap("board")
des.trap("pit")
des.trap("pit")
des.trap("pit")
des.trap("pit")
des.trap("land mine")
des.trap("land mine")
des.trap("land mine")
des.trap("land mine")
des.trap("web")
des.trap("web")
