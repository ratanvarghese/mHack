-- Written for mHack by Ratan Varghese

des.level_init({ style = "solidfill", fg = " " });
des.level_flags("mazelevel", "noteleport", "hardfloor")

--[[
#000000000111111111122222222223333333333444444444455555555556666666666777777
#123456789012345678901234567890123456789012345678901234567890123456789012345
--]]
des.map([[
............................................................................0
....FF....  ....PP....LL...................................-------..........1
....FF....  ....PP....LL...............................-----.|.|.|..........2
....FF....  ....PP....LL...........................-----...|+-+-+|..........3
....FF....  ....PP....LL.......................-----.......|.....|..........4
...........................................-----...........|.....|..........5
....FF....  ....PP....LL...............-----...............|--S--|..........6
...................................-----...................|.....|..........7
...............---------------------.......................|.....|..........8
...............|...........................................+.....|..........9
...............+...........................................|.....|..........0
...............|...........................................+.....|..........1
...............---------------------.......................|.....|..........2
...................................-----...................|.....|..........3
....FF....  ....PP....LL...............-----...............|--S--|..........4
...........................................-----...........|.....|..........5
....FF....  ....PP....LL.......................-----.......|.....|..........6
....FF....  ....PP....LL...........................-----...|.....|..........7
....FF....  ....PP....LL...............................-----.....|..........8
....FF....  ....PP....LL...................................-------..........9
............................................................................0
]]);

-- Dungeon Description
des.region(selection.area(00,00,75,20), "lit")

-- Portal arrival point
des.terrain({02,02}, ".")
des.levregion({ region = {02,02,02,02}, type="branch" })

-- Features
des.feature("sink", 60,07)
des.feature("sink", 60,08)
des.feature("sink", 60,12)
des.feature("sink", 60,13)
des.feature("fountain", 62,16)
des.stair("down", 62,18)

-- Doors
des.door("locked",15,10)
des.door("open",59,09)
des.door("open",59,11)
des.door("locked",60,03)
des.door("locked",62,03)
des.door("locked",64,03)

-- Maria's Laboratory
des.monster({ id = "Maria", coord = {58, 10}, inventory = function()
   des.object({ id = "knife", spe = 5, material="silver" });
end })

des.monster("chemist", 48, 05)
des.monster("chemist", 48, 07)
des.monster("chemist", 48, 13)
des.monster("chemist", 48, 15)
des.monster("chemist", 49, 05)
des.monster("chemist", 49, 07)
des.monster("chemist", 49, 13)
des.monster("chemist", 49, 15)
des.monster("chemist", 50, 05)
des.monster("chemist", 50, 07)
des.monster("chemist", 50, 13)
des.monster("chemist", 50, 15)

-- Peaceful Q
des.monster({ id = "quantum mechanic", x=20, y=09, peaceful = 1 })
des.monster({ id = "quantum mechanic", x=20, y=11, peaceful = 1 })
des.monster({ id = "genetic engineer", x=30, y=09, peaceful = 1 })
des.monster({ id = "genetic engineer", x=20, y=11, peaceful = 1 })

-- Captive monsters
des.monster("rust monster",60,02)
des.monster("transmuter",62,02)
des.monster("disenchanter",64,02)


-- Undiggable
des.non_diggable(selection.area(00,00,75,19))

des.object("!", 51, 05)
des.object("!", 51, 06)
des.object("!", 51, 07)
des.object("!", 51, 08)
des.object("!", 51, 12)
des.object("!", 51, 13)
des.object("!", 51, 14)
des.object("!", 51, 15)
des.object("ice box", 52, 04)
des.object("ice box", 52, 16)
des.object({ id = "chest", x = 53, y = 04, trapped = 0,
             contents = function()
                des.object("conical flask")
                des.object("(")
                des.object("(")
                des.object("(")
                des.object("!")
                des.object("!")
                des.object("!")
                des.object("scroll of alchemy")
             end
})
des.object({ id = "chest", x = 53, y = 16, trapped = 0,
             contents = function()
                des.object("alchemy smock")
                des.object("(")
                des.object("(")
                des.object("(")
                des.object("!")
                des.object("!")
                des.object("!")
                des.object("scroll of alchemy")
             end
})
des.object()
des.object()
des.object()
des.object()
des.object()
des.object()

local leftlocs = selection.area(00,01,13,19)
for i = 1,2 do
   des.monster("shocking sphere", leftlocs:rndcoord(1))
   des.monster("energy vortex", leftlocs:rndcoord(1))
   des.monster("e", leftlocs:rndcoord(1))
   des.monster("v", leftlocs:rndcoord(1))
   des.monster("E", leftlocs:rndcoord(1))
   des.trap("magic", leftlocs:rndcoord(1))
   des.trap("anti magic", leftlocs:rndcoord(1))
end

local rightlocs = selection.area(66,01,74,19)
for i = 1,2 do
   des.monster("shocking sphere", rightlocs:rndcoord(1))
   des.monster("energy vortex", rightlocs:rndcoord(1))
   des.monster("e", rightlocs:rndcoord(1))
   des.monster("v", rightlocs:rndcoord(1))
   des.monster("E", rightlocs:rndcoord(1))
   des.trap("magic", rightlocs:rndcoord(1))
   des.trap("anti magic", rightlocs:rndcoord(1))
end