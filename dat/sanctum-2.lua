-- This is Cthulhu's Sanctum from the Lethe patch
-- Converted to Lua and heavily vanilla-fied for mHack
-- Perhaps if Lethe patch monsters are added to mHack
-- the vanilla-fication can be undone.

--
--	Cthulhu's Sanctum
--
--	Cthulhu was the high priest of the old ones, the mediator
--	between them and their arcane gods.  For nethack, it seems
--	reasonable to cast him as the great priest of Moloch, to whom
--	the amulet has been entrusted for safe keeping.
--
des.level_init({ style = "solidfill", fg = " " });
des.level_flags("mazelevel", "hardfloor", "noteleport", "nommap")
--GEOMETRY:center,center
--[[
0         1         2         3         4         5         6         7    7
0123456789012345678901234567890123456789012345678901234567890123456789012345
--]]
des.map([[
                .........         PP...          -----  PPPPPPPPP---------PP0
  .......     ...............    ...PPP..        |...|...PPPPPP..|.......|.P1
 ....PP...###S................   ...PP.  .       |...+...PPPPP...+.......+.P2
  .......     ...........   ...         .        |...|..PPPPPPP..|.......|.P3
                .......      ...  ----- .  ----- -----PPPPPPPPP..---------PP4
     ........   ++            ..  |...|-S--|...|    |PPPPPPPPPP..PPPPPPPPPPP5
    ... .. .......     ...... ..  |...|....|...|    |PPPPPP..............PPP6
   ..................      -S-++--|...|....|...|    |PPPP...........--------7
 PP... .PP. ... ... ....   |......|-+----+---+------|PPP............|PP....|8
 P.....PPPP............... |..PP..+.................|P..............+......|9
 P.....PPPP............... |..PP..+.................|P..............+......|0
 PP... .PP. ... ... ....   |......|S--+----+--+-----|PPP............|PP....|1
   ..................      -S-++---.|...|....|..|   |PPPP...........--------2
    ... .. .......     ...... ..   .|...|....|..|   |PPPPPP..............PPP3
     ........   ++            ..   .|...|----|..|   |PPPPPPPPPP..PPPPPPPPPPP4
                .......      ...   .-----    ---------PPPPPPPPP..---------PP5
  .......     ...........   ...    .      ...    |...|..PPPPPPP..|.......|.P6
 ....PP...###S................      ...  ..P..   |...+...PPPPP...+.......+.P7
  .......     ...............          .. ...    |...|...PPPPPP..|.......|.P8
                .........                        -----  PPPPPPPPP---------PP9
]]);

-- Main Temple
des.region({ region={02,07,10,12}, lit=1, type="temple", filled=2 })
des.altar({ x=04, y=09, align="noalign", type="sanctum" })

-- Invisible barrier separating the left & right halves of the level
des.non_passwall(selection.area(27,00,34,00))

--[[
-- Random Places for Cthulhu to be with the Amulet
local random_places = {{04,09},{04,10},{03,02},{03,17},{34,02},{44,17},{16,02},{16,17}}
shuffle(random_places)
--]]

-- Non diggable and phaseable walls
des.non_diggable(selection.area(00,00,75,19))
des.non_passwall(selection.area(00,00,75,19))

-- Regions
--
-- Temple interior  
des.region(selection.area(00,00,52,19), "unlit")

-- Outer landing  
des.region(selection.area(53,00,75,19), "lit")

-- Outside Chambers
des.region(selection.area(66,01,72,03), "unlit")
des.region(selection.area(69,08,74,11), "unlit")
des.region(selection.area(66,16,72,18), "unlit")

--[[
-- Main Temple
des.altar({ x=04, y=09, align="noalign", type="sanctum" })
des.altar({ x=04, y=10, align="noalign", type="sanctum" })
des.region({ region={01,05,23,14},lit=0,type="temple", filled=2 })
--]]

-- Northern Temple (Inner)
des.altar({ x=03, y=02, align="noalign", type="shrine" })
des.region({ region={01,01,09,03},lit=0,type="temple", filled=2 })

-- Northern Temple (Outer)
des.altar({ x=16, y=02, align="noalign", type="shrine" })
des.region({ region={14,00,26,04},lit=0,type="temple", filled=2 })

-- Souther Temple (Inner)
des.altar({ x=03, y=17, align="noalign", type="shrine" })
des.region({ region={01,16,09,18},lit=0,type="temple", filled=2 })

-- Southern Temple (Outer)
des.altar({ x=16, y=17, align="noalign", type="shrine" })
des.region({ region={14,15,26,19},lit=0,type="temple", filled=2 })

-- North Eastern Temple
des.altar({ x=36, y=01, align="noalign", type="shrine" })
des.region({ region={33,00,39,02},lit=0,type="temple", filled=2 })

-- South Eastern Tample
des.altar({ x=44, y=17, align="noalign", type="shrine" })
des.region({ region={40,16,45,18},lit=0,type="temple", filled=2 })

-- Stairs and Branch
des.stair("up",73,09)
--BRANCH:(69,08,74,11),(00,00,00,00)
des.teleport_region({ region = {69,08,74,11}, region_islev=1, dir="down" })

-- Drawbridges
des.drawbridge({ dir = "west", state = "closed", x = 53, y = 09 })
des.drawbridge({ dir = "west", state = "closed", x = 53, y = 10 })

-- Doors
des.door("closed",68,09)
des.door("closed",68,10)
des.door("locked",65,02)
des.door("locked",73,02)
des.door("locked",65,17)
des.door("locked",73,17)
des.door("closed",53,02)
des.door("closed",53,17)
des.door("closed",36,08)
des.door("closed",41,08)
des.door("closed",45,08)
des.door("closed",38,11)
des.door("closed",43,11)
des.door("closed",46,11)
des.door("locked",35,11)
des.door("locked",40,05)
des.door("locked",34,09)
des.door("locked",34,10)
des.door("locked",16,05)
des.door("locked",17,05)
des.door("locked",16,14)
des.door("locked",17,14)
des.door("locked",30,07)
des.door("locked",31,07)
des.door("locked",30,12)
des.door("locked",31,12)
des.door("locked",13,02)
des.door("locked",13,17)
des.door("locked",28,07)
des.door("locked",28,12)

-- Sea monsters for the river
des.monster(';', 59,01)
des.monster(';', 57,04)
des.monster(';', 54,07)
des.monster(';', 54,13)
des.monster(';', 58,15)
des.monster(';', 60,18)
des.monster(';', 70,05)
des.monster(';', 72,14)

-- Platform Guardians
des.monster({ id = "master lich", coord = {52,02}, asleep = 1, peaceful = 0 })
des.object("wand of lightning",52,02)
des.object("chest",51,02)
--des.monster({ id = "nightgaunt", coord = {56,01}, asleep = 1, peaceful = 0 })
des.monster({ class = "B", coord = {56,01}, asleep = 1, peaceful = 0 })

des.monster({ id = "master lich", coord = {52,17}, asleep = 1, peaceful = 0 })
des.object("wand of lightning",52,17)
des.object("chest",51,17)
--des.monster({ id = "nightgaunt", coord = {56,18}, asleep = 1, peaceful = 0 })
des.monster({ class = "B", coord = {56,18}, asleep = 1, peaceful = 0 })

-- Landing Guards
--des.monster({ id = "deepest one", coord = {56,08}, asleep = 1, peaceful = 0 })
des.monster({ id = "balrog", coord = {56,08}, asleep = 1, peaceful = 0 })
des.object('!',56,08)
--des.monster({ id = "deepest one", coord = {61,08}, asleep = 1, peaceful = 0 })
des.monster({ id = "balrog", coord = {61,08}, asleep = 1, peaceful = 0 })
des.object('/',61,08)
--des.monster({ id = "deepest one", coord = {56,11}, asleep = 1, peaceful = 0 })
des.monster({ id = "balrog", coord = {56,11}, asleep = 1, peaceful = 0 })
des.object('!',56,11)
--des.monster({ id = "deepest one", coord = {61,13}, asleep = 1, peaceful = 0 })
des.monster({ id = "balrog", coord = {61,13}, asleep = 1, peaceful = 0 })
des.object('/',61,13)

-- Northern barracks
--des.monster({ id = "deeper one", coord = {67,01}, asleep = 1, peaceful = 0 })
des.monster({ id = "iron golem", coord = {67,01}, asleep = 1, peaceful = 0 })
des.object("chest",68,01)
--des.monster({ id = "deeper one", coord = {69,01}, asleep = 1, peaceful = 0 })
des.monster({ id = "iron golem", coord = {69,01}, asleep = 1, peaceful = 0 })
des.object("chest",70,01)
--des.monster({ id = "deeper one", coord = {71,01}, asleep = 1, peaceful = 0 })
--des.monster({ id = "deeper one", coord = {67,03}, asleep = 1, peaceful = 0 })
des.monster({ id = "iron golem", coord = {71,01}, asleep = 1, peaceful = 0 })
des.monster({ id = "iron golem", coord = {67,03}, asleep = 1, peaceful = 0 })
des.object("chest",68,03)
--des.monster({ id = "deeper one", coord = {69,03}, asleep = 1, peaceful = 0 })
des.monster({ id = "iron golem", coord = {69,03}, asleep = 1, peaceful = 0 })
des.object("chest",70,03)
--des.monster({ id = "deeper one", coord = {71,03}, asleep = 1, peaceful = 0 })
des.monster({ id = "iron golem", coord = {71,03}, asleep = 1, peaceful = 0 })

-- Southern barracks
--des.monster({ id = "deeper one", coord = {67,16}, asleep = 1, peaceful = 0 })
des.monster({ id = "iron golem", coord = {67,16}, asleep = 1, peaceful = 0 })
des.object("chest",68,16)
--des.monster({ id = "deeper one", coord = {69,16}, asleep = 1, peaceful = 0 })
des.monster({ id = "iron golem", coord = {69,16}, asleep = 1, peaceful = 0 })
des.object("chest",70,16)
--des.monster({ id = "deeper one", coord = {71,16}, asleep = 1, peaceful = 0 })
--des.monster({ id = "deeper one", coord = {67,18}, asleep = 1, peaceful = 0 })
des.monster({ id = "iron golem", coord = {71,16}, asleep = 1, peaceful = 0 })
des.monster({ id = "iron golem", coord = {67,18}, asleep = 1, peaceful = 0 })
des.object("chest",68,18)
--des.monster({ id = "deeper one", coord = {69,18}, asleep = 1, peaceful = 0 })
des.monster({ id = "iron golem", coord = {69,18}, asleep = 1, peaceful = 0 })
des.object("chest",70,18)
--des.monster({ id = "deeper one", coord = {71,18}, asleep = 1, peaceful = 0 })
des.monster({ id = "iron golem", coord = {71,18}, asleep = 1, peaceful = 0 })

-- Traps on the landing
des.trap("board",65,08)
des.trap("board",65,11)
des.trap("board",61,08)
des.trap("board",61,11)
des.trap("board",58,08)
des.trap("board",58,11)
des.trap("board",63,02)
des.trap("board",63,17)
des.trap("board",55,02)
des.trap("board",55,17)

-- Guardians one the inner temples
des.monster({ id = "mind flayer", coord = {47,09}, asleep = 1, peaceful = 0 })
des.object("striking",47,09)
des.monster({ id = "mind flayer", coord = {49,10}, asleep = 1, peaceful = 0 })
des.object("striking",49,10)

-- Priests, in the chambers before the temple
des.monster({ id = "aligned cleric", coord = {35,06}, align="noalign", asleep = 1, peaceful = 0 })
des.monster({ id = "aligned cleric", coord = {37,06}, align="noalign", asleep = 1, peaceful = 0 })
des.monster({ id = "aligned cleric", coord = {39,06}, align="noalign", asleep = 1, peaceful = 0 })
des.monster({ id = "aligned cleric", coord = {42,06}, align="noalign", asleep = 1, peaceful = 0 })
des.monster({ id = "aligned cleric", coord = {44,05}, align="noalign", asleep = 1, peaceful = 0 })
des.monster({ id = "aligned cleric", coord = {46,05}, align="noalign", asleep = 1, peaceful = 0 })
des.monster({ id = "aligned cleric", coord = {37,13}, align="noalign", asleep = 1, peaceful = 0 })
des.monster({ id = "aligned cleric", coord = {39,12}, align="noalign", asleep = 1, peaceful = 0 })
des.monster({ id = "aligned cleric", coord = {41,12}, align="noalign", asleep = 1, peaceful = 0 })
des.monster({ id = "aligned cleric", coord = {44,13}, align="noalign", asleep = 1, peaceful = 0 })
des.monster({ id = "aligned cleric", coord = {46,12}, align="noalign", asleep = 1, peaceful = 0 })
des.monster({ id = "aligned cleric", coord = {47,13}, align="noalign", asleep = 1, peaceful = 0 })

-- Door bell for the inner temple
des.trap("board",35,09)
des.trap("board",35,10)

-- Guardians one the inner temples
des.monster({ id = "marilith", coord = {33,08}, asleep = 1, peaceful = 0 })
des.monster({ id = "marilith", coord = {33,11}, asleep = 1, peaceful = 0 })
des.monster({ id = "marilith", coord = {28,08}, asleep = 1, peaceful = 0 })
des.monster({ id = "marilith", coord = {28,08}, asleep = 1, peaceful = 0 })
des.monster({ id = "kraken", coord = {29,09}, asleep = 1, peaceful = 0 })

-- Main Temple
des.trap("fire",15,06)
des.trap("magic",16,06)
des.trap("fire",17,06)
des.trap("fire",15,13)
des.trap("magic",16,13)
des.trap("fire",17,13)
des.monster({ id = "kraken", coord = {09,10}, asleep = 1, peaceful = 0 })
--des.monster({ class = 'B', coord = {05,07}, asleep = 1, peaceful = 0 })
--des.monster({ class = 'B', coord = {05,10}, asleep = 1, peaceful = 0 })
des.monster({ class = 'B', coord = {08,14}, asleep = 1, peaceful = 0 })
des.monster({ class = 'B', coord = {10,08}, asleep = 1, peaceful = 0 })
des.monster({ class = 'B', coord = {13,06}, asleep = 1, peaceful = 0 })
des.monster({ class = 'B', coord = {14,09}, asleep = 1, peaceful = 0 })
des.monster({ class = 'B', coord = {15,12}, asleep = 1, peaceful = 0 })
des.monster({ class = 'B', coord = {18,10}, asleep = 1, peaceful = 0 })
des.monster({ class = 'B', coord = {21,08}, asleep = 1, peaceful = 0 })
des.object("chest",02,09)
des.object("chest",02,10)

-- Northern Temple (Outer)
des.trap("fire",25,01)
des.trap("fire",25,02)
des.trap("magic",26,01)
des.trap("magic",26,02)
des.trap("fire",27,01)
des.trap("fire",27,02)
des.monster({ id = "aligned cleric", coord = {20,01}, align="noalign", asleep = 1, peaceful = 0 })
des.monster({ id = "aligned cleric", coord = {19,03}, align="noalign", asleep = 1, peaceful = 0 })
des.monster({ id = "wererat", coord = {19,03}, noalign = 1, asleep = 1, peaceful = 0 })
des.object("chest",14,02)

-- Northern Temple (Inner)
des.trap("board",09,02)
des.monster({ id = "kraken", coord = {05,02}, asleep = 1, peaceful = 0 })
--des.monster({ id = "shuggoth", coord = {04,02}, asleep = 1, peaceful = 0 })
des.monster({ id = "green slime", coord = {04,02}, asleep = 1, peaceful = 0 })
des.object("chest",01,02)

-- Southern Temple (Outer)
des.trap("fire",25,17)
des.trap("fire",25,18)
des.trap("magic",26,17)
des.trap("magic",26,18)
des.trap("fire",27,17)
des.trap("fire",27,18)
des.monster({ id = "aligned cleric", coord = {20,16}, align="noalign", asleep = 1, peaceful = 0 })
des.monster({ id = "aligned cleric", coord = {19,18}, align="noalign", asleep = 1, peaceful = 0 })
des.monster({ id = "werewolf", coord = {17,17}, noalign = 1, asleep = 1, peaceful = 0 })
des.object("chest",14,17)

-- Southern Temple (Inner)
des.trap("board",09,17)
des.monster({ id = "kraken", coord = {05,17}, asleep = 1, peaceful = 0 })
--des.monster({ id = "star vampire", coord = {04,17}, asleep = 1, peaceful = 0 })
des.monster({ id = "vampire", coord = {04,17}, asleep = 1, peaceful = 0 })
des.object("chest",01,17)

-- North Eastern Temple
des.trap("board",39,01)
des.monster({ id = "kraken", coord = {36,02}, asleep = 1, peaceful = 0 })
des.monster({ id = "iron golem", coord = {35,02}, asleep = 1, peaceful = 0 })
des.monster({ id = "green slime", coord = {38,02}, asleep = 1, peaceful = 0 })
des.object("chest",33,01)

-- South Eastern Temple
des.trap("board",37,17)
des.monster({ id = "kraken", coord = {43,17}, asleep = 1, peaceful = 0 })
--des.monster({ id = "shuggoth", coord = {42,16}, asleep = 1, peaceful = 0 })
des.monster({ id = "green slime", coord = {42,16}, asleep = 1, peaceful = 0 })
des.monster({ id = "green slime", coord = {42,18}, asleep = 1, peaceful = 0 })
des.object("chest",45,17)

-- Cthulhu is in one of the temples (he is generated with the amulet)
--MONSTER:'&',"Cthulhu",place[0],asleep,hostile

-- Northern Shuggoth Run
des.trap("teleport",28,06)
--des.monster({ id = "shuggoth", coord = {27,06}, asleep = 1, peaceful = 0 })
--des.monster({ id = "shuggoth", coord = {25,06}, asleep = 1, peaceful = 0 })
--des.monster({ id = "shuggoth", coord = {23,06}, asleep = 1, peaceful = 0 })
des.monster({ id = "green slime", coord = {27,06}, asleep = 1, peaceful = 0 })
des.monster({ id = "green slime", coord = {25,06}, asleep = 1, peaceful = 0 })
des.monster({ id = "green slime", coord = {23,06}, asleep = 1, peaceful = 0 })

-- Southern Shuggoth Run
des.trap("teleport",28,13)
--des.monster({ id = "shuggoth", coord = {27,13}, asleep = 1, peaceful = 0 })
--des.monster({ id = "shuggoth", coord = {25,13}, asleep = 1, peaceful = 0 })
--des.monster({ id = "shuggoth", coord = {23,13}, asleep = 1, peaceful = 0 })
des.monster({ id = "green slime", coord = {27,13}, asleep = 1, peaceful = 0 })
des.monster({ id = "green slime", coord = {25,13}, asleep = 1, peaceful = 0 })
des.monster({ id = "green slime", coord = {23,13}, asleep = 1, peaceful = 0 })
