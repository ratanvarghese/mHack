-- Originally from the New Castle Levels patch by Pasi Kallinen
-- Modified for UnNetHack by Patric Mueller
-- Converted to Lua and modified for mHack by Ratan Varghese

des.level_init({ style="mazegrid", bg ="-" });
des.level_flags("mazelevel", "noteleport", "noflipy")
--[[
#000000000111111111122222222223333333333444444444455555555556666666666777777
#123456789012345678901234567890123456789012345678901234567890123456789012345
--]]
des.map([[
---------------------------------------------w}}}}}}}w......................
|...S..S..|..S..S.......|.|.......|....S..F.Sw}}}}}}ww......................
|.|---F-F---F-F--.......+.+.......|....|-----}}}}}}w}wwwwwww......------....
|.S.|...........+.......|.|.......|....|www}}}}}}}w}}}}}ww}w......|....|....
|.|.F...........---------+---------+----}}}}}}}wwwwwww}}}}ww......+.|..|....
|.|-|.\.........+...................|w}}}}}wwww}w...w}}}}www......|....|....
|.|.F...........---------------------}}}}}}wwwwww...www}}}}www....------....
|.S.|...........+...F}}}}}}}}}}}}}w}}}}}w}}}}www}ww..www}}}}}www............
|.|---F--F-F--F-|...F}}ww.ww}}}}}}}}}}wwwww}}}}ww}wwww}}}}}}}}}wwww....wwwww
|...|..|..|..|..S...F}w}w.w}www}}}}}}}w...wwww}}}}}}}}}}}}w}}}}}}}wwwwww}}}}
|.{.-S--S---S--S|...F}}wwwwww}}}}-------S-------}}}}}}}-------}}}w}}}}}}}}}}
|...............|----}}}}www}}ww}| - - - - - - - - }}- - - - |}}-}}}}}}}}}}}
|.-+--+--+-------}}}}}}}}}}}wwwww|-----------------}}}-------}}---}}}}}}}}}}
|.|..|..|..F...}}}wwwwwwwwww}w...| - - - - - - - - -}- - - - - - |www}}}}}}}
|+--F--F----}}}}www---------}-----------------------------------------}}w}}w
|..F}wwww}}}}}}ww..| - - - - - - - - - - - - - - - - - - - - - - - - }}wwwww
----}}}}}}}www}}w..|-------------------------------------------------|w.....
}}}}}}}}}}}wwwwww..+ - - - - - - - - - - - - - - - - - - - - - - - - S......
}}}}}}}}ww}}w......|-------------------------------------------------|......
}}}}}}wwwwwww......| - - - - - - - - - - - - - - - - - - - - - - - - |......
}}}}www............---------------------------------------------------......
]]);

local monster = { 'L','N','E','V','M','O','R','T','X','Z' }
local place = { {15,01},{11,01},{09,01},{05,01},{03,03},
                {03,07},{05,09},{08,09},{12,09},{15,09} }
shuffle(place)
shuffle(monster)

-- everything except the inner walls of the maze are non-diggable
des.non_diggable(selection.area(00,00,19,20))
des.non_diggable(selection.area(19,00,33,14))
des.non_diggable(selection.area(33,00,75,10))
des.non_diggable(selection.area(65,00,75,14))
des.non_diggable(selection.area(69,00,75,20))

des.teleport_region({ region = {33,15,68,20}, region_islev=1, exclude={10,00,18,14}, dir="down" })
des.teleport_region({ region = {47,01,75,09}, region_islev=1, exclude={17,00,44,09}, dir="up" })
des.levregion({ region = {33,15,68,20}, region_islev=1, exclude={00,00,00,00}, type="stair-up" })

des.region(selection.area(00,00,75,20),"unlit")

-- the maze is dark
des.region(selection.area(20,15,68,20),"unlit")
des.region(selection.area(34,11,60,14),"unlit")
des.region(selection.area(60,13,64,14),"unlit")

-- the hallways in the castle are dark
des.region(selection.area(17,05,35,05),"unlit")
des.region(selection.area(25,00,25,04),"unlit")

des.region(selection.area(01,01,03,01),"unlit")
des.region(selection.area(01,01,01,13),"unlit")
des.region(selection.area(01,09,03,11),"unlit")
des.region(selection.area(01,11,15,11),"unlit")

-- the special rooms in the castle
des.region({ region={05,03,15,07},lit=1,type="throne", irregular=1, filled=2 })
des.region({ region={17,01,23,03},lit=1,type="barracks", filled=1 })
des.region({ region={27,01,33,03},lit=1,type="barracks", filled=1 })
des.region({ region={17,07,19,10},lit=1,type="barracks", filled=1 })

des.mazewalk(33,13,"east")

des.feature("fountain", 02,10)

des.drawbridge({ dir="north", state="closed", x=25,y=07})

-- the castle doors
des.door("locked",39,01)
des.door("locked",35,04)
des.door("locked",26,02)
des.door("locked",24,02)
des.door("locked",25,04)
des.door("locked",16,01)
des.door("locked",16,03)
des.door("locked",16,05)
des.door("locked",16,07)
des.door("locked",16,09)
des.door("locked",15,10)
des.door("locked",13,01)
des.door("locked",12,10)
des.door("locked",09,12)
des.door("locked",08,10)
des.door("locked",07,01)
des.door("locked",06,12)
des.door("locked",05,10)
des.door("locked",04,01)
des.door("locked",03,12)
des.door("locked",02,03)
des.door("locked",02,07)
des.door("locked",01,14)

-- door of the small building
des.door("random",66,04)

-- doors for the maze
des.door("locked",69,17)
des.door("locked",40,10)
des.door("locked",19,17)

des.trap("hole",69,04)
des.trap("trap door",33,05)
des.trap("trap door",41,01)

-- monsters in attendance
des.monster(monster[1],15,04)
des.monster(monster[2],13,04)
des.monster(monster[3],11,04)
des.monster(monster[4],09,04)
des.monster(monster[5],07,04)
des.monster(monster[6],15,06)
des.monster(monster[7],13,06)
des.monster(monster[8],11,06)
des.monster(monster[9],09,06)
des.monster(monster[10],07,06)

-- monsters behind the bars
local barred_list = {
	"blue dragon", "red dragon", "gray dragon",
	"silver dragon", "yellow dragon", "gold dragon",
	"iron golem", "iron golem", "iron golem", "iron golem"
}
shuffle(barred_list)
des.monster({ id = table.remove(barred_list, d(#barred_list)), coord = place[1] })
des.monster({ id = table.remove(barred_list, d(#barred_list)), coord = place[2] })
des.monster({ id = table.remove(barred_list, d(#barred_list)), coord = place[3] })
des.monster({ id = table.remove(barred_list, d(#barred_list)), coord = place[4] })
des.monster({ id = table.remove(barred_list, d(#barred_list)), coord = place[5] })
des.monster({ id = table.remove(barred_list, d(#barred_list)), coord = place[6] })
des.monster({ id = table.remove(barred_list, d(#barred_list)), coord = place[7] })
des.monster({ id = table.remove(barred_list, d(#barred_list)), coord = place[8] })
des.monster({ id = table.remove(barred_list, d(#barred_list)), coord = place[9] })
des.monster({ id = table.remove(barred_list, d(#barred_list)), coord = place[10] })

-- prisoners
des.monster({ id = "prisoner", x=02, y=15, peaceful=1, asleep=1 })
des.monster({ id = "prisoner", x=03, y=13, peaceful=1 })
des.monster({ id = "prisoner", x=06, y=13 })
des.monster({ id = "prisoner", x=10, y=13 })

des.monster({ id = "fire giant", x=36, y=03, peaceful=1 })
des.monster({ id = "ochre jelly", x=43, y=01, asleep=1 })

-- treasure
local loc = place[1]
des.object({ id = "chest", trapped = 0, locked = 1, coord = loc,
             contents = function()
                des.object("wishing");
             end
});

-- Prevent monsters from eating it.  (@'s never eat objects)
des.engraving({ coord = loc, type="burn", text="Elbereth" })
des.object({ id = "scroll of scare monster", coord = loc, buc="cursed" })

des.object("chest", place[2])
des.object("chest", place[3])
des.object("chest", place[4])
des.object("chest", place[5])
des.object("chest", place[6])
des.object("chest", place[7])
des.object("chest", place[8])
des.object("chest", place[9])
des.object("chest", place[10])

-- the soldier's equipment; also doubles as a reward for player
-- NW barracks
des.object('[',17,01)
des.object(')',18,01)
des.object('[',19,01)
des.object('[',20,01)
des.object(')',21,01)
des.object('[',22,01)
des.object(')',17,02)
des.object(')',18,02)
des.object('[',19,02)
des.object(')',20,02)
des.object('[',21,02)
des.object('[',22,02)
des.object('[',17,03)
des.object('[',18,03)
des.object(')',19,03)
des.object('[',20,03)
des.object('[',21,03)
des.object(')',22,03)
-- NE barracks
des.object(')',28,01)
des.object('[',29,01)
des.object('[',30,01)
des.object(')',31,01)
des.object('[',32,01)
des.object('[',33,01)
des.object(')',28,02)
des.object(')',29,02)
des.object(')',30,02)
des.object('[',31,02)
des.object('[',32,02)
des.object('[',33,02)
des.object('[',28,03)
des.object(')',29,03)
des.object('[',30,03)
des.object('[',31,03)
des.object(')',32,03)
des.object('[',33,03)

-- the items in the barracks with iron bars, facing the drawbridge
des.object({ id = "arrow", x = 18, y = 07, quantity = d(20) })
des.object({ id = "arrow", x = 18, y = 08, quantity = d(20) })
des.object({ id = "arrow", x = 18, y = 09, quantity = d(20) })
des.object({ id = "arrow", x = 18, y = 10, quantity = d(20) })
if percent(20) then
	des.object({
		id = "arrow", x = 18, y = 07, spe = 2,
		material = "silver", buc = "blessed", quantity = d(20)
	})
end
if percent(20) then
	des.object({
		id = "elven arrow", x = 18, y = 08, spe = 2,
		buc = "blessed", quantity = d(20)
	})
end
if percent(20) then
	des.object({
		id = "elven arrow", x = 18, y = 09, spe = 2,
		buc = "blessed", quantity = d(20)
	})
end
if percent(20) then
	des.object({
		id = "arrow", x = 18, y = 10, spe = 2,
		material = "silver", buc = "blessed", quantity = d(20)
	})
end
des.object({ id = "bow", x = 18, y = 07, spe = 1 })
des.object({ id = "elven bow", x = 18, y = 08 })
des.object({ id = "elven bow", x = 18, y = 09 })
des.object({ id = "bow", x = 18, y = 10 })

-- some boulders on the island
des.object({ id = "boulder", x = 45, y = 06 })
des.object({ id = "boulder", x = 51, y = 08 })
des.object({ id = "boulder", x = 51, y = 06 })

-- polearms for poking the captured monsters
des.object({ id = "partisan", x = 09, y = 03 })
des.object({ id = "ranseur", x = 11, y = 03 })
des.object({ id = "spetum", x = 08, y = 07 })
des.object({ id = "bill-guisarme", x = 12, y = 07 })

