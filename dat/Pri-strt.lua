-- NetHack Priest Pri-strt.lua	$NHDT-Date: 1652196009 2022/05/10 15:20:09 $  $NHDT-Branch: NetHack-3.7 $:$NHDT-Revision: 1.5 $
--	Copyright (c) 1989 by Jean-Christophe Collet
--	Copyright (c) 1991-2 by M. Stephenson
-- Copyright (c) 2004 by Nicolas Webb
-- Copyright (c) 2024 by Ratan Varghese
-- NetHack may be freely redistributed.  See license for details.
--
--
--	The "start" level for the quest.
--
--	Here you meet your (besieged) class leader, High Priest
--	and receive your quest assignment.
--

-- Nicolas Webb added new variations for different gods for the biodiversity patch.
-- Ratan Varghese converted the variations into Lua for mHack.

des.level_init({ style = "solidfill", fg = " " });

des.level_flags("mazelevel", "noteleport", "hardfloor")

local function classic()
des.map([[
............................................................................
............................................................................
............................................................................
....................------------------------------------....................
....................|................|.....|.....|.....|....................
....................|..------------..|--+-----+-----+--|....................
....................|..|..........|..|.................|....................
....................|..|..........|..|+---+---+-----+--|....................
..................---..|..........|......|...|...|.....|....................
..................+....|..........+......|...|...|.....|....................
..................+....|..........+......|...|...|.....|....................
..................---..|..........|......|...|...|.....|....................
....................|..|..........|..|+-----+---+---+--|....................
....................|..|..........|..|.................|....................
....................|..------------..|--+-----+-----+--|....................
....................|................|.....|.....|.....|....................
....................------------------------------------....................
............................................................................
............................................................................
............................................................................
]]);
   -- Dungeon Description
   des.region(selection.area(00,00,75,19), "lit")
   des.region({ region={24,06, 33,13}, lit=1, type="temple", filled=2 })

   des.replace_terrain({ region={00,00, 10,19}, fromterrain=".", toterrain="T", chance=10 })
   des.replace_terrain({ region={65,00, 75,19}, fromterrain=".", toterrain="T", chance=10 })
   des.terrain({05,04}, ".")

   local spacelocs = selection.floodfill(05,04);

   -- Portal arrival point
   des.levregion({ region = {05,04,05,04}, type="branch" })
   -- Stairs
   des.stair("down", 52,09)
   -- Doors
   des.door("locked",18,09)
   des.door("locked",18,10)
   des.door("closed",34,09)
   des.door("closed",34,10)
   des.door("closed",40,05)
   des.door("closed",46,05)
   des.door("closed",52,05)
   des.door("locked",38,07)
   des.door("closed",42,07)
   des.door("closed",46,07)
   des.door("closed",52,07)
   des.door("locked",38,12)
   des.door("closed",44,12)
   des.door("closed",48,12)
   des.door("closed",52,12)
   des.door("closed",40,14)
   des.door("closed",46,14)
   des.door("closed",52,14)
   -- Unattended Altar - unaligned due to conflict - player must align it.
   des.altar({ x=28, y=09, align="noalign", type="altar" })
   -- High Priest
   des.monster({ id = "Arch Priest", coord = {28, 10}, inventory = function()
      des.object({ id = "robe", spe = 4 });
      des.object({ id = "mace", spe = 4 });
   end })
   -- The treasure of High Priest
   des.object("chest", 27, 10)
   -- knight guards for the audience chamber
   des.monster("acolyte", 32, 07)
   des.monster("acolyte", 32, 08)
   des.monster("acolyte", 32, 11)
   des.monster("acolyte", 32, 12)
   des.monster("acolyte", 33, 07)
   des.monster("acolyte", 33, 08)
   des.monster("acolyte", 33, 11)
   des.monster("acolyte", 33, 12)
   -- Non diggable walls
   des.non_diggable(selection.area(18,03,55,16))
   -- Random traps
   for i = 1, 2 do
      des.trap("dart", spacelocs:rndcoord(1))
   end
   des.trap()
   des.trap()
   des.trap()
   des.trap()
   -- Monsters on siege duty.
   for i = 1, 12 do
      des.monster("human zombie", spacelocs:rndcoord(1));
   end
end

local function jungle()
--[[
#000000000111111111122222222223333333333444444444455555555556666666666777777
#123456789012345678901234567890123456789012345678901234567890123456789012345
--]]
des.map([[
T.....T.TT.............................TT...........TTT...TT.TTTTT}}TTT.TT.T
...T..TTT.T..------------------------...TT.TT.......T.T..T.T...TTT}}}w....TT
.TT..TT......|......................|..............TTT...........TT}w.T....T
.T......T....|.--------------------.|.....T.T.TT...T.T...T......wT}}w.......
....T..TT....|.|..................|.|...TT..TTT................TT}}ww..TTT..
.......T.....|.|.----------------.|.|....TT....T...T..T....T....Tw}}w....T..
T.....T......|.|.|..............|.|.|........TT.........T..........}|.......
TT.T.........|.|.|.-+--------+-.|.|.|.......TT.T.TT.........T..T...}}w......
TT.T......T..|.|.|.|..|....|..|.|.|.|.......T.TT..TT............TT.w}}w.....
T..T..T......+.|.|.|..+....+..|.|.|.+.........T.T........T.......T.ww}w.....
T.....T......+.|.|.|..|....|..|.|.|.+..............................ww}w.....
TT...........|.|.|.|..|....|..|.|.|.|................T...T.........w}}w.....
TT..T...T....|.|.|.------------.|.|.|.....TT..............T....T..ww}}w.....
TT...........|.|.|.....+..+.....|.|.|....T................T....TTww}}wT.....
TT....TTT....|.|.-------..-------.|.|....T.....TT...T....T.T....T}}}wwT.....
T..T...T.T...|.|.......+..+.......|.|....T..T..T...TT......TT..ww}}}}T..T...
T..TT..T.....|.---------..---------.|...T..T.................www}}Tw}w...T..
T...T.....T..|.........+..+.........|.....T..T...T......T...ww}}}wTTwT.....T
T....T...T...------------------------..........T....T.....TTw}}w}ww...T...TT
TTT........T...........................TT....TTT...T..TTTTTwT}TTw}w.T.T..TTT
TTTTTT...TTTT........................TTTTT...TTTTT.T..TTTTT}}}TT}ww.T.T..TTT
]]);
   -- Dungeon Description
   des.region(selection.area(00,00,75,19), "lit")
   --REGION:(14,02,35,17),unlit,"ordinary",inside
   des.region({ region={24,06,33,13},lit=1,type="temple", filled=2 })
   --TREES:"notype,looted,swarmed",(00,00,75,19)
   --TREES[50%]:"banana",(00,00,75,19)
   --TREES[5%]:"banana,loot",(00,00,75,19)
   --TREES[2%]:"orange,loot",(00,00,75,19)
   -- Portal arrival point
   des.levregion({ region = {70,10,75,10}, type="branch"})
   des.drawbridge({ dir = "east", state = "open", x = 67, y = 06 })
   -- Stairs
   des.stair("down",25,17)
   -- Doors
   -- Unattended Altar - unaligned due to conflict - player must align it.
   des.altar({ x=25, y=10, align="noalign", type="altar" })
   -- High Priest
   des.monster("Arch Priest", 24,10)
   -- The treasure of High Priest
   des.object("chest",24,10)
   --doors
   des.door("locked",13,09)
   des.door("locked",13,10)
   des.door("closed",20,07)
   des.door("closed",22,09)
   des.door("closed",23,13)
   des.door("closed",23,15)
   des.door("closed",23,17)
   des.door("closed",26,13)
   des.door("closed",26,15)
   des.door("closed",26,17)
   des.door("closed",27,09)
   des.door("closed",29,07)
   des.door("locked",36,09)
   des.door("locked",36,10)
   -- acolyte guards for the audience chamber
   des.monster("acolyte", 23,08)
   des.monster("acolyte", 23,09)
   des.monster("acolyte", 23,10)
   des.monster("acolyte", 23,11)
   des.monster("acolyte", 26,08)
   des.monster("acolyte", 26,09)
   des.monster("acolyte", 26,10)
   des.monster("acolyte", 26,11)
   -- Non diggable walls
   des.non_diggable(selection.area(00,00,75,19))
   -- Random traps
   des.trap("dart",20,09)
   des.trap("dart",20,10)
   des.trap()
   des.trap()
   des.trap()
   des.trap()
   -- Monsters on siege duty.
   des.monster("human zombie", 37,01)
   des.monster("human zombie", 37,18)
   des.monster("human zombie", 03,03)
   des.monster("human zombie", 65,04)
   des.monster("human zombie", 12,11)
   des.monster("human zombie", 60,12)
   des.monster("human zombie", 14,08)
   des.monster("human zombie", 55,00)
   des.monster("human zombie", 17,18)
   des.monster("human zombie", 59,10)
   des.monster("human zombie", 13,09)
   des.monster("human zombie", 01,17)
   des.monster("jaguar", 54,08)
   des.monster("jaguar", 17,00)
   des.monster("jaguar")
end

local function ziggurat()
des.map([[
...........................................|................................
...........................................|................................
...........................................|....---------------------.......
...........................................|....|...................|.......
...........................................|....|.T...----+----...{.|.......
..........................................--....|.....|..S.S..|.T...|.......
..........................................||....|...T-----.-----....|.......
..........................................||....|.---|.........|---.|.......
..........................................--....|.|..|..--+--..|..|.|.......
..........................................+.....+.|..|.-|...|-.|..|.|.......
..........................................+.....+.+..|.-|...|-.|..|.|.......
..........................................--....|.|..|..-----..|..|.|.......
..........................................||....|.---|.........|S--.|.......
..........................................||....|....-----.-----....|.......
..........................................--....|.TT..|..+.+..S..T..|.......
...........................................|....|.{...---------.....|.......
...........................................|....|.................T.|.......
................................................---------------------.......
............................................................................
...........................................|................................
]]);
   -- Dungeon Description
   des.region(selection.area(00,00,75,19), "lit")
   des.region(selection.area(51,08,52,11), "unlit")
   des.region(selection.area(64,08,65,11), "unlit")
   des.region(selection.area(54,05,57,05), "unlit")
   des.region(selection.area(59,05,62,05), "unlit")
   des.region(selection.area(54,14,57,14), "unlit")
   des.region(selection.area(59,14,62,14), "unlit")
   des.region(selection.area(56,08,60,11), "lit")
   des.region({ region={54,06,62,13},lit=1,type="temple", filled=2 })
   -- Stairs
   des.stair("down",65,09)
   -- Portal arrival point
   des.levregion({ region = {01,01,14,18}, type="branch"})
   -- Unattended Altar - unaligned due to conflict - player must align it.
   des.altar({ x=58, y=10, align="noalign", type="altar" })
   -- High Priest
   des.monster("Arch Priest", 57,10)
   -- The treasure of High Priest
   des.object("chest",57,10)
   -- Doors
   des.door("closed",42,09)
   des.door("closed",42,10)
   des.door("closed",48,09)
   des.door("closed",48,10)
   des.door("closed",50,10)
   des.door("closed",58,04)
   des.door("closed",57,05)
   des.door("closed",59,05)
   des.door("open",58,08)
   des.door("closed",57,14)
   des.door("closed",59,14)
   des.door("closed",62,14)
   des.door("closed",64,12)
   -- intern guards for the audience chamber
   des.monster("acolyte", 50,05)
   des.monster("acolyte", 60,05)
   des.monster("acolyte", 65,06)
   des.monster("acolyte", 52,08)
   des.monster("acolyte", 55,12)
   des.monster("acolyte", 55,14)
   des.monster("acolyte", 52,15)
   des.monster("acolyte", 64,15)
   -- Non diggable walls
   des.non_diggable(selection.area(46,00,75,19))
   -- traps
   des.trap("dart",43,09)
   des.trap("dart",43,10)
   des.trap()
   des.trap()
   des.trap()
   des.trap()
   -- monsters on seige duty
   des.monster("human zombie", 37,01)
   des.monster("human zombie", 37,18)
   des.monster("human zombie", 03,03)
   des.monster("human zombie", 25,04)
   des.monster("human zombie", 12,11)
   des.monster("human zombie", 20,12)
   des.monster("human zombie", 14,08)
   des.monster("human zombie", 35,00)
   des.monster("human zombie", 18,18)
   des.monster("human zombie", 39,10)
   des.monster("human zombie", 13,09)
   des.monster("human zombie", 01,17)
   -- broken wall
   des.object("boulder",43,17)
   des.trap("pit",43,18)
   des.object("rock",43,18)
   -- trees
   --TREES:"notype,looted,swarmed",(00,00,75,19)
   --TREES[33%]:"orange,loot-rand",(00,00,75,19)
   --TREES[25%]:"pear,loot-rand",(00,00,75,19)
   --OBJECT:'`',"statue",(42,06),"none",1,"a lion"
   --OBJECT:'`',"statue",(42,07),"black dragon",1
   des.object({id = "statue", montype="black dragon", material="stone", x = 42, y = 07})
   --OBJECT:'`',"statue",(42,12),"rothe",1
   des.object({id = "statue", montype="rothe", material="stone", x = 42, y = 12})
   --OBJECT:'`',"statue",(42,13),"none",1,"a lion"
end

local function parthenon()
des.map([[
PPPPPw.....wPPPPPw..wPPPPPPPPPPPPPPPPPPPPw..............................    
PPPwww.....wwPPwww..wwPPPPPPPPPwwwwwwwwwww.............................     
PPwwPw......wwPPww...wPPPwwwwwww.........................................   
PPPPww.......wwPPwwwwwwwww..............................................    
PwwPw......wwwwPPPPPPw..............................................        
Pwwww......wPPPPPPPPww............................................      ..  
PPPw.......wwwwwPwwww.....-----------------------.................   ...... 
PPww.........wwwww......--|.|......S..........S.|--...............  ....... 
PPPwww.....wwwPPPw......|.S.|......-----------|S|.|............... .......  
PPPPPw..wwwwPPPPPw......|.|.|......|...|......|.|.|........................ 
Pwwwww.wwPPPPPPPPw......+.|.|......S...S......|.|.+.......................  
PPw....wPPPwwwPPww......|.|.|......|...|......|.|.|.......................  
Pww...wwPPwwwwwww.......|.|S|-----------......|.S.|....................     
Pwww..wPPPwwwPPww.......--|.S..........S......|.|--.....................    
PPPw..wwPPPPPPPPw.........-----------------------........................   
PPww...wwwwwwwwwwwwww.....................................................  
PPw.............wPPPwww.................................................... 
Pww.............wwPPPPww................................................... 
PPww.............wwPPPPwwwwwww.........wwww...............................  
PPPw.............wPPPPPPPPPPPw.........wPPw...........................      
]]);
   -- Dungeon Description
   des.region(selection.area(00,00,75,19), "lit")
   des.region(selection.area(26,06,48,14), "lit")
   des.region(selection.area(24,07,25,13), "lit")
   des.region(selection.area(49,07,50,13), "lit")
   des.region({ region={29,07,34,11},lit=1,type="temple", filled=2 })

   -- Stairs
   des.stair("down",37,10)
   -- Portal arrival point
   des.levregion({ region = {04,12,04,12}, type="branch"})
   -- Unattended Altar - unaligned due to conflict - player must align it.
   des.altar({ x=32, y=09, align="noalign", type="altar" })
   -- High Priest
   des.monster("Arch Priest", 32,10)
   -- The treasure of High Priest
   des.object("chest",32,10)
   -- Doors
   des.door("locked",24,10)
   des.door("closed",26,08)
   des.door("closed",27,12)
   des.door("locked",28,13)
   des.door("closed",35,07)
   des.door("locked",35,10)
   des.door("locked",39,10)
   des.door("closed",39,13)
   des.door("locked",46,07)
   des.door("closed",47,08)
   des.door("closed",48,12)
   des.door("locked",50,10)
   -- intern guards for the audience chamber
   des.monster("acolyte", 29,08)
   des.monster("acolyte", 29,09)
   des.monster("acolyte", 29,10)
   des.monster("acolyte", 29,11)
   des.monster("acolyte", 40,09)
   des.monster("acolyte", 40,10)
   des.monster("acolyte", 40,11)
   des.monster("acolyte", 40,13)
   -- Non diggable walls
   des.non_diggable(selection.area(00,00,75,19))
   -- Random traps
   des.trap("dart",25,09)
   des.trap("dart",25,11)
   des.trap("dart",49,09)
   des.trap("dart",49,11)
   des.trap()
   des.trap()
   des.trap()
   des.trap()
   des.trap()
   des.trap()
   -- Monsters on siege duty.
   des.monster("human zombie", 37,01)
   des.monster("human zombie", 37,18)
   des.monster("human zombie", 03,03)
   des.monster("human zombie", 65,04)
   des.monster("human zombie", 12,11)
   des.monster("human zombie", 59,12)
   des.monster("human zombie", 13,08)
   des.monster("human zombie", 54,00)
   des.monster("human zombie", 18,18)
   des.monster("human zombie", 58,10)
   des.monster("human zombie", 20,09)
   des.monster("human zombie", 01,17)
end

local function druid()
--[[
#000000000111111111122222222223333333333444444444455555555556666666666777777
#123456789012345678901234567890123456789012345678901234567890123456789012345
--]]
des.map([[
PPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPw...wPPPwCCCCCCCCCCC.wPPPPPPPPPPPPPPPPPPPPP
PPPPPPPPwwwwPPPPPPPP.CCCwwwPPPPwww...wwwPPwCCCCCCC..CCCwwPPPPPPPPwwwwwwwTwwP
PwwwPPPPwwwwwPwwPPCCCCCw..wwwPww.......wwww...CCCC...CCCCwwTPPPPww..CCCwwTwT
PwwwwwwwPPwwPPPwwwwwPPPwwwwwwwwwwwwwwwwwwwwwTwww........CC.wwTPPPwwCCCwPPwww
wPPwwwwPPwPPPwww...wwPPPPPPwwwPPPPPPPPPPPPPPPPPwwwwwwww.....CCCwPPw.CPPwPPPw
wPPPPwwwwwwwwwww....TwwTP}PPPPPPPPPPPPPPPPPPPPPPPPPPP}Tw.....CCCwCwwwCPwTwwP
wwwPwwww..wwPPPww....TwwPPPP.......-............T.PP}}}www..CCCCC.wwPPPPwwwP
.wPw.wPwwwwPPPPPw...wwww}PP.................-.......TP}}Pw...C...wwPPwwPPPPP
wwww.wwPPwwwPPPww...wP}}P.....-......................}P}Pw...TCC.wPPwwwwwPPw
Pw....wwww.wwwww...TT}}PP.............................P}Pw......CwwwT.wPPPwP
Pw.................+.T}P.....................-...-..T}}}Pw..CC.T..T..CCwPPPw
Pw.......wwww......TT}}P.............................}PPww...CCC......CwPPww
Pw.......wPPw......wP}}PP.....-......................}Pww.....T.CCC..TwPPww.
Pw.......wwww..C...wPP}}PP.T...............-...CCC..P}Pw..........CCC.wwwCTw
}Pwwwwwwwwwww..CCC.wTP}}}PPP....................CCPP}}ww.........CC....CC.w}
}}PPPwwPPPwPwwwwCC..wwP}}}}PPPP.....-..........}}PP}Pww......T..CCwPPww.ww}}
}PwwwwwwTPPPPwwPw.CC.wP}}}}}}}}}}}}}}}}}}}}}}}}}}}}}wwCC...T..CCCw}}}}}.}}}}
}}PTwww.wwwwwwPPwCC.TTP}}}}w}}}}}}}}}}www}}}}}}}}}Pww..CCCwww..CCw}---}}}---
}}PPPPwwwwwwwwwwwCwTPPP}}}}}}}}}}}}}}}}www}}}}}}}PPw.....wPPww.Cww}|.|---|.|
}}}}}PPPPPPPPwwCwPPP}}}}}}}}}wwww}}}}}}}w}}}}}}}}Pww..CCwwwPPw.CC}}-|.....|-
}}}}}}}}}}}}PPPPPPP}}}}}}}wwww.Tww}}}}}}}}}}}}}PPPwCCCCCwPPPPTCCC}}}|.....|}
]]);
   -- Dungeon Description
   -- TELEPORT_REGION:(00,00,75,20),(20,06,52,15)
   -- TELEPORT_REGION:(20,10,27,11),(21,10,23,11)
   des.region(selection.area(00,00,75,20), "lit")
   -- REGION:(04,12,04,12),lit,"swamp"
   des.region({ region={04,12,04,12}, lit=1, type="swamp", filled=2 })
   des.region({ region={30,07,43,14},lit=1,type="temple", filled=2 })

   --TREES:"notype,looted,swarmed",(00,00,75,19)
   --TREES[50%]:"apple",(00,00,75,19)
   --TREES[25%]:"oak,loot-rand",(00,00,75,19)
   -- Non diggable walls
   des.non_diggable(selection.area(00,00,75,20))
   -- Stairs
   des.stair("down",71,20)
   --doors and stuff
   des.door("locked",19,10)
   des.drawbridge({ dir = "south", state = "open", x = 71, y = 17 })
   -- Portal arrival point
   des.levregion({ region = {04,12,04,12}, type="branch"})
   -- Unattended Altar - unaligned due to conflict - player must align it.
   des.altar({ x=39, y=10, align="noalign", type="altar" })
   -- High Priest
   des.monster("Arch Priest", 38,10)
   -- The treasure of High Priest
   des.object("chest",38,10)

   des.object("boulder",35,06)
   des.object("boulder",43,07)
   des.object("boulder",30,08)
   des.object("boulder",45,10)
   des.object("boulder",49,10)
   des.object("boulder",30,12)
   des.object("boulder",43,13)
   des.object("boulder",36,15)
   des.trap("teleport",20,10)
   des.trap("teleport",53,09)
   des.monster("acolyte", 36,07)
   des.monster("acolyte", 42,08)
   des.monster("acolyte", 31,09)
   des.monster("acolyte", 44,10)
   des.monster("acolyte", 34,10)
   des.monster("acolyte", 31,12)
   des.monster("acolyte", 42,13)
   des.monster("acolyte", 36,14)

   des.trap("bear",18,10)
   des.trap({ coord = {18,9} })
   des.trap({ coord = {18,11} })
   des.trap()
   des.trap()
   des.trap()
   des.trap()
   des.trap()
   des.trap()
   -- MONSTER:'y',"will o' wisp",random
   -- MONSTER:'y',"will o' wisp",random
   -- MONSTER:'y',"will o' wisp",random
   -- MONSTER:'y',"will o' wisp",random
   des.monster('y')
   des.monster('y')
   des.monster('y')
   des.monster('y')
   -- Monsters on siege duty.
   local eastlocs = selection.area(55,00,75,15);
   des.monster("human zombie", eastlocs:rndcoord(1))
   des.monster("human zombie", eastlocs:rndcoord(1))
   des.monster("human zombie", eastlocs:rndcoord(1))
   des.monster("human zombie", eastlocs:rndcoord(1))
   des.monster("human zombie", eastlocs:rndcoord(1))
   des.monster("human zombie", eastlocs:rndcoord(1))
   des.monster("human zombie", eastlocs:rndcoord(1))
   local westlocs = selection.area(00,00,20,20)
   des.monster("human zombie", westlocs:rndcoord(1))
   des.monster("human zombie", westlocs:rndcoord(1))
   des.monster("human zombie", westlocs:rndcoord(1))
   des.monster("human zombie", westlocs:rndcoord(1))
   des.monster("human zombie", westlocs:rndcoord(1))
   des.monster("human zombie", westlocs:rndcoord(1))
   des.monster("human zombie", 74,18)
end

-- (Not bringing in the empty Discworld variation)

local function norse()
--[[
#000000000111111111122222222223333333333444444444455555555556666666666777777
#123456789012345678901234567890123456789012345678901234567890123456789012345
--]]
des.map([[
............................................IIIIII}}}}}}}}IIII..............
.............-------...........................IIIIII}}}}IIII...............
............--.....--............................IIIIIIIIIIII...............
..........---.......---................................IIII.................
..........|.........S.|.....................................................
........---S---------.---...................................................
........|.IC|......S....|...................................................
........|CCI|......|....|...................................................
........|C.I---S--------|...................................................
........|II.|........+..+...................................................
........|-S-|........+..+...................................................
........|...------------|...................................................
........|...|......|..LL|...................................................
........|...S......S..L.|...................................................
........---.---------.---...................................................
..........|.|.......S.|.....................................................
..........---.......|--.....................................................
............--.....--.......................................................
.............-------........................................................
............................................................................
]]);
   des.region(selection.area(00,00,75,19), "lit")
   des.region(selection.area(10,03,22,16), "lit")
   des.region(selection.area(08,05,24,14), "lit")
   des.region(selection.area(09,06,11,09), "unlit")
   des.region(selection.area(13,12,18,13), "unlit")
   des.region({ region={13,02,19,04},lit=1,type="temple", filled=2 })
   des.region(selection.area(13,15,19,17), "unlit")
   -- Non diggable walls
   des.non_diggable(selection.area(00,00,75,20))
   -- Portal arrival point
   des.levregion({ region = {58,07,70,15}, type="branch"})
   -- altar to be converted
   des.altar({ x=16, y=03, align="noalign", type="altar" })
   -- High Priest
   des.monster("Arch Priest", 16,02)
   -- intern guards for the audience chamber
   des.monster("acolyte", 16,04)
   des.monster("acolyte", 15,06)
   des.monster("acolyte", 15,03)
   des.monster("acolyte", 15,04)
   des.monster("acolyte", 17,06)
   des.monster("acolyte", 17,03)
   des.monster("acolyte", 17,04)
   des.monster("acolyte", 16,06)
   -- Monsters on siege duty.
   des.monster("human zombie", 32,13)
   des.monster("human zombie", 35,04)
   des.monster("human zombie", 41,03)
   des.monster("human zombie", 41,17)
   des.monster("human zombie", 46,14)
   des.monster("human zombie", 47,07)
   des.monster("human zombie", 47,15)
   des.monster("human zombie", 57,03)
   des.monster("human zombie", 50,04)
   des.monster("human zombie", 52,03)
   des.monster("human zombie", 59,13)
   des.monster("human zombie", 67,14)
   des.monster("human zombie", 68,18)
   des.monster("human zombie", 71,04)
   -- Stairs
   des.stair("down",16,16)
   --doors and stuff
   des.door("closed",21,09)
   des.door("closed",21,10)
   des.door("locked",24,09)
   des.door("locked",24,10)
   --OBJECT:'`',"statue",(16,02),"Norn",5
   des.object({ id = "statue", montype="Norn", material="stone", x = 16, y = 02 })
   --OBJECT:'`',"statue",(09,07),"white dragon",1,"Nidhogg"
   des.object({ id = "statue", montype="white dragon", material="stone", x = 09, y = 07,
                name = "Nidhogg" })
   --OBJECT:'`',"statue",(15,06),"none",3,"Freyr"
   --OBJECT:'`',"statue",(23,06),"storm giant",3,"Thyrm"
   des.object({ id = "statue", montype="storm giant", material="stone", x = 23, y = 06,
                name = "Thyrm" })
   --OBJECT:'`',"statue",(09,13),"none",5,"Nerthus"
   --OBJECT:'`',"statue",(16,12),"dwarf king",3,"Modsognir"
   des.object({ id = "statue", montype="dwarf king", material="stone", x = 16, y = 12,
                name = "Modsognir" })
   --OBJECT:'`',"statue",(23,13),"Lord Surtur",3
   des.object({ id = "statue", montype="Lord Surtur", material="stone", x = 23, y = 13 })
   --OBJECT:'`',"statue",(15,16),"ogre",5,"Hel"
   des.object({ id = "statue", montype="ogre", material="stone", x = 15, y = 16,
                name = "Hel" })
   --OBJECT:'`',"statue",(13,09),"blue dragon",3,"Jormungand"
   des.object({ id = "statue", montype="blue dragon", material="stone", x = 13, y = 09,
                name = "Jormungand" })

end

local function egyptian()
des.map([[
.......................................................|||||----------------
.......................................................||||-----------------
.......................................................|||------------------
.......................................................||-------------------
.......-----------------------------...................|--------------------
.......|...|...|...................|........................................
.......|...|+--|. . . . . . . . . .|--......................................
.......|.....|.S...................|--......................................
.......|-+-----|. . . . . . . . . .|........................................
.......|..|....|...................+........................................
.......|..|....+...................+........................................
.......|..S....|. . . . . . . . . .|........................................
.......|+----S-|...................|--......................................
.......|...|...|. . . . . . . . . .|--......................................
.......|...|...|...................|........................................
.......-----------------------------........................................
............................................................................
............................................................................
............................................................................
............................................................................
]]);
   -- Dungeon Description
   des.region(selection.area(00,00,75,19), "lit")
   des.region(selection.area(07,04,35,15), "lit")
   des.region(selection.area(08,04,14,15), "unlit")
   des.region({ region={11,09,14,11},lit=1,type="temple", filled=2 })
   -- Portal arrival point
   des.levregion({ region = {68,07,74,15}, type="branch"})
   -- Stairs
   des.stair("down",13,05)
   -- Doors
   des.door("locked",35,09)
   des.door("locked",35,10)
   des.door("closed",15,10)
   des.door("locked",12,06)
   des.door("closed",15,07)
   des.door("closed",09,08)
   des.door("closed",10,11)
   des.door("closed",08,12)
   des.door("closed",13,12)
   -- Unattended Altar - unaligned due to conflict - player must align it.
   des.altar({ x=12, y=10, align="noalign", type="altar" })
   --OBJECT:'`',"statue",(36,07),"sphinx",1
   --OBJECT:'`',"statue",(36,12),"sphinx",1
   -- High Priest
   des.monster("Arch Priest", 13,10)
   -- The treasure of High Priest
   des.object("chest",13,10)
   -- acolyte guards for the audience chamber
   des.monster("acolyte", 08,05)
   des.monster("acolyte", 34,14)
   des.monster("acolyte", 24,06)
   des.monster("acolyte", 28,12)
   des.monster("acolyte", 20,08)
   des.monster("acolyte", 18,08)
   des.monster("acolyte", 13,13)
   des.monster("acolyte", 09,10)
   -- Non diggable walls
   des.non_diggable(selection.area(00,00,38,19))
   -- Monsters on siege duty.
   des.monster("human zombie", 41,02)
   des.monster("human mummy", 42,08)
   des.monster("human zombie", 03,01)
   des.monster("human mummy", 64,05)
   des.monster("human mummy", 70,09)
   des.monster("human zombie", 50,03)
   des.monster("human mummy", 47,09)
   des.monster("human mummy", 51,10)
   des.monster("human mummy", 02,12)
   des.monster("human mummy", 43,15)
   des.monster("human mummy", 74,10)
   des.monster("human mummy", 35,17)
   des.monster("human mummy", 06,19)
   des.monster("human mummy", 47,11)

   des.monster("scorpion")
   des.monster("scorpion")
   des.monster("scorpion")
   des.monster('S', 03,10)
   des.monster('S', 71,12)
end

local all_level_funcs = {
   ["Quetzalcoatl"] = jungle,
   ["Camaxtli"] = jungle,
   ["Huhetotl"] = jungle,
   ["Anu"] = ziggurat,
   ["Ishtar"] = ziggurat,
   ["Anshar"] = ziggurat,
   ["Athena"] = parthenon,
   ["Hermes"] = parthenon,
   ["Poseidon"] = parthenon,
   ["Lugh"] = druid,
   ["Brigit"] = druid,
   ["Manannan Mac Lir"] = druid,
   ["Attis"] = parthenon,
   ["Cybele"] = parthenon,
   ["Sabazios"] = parthenon,
   ["Mercury"] = parthenon,
   ["Venus"] = parthenon,
   ["Mars"] = parthenon,
   ["Tyr"] = norse,
   ["Odin"] = norse,
   ["Loki"] = norse,
   ["Ptah"] = egyptian,
   ["Thoth"] = egyptian,
   ["Anhur"] = egyptian,
}

local level_func = all_level_funcs[des.ugname()] or classic
level_func()
