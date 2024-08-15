-- Written for mHack by Ratan Varghese
des.level_init({ style="solidfill", fg =" " });

des.level_flags("mazelevel", "shortsighted")

--[[
#000000000111111111122222222223333333333444444444455555555556666666666777777
#123456789012345678901234567890123456789012345678901234567890123456789012345
--]]
des.map([[
----------------------------------------------------------------------------0
||............+. -.|......|......|......|...................|..............|1
||............|.--.|......|......|......|...................|..............|2
||............|. -.+......|......|......|------------------+-+-------------|3
|--------------.--.---------+---------+--..................................|4
|- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - |5
|--------------------------------------------------------------------------|6
|- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - |7
|--------------------------------------------------------------------------|8
|- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - |9
|--------------------------------------------------------------------------|0
|- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - |1
|--------------------------------------------------------------------------|2
|- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - |3
|--------------------------------------------------------------------------|4
|- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - |5
|-----------------+-------------.--------------.----------.......----------|6
|- - +.......|..........|- - - -.+.|..........|. - - - - -.------|.........|7
|----|.......|..........|-------.--|..........+............+.....+.........|8
|- - |.......|..........|- - - -.+.|..........|............|.....|.........|9
----------------------------------------------------------------------------0
]]);

-- Level setup
des.region(selection.area(00,00,75,20), "unlit");
-- when falling down on this level, always end up in the maze, and never the south
des.teleport_region({ region = {01,05,74,15}, exclude = {01,16,74,20}, dir = "down" });
-- stairs to Vlad may appear
des.levregion({ region={01,05,74,15}, region_islev=1, exclude={01,16,74,20}, exclude_islev=1, type="branch" });
des.mazewalk({ x=30, y=2, dir="south" });
-- Stairs up, in the maze, away from the stairs down
des.levregion({ region = {01,05,35,15}, exclude = {01,16,74,20}, type="stair-up"});
des.stair("down", 72,18);
des.non_diggable(selection.area(59,16,75,20))
hell_tweaks(selection.area(01,05,74,15):negate())

-- Doors
des.door("random", 05,17)
des.door("random", 14,01)
des.door("random", 18,16)
des.door("random", 19,03)
des.door("random", 28,04)
des.door("random", 33,17)
des.door("random", 33,19)
des.door("random", 38,04)
des.door("random", 46,18)
des.door("random", 59,03)
des.door("locked", 59,18)
des.door("random", 61,03)
des.door("locked", 65,18)

-- Special rooms
des.altar({ x=18,y=18,align="noalign",type="sanctum" })
des.region({ region={36,17,45,19},lit=0,type="morgue",filled=1 })
des.region({ region={61,01,74,02},lit=0,type="morgue",filled=1 })
des.region({ region={02,01,13,03},lit=1,type="shop",filled=1 })
des.region({ region={06,17,12,19},lit=1,type="shop",filled=1 })
des.region({ region={41,01,59,02},lit=1,type="shop",filled=1 })

-- Traps
des.trap("spiked pit")
des.trap("sleep gas")
des.trap("anti magic")
des.trap("fire")
des.trap("fire")
des.trap("fire")
des.trap("magic")
des.trap("magic")

-- Loot
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

-- The resident nasty
des.monster("Orcus",72,18)

-- And its preferred companions
des.monster("human zombie",72,19)
des.monster("shade",72,17)
des.monster("shade",73,18)
des.monster("vampire",71,18)
des.monster("vampire",71,17)
des.monster("vampire lord",73,17)
des.monster("vampire lord",73,19)

-- Randomly placed companions
des.monster("skeleton")
des.monster("skeleton")
des.monster("skeleton")
des.monster("skeleton")
des.monster("skeleton")
des.monster("shade")
des.monster("shade")
des.monster("shade")
des.monster("shade")
des.monster("giant zombie")
des.monster("giant zombie")
des.monster("giant zombie")
des.monster("ettin zombie")
des.monster("ettin zombie")
des.monster("ettin zombie")
des.monster("human zombie")
des.monster("human zombie")
des.monster("human zombie")
des.monster("vampire")
des.monster("vampire")
des.monster("vampire")
des.monster("vampire lord")
des.monster("vampire lord")

-- A few more for the party
des.monster()
des.monster()
des.monster()
des.monster()
des.monster()


