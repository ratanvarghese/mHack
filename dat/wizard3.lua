-- NetHack yendor wizard3.lua	$NHDT-Date: 1652196040 2022/05/10 15:20:40 $  $NHDT-Branch: NetHack-3.7 $:$NHDT-Revision: 1.4 $
--	Copyright (c) 1989 by Jean-Christophe Collet
--	Copyright (c) 1992 by M. Stephenson and Izchak Miller
-- NetHack may be freely redistributed.  See license for details.
--

-- Modified heavily for mHack by Ratan Varghese

des.level_init({ style="mazegrid", bg ="-" });

des.level_flags("mazelevel", "noteleport", "hardfloor")

local tmpbounds = selection.match("-");
local bnds = tmpbounds:bounds();
local bounds2 = selection.fillrect(bnds.lx, bnds.ly + 1, bnds.hx - 2, bnds.hy - 1);

-- The classic bottom level of the Wizard's tower
local wiz3_classic = { halign = "center", valign = "center", map = [[
----------------------------x
|..|............S..........|x
|..|..------------------S--|x
|..|..|.........|..........|x
|..S..|.}}}}}}}.|..........|x
|..|..|.}}---}}.|-S--------|x
|..|..|.}--.--}.|..|.......|x
|..|..|.}|...|}.|..|.......|x
|..---|.}--.--}.|..|.......|x
|.....|.}}---}}.|..|.......|x
|.....S.}}}}}}}.|..|.......|x
|.....|.........|..|.......|x
----------------------------x
]], contents = function(rm)
   des.levregion({ type="stair-up", region={01,00,79,20}, region_islev=1, exclude={0,0,28,12} })
   des.levregion({ type="stair-down", region={01,00,79,20}, region_islev=1, exclude={0,0,28,12} })
   des.levregion({ type="branch", region={01,00,79,20}, region_islev=1, exclude={0,0,28,12} })
   des.teleport_region({ region={01,00,79,20}, region_islev=1, exclude={0,0,27,12} })
   des.levregion({ region={25,11,25,11}, type="portal", name="fakewiz1" });
   des.mazewalk(28,09,"east")
   des.region({ region={07,03, 15,11}, lit=0 ,type="morgue", filled=2 })
   des.region({ region={17,06, 18,11}, lit=0, type="beehive", filled=1 })
   -- make the entry chamber a real room; it affects monster arrival
   des.region({ region={20,06,26,11},lit=0,type="ordinary",arrival_room=true,
                contents = function()
                   local w = "north";
                   if percent(50) then w = "west" end
                   des.door({ state="secret", wall=w })
                end
   });
   des.door("closed",18,05)
   des.ladder("up", 11,07)
   -- Non diggable walls
   -- Walls inside the moat stay diggable
   des.non_diggable(selection.area(00,00,06,12))
   des.non_diggable(selection.area(06,00,27,02))
   des.non_diggable(selection.area(16,02,27,12))
   des.non_diggable(selection.area(06,12,16,12))
   --
   des.non_passwall(selection.area(00,00,06,12))
   des.non_passwall(selection.area(06,00,27,02))
   des.non_passwall(selection.area(16,02,27,12))
   des.non_passwall(selection.area(06,12,16,12))
   --
   des.monster("L", 10, 07)
   des.monster("vampire lord", 12, 07)
   -- Some surrounding horrors
   des.monster("kraken", 08, 05)
   des.monster("giant eel", 08, 08)
   des.monster("kraken", 14, 05)
   des.monster("giant eel", 14, 08)
   -- Other monsters
   des.monster("L")
   des.monster("D")
   des.monster("D", 26, 09)
   des.monster("&")
   des.monster("&")
   des.monster("&")
   -- And to make things a little harder.
   des.trap("board",10,07)
   des.trap("board",12,07)
   des.trap("board",11,06)
   des.trap("board",11,08)
   -- Some loot
   des.object(")")
   des.object("!")
   des.object("?")
   des.object("?")
   des.object("(")
   -- treasures
   des.object("\"", 11, 07)
end
}

-- Just dump everything into one room
local wiz3_big_room = { halign = "center", valign = "center", map = [[
----------------------------x
|...........B..BB..........|x
|...........BB..BB.........|x
|...........BBB..B.........|x
|...........BBB..B.........|x
|...........BB..BB.........|x
|..........BB..BB..........|x
|.........BB..BB...........|x
|.........B..BBB...........|x
|.........B..BBB...........|x
|.........BB..BB...........|x
|..........BB..B...........|x
----------------------------x
]], contents = function(rm)
   des.levregion({ type="stair-up", region={01,00,79,20}, region_islev=1, exclude={0,0,28,12} })
   des.levregion({ type="stair-down", region={01,00,79,20}, region_islev=1, exclude={0,0,28,12} })
   des.levregion({ type="branch", region={01,00,79,20}, region_islev=1, exclude={0,0,28,12} })
   des.teleport_region({ region={01,00,79,20}, region_islev=1, exclude={0,0,27,12} })
   des.levregion({ region={1,1,5,5}, type="portal", name="fakewiz1" });
   des.mazewalk(28,09,"east")
   des.region({ region={13,01,14,01}, lit=0, type="beehive", irregular=1, filled=1 })
   des.region({ region={1,1,10,11},lit=0,type="ordinary",arrival_room=true })
   local up_region = selection.area(21,06,26,11)
   des.ladder("up", up_region:rndcoord(1))
   -- Non diggable walls
   des.non_diggable(selection.area(00,00,06,12))
   des.non_diggable(selection.area(06,00,27,02))
   des.non_diggable(selection.area(16,02,27,12))
   des.non_diggable(selection.area(06,12,16,12))
   --
   des.non_passwall(selection.area(00,00,06,12))
   des.non_passwall(selection.area(06,00,27,02))
   des.non_passwall(selection.area(16,02,27,12))
   des.non_passwall(selection.area(06,12,16,12))
   --
   des.monster("L")
   des.monster("vampire lord")
   -- Other monsters
   des.monster("L")
   des.monster("D")
   des.monster("D")
   des.monster("&")
   des.monster("&")
   des.monster("&")
   des.monster()
   des.monster()
   des.monster()
   des.monster()
   -- And to make things a little harder.
   des.trap("magic")
   des.trap("magic")
   des.trap("magic")
   des.trap("magic")
   -- Some loot
   des.object(")")
   des.object("!")
   des.object("?")
   des.object("?")
   des.object("(")
   -- treasures
   des.object("\"")
end
}

-- A bigger moat
local wiz3_moat = { halign = "center", valign = "center", map = [[
----------------------------x
|....}}}}}}}}}}}...........|x
|....}}}}}}}}}}}...........|x
|....}}}}---}}}}...........|x
|....}}}--.--}}}...........|x
|....}}--...--}}--S--------|x
|....}}|.....|}}|..|.......|x
|....}}--...--}}|..|.......|x
|....}}}--.--}}}|..|.......|x
|....}}}}---}}}}|..|.......|x
|....}}}}}}}}}}}|..|.......|x
|....}}}}}}}}}}}|..|.......|x
----------------------------x
]], contents = function(rm)
   des.levregion({ type="stair-up", region={01,00,79,20}, region_islev=1, exclude={0,0,28,12} })
   des.levregion({ type="stair-down", region={01,00,79,20}, region_islev=1, exclude={0,0,28,12} })
   des.levregion({ type="branch", region={01,00,79,20}, region_islev=1, exclude={0,0,28,12} })
   des.teleport_region({ region={01,00,79,20}, region_islev=1, exclude={0,0,27,12} })
   des.levregion({ region={25,11,25,11}, type="portal", name="fakewiz1" });
   des.mazewalk(28,09,"east")
   des.region({ region={07,03, 15,11}, lit=0 ,type="morgue", filled=2 })
   des.region({ region={17,06, 18,11}, lit=0, type="beehive", filled=1 })
   -- make the entry chamber a real room; it affects monster arrival
   des.region({ region={20,06,26,11},lit=0,type="ordinary",arrival_room=true,
                contents = function()
                   local w = "north";
                   if percent(50) then w = "west" end
                   des.door({ state="secret", wall=w })
                end
   });
   des.door("closed",18,05)
   des.ladder("up", 10,06)
   -- Non diggable walls
   -- Walls inside the moat stay diggable
   des.non_diggable(selection.area(00,00,06,12))
   des.non_diggable(selection.area(06,00,27,02))
   des.non_diggable(selection.area(16,02,27,12))
   des.non_diggable(selection.area(06,12,16,12))
   --
   des.non_passwall(selection.area(00,00,06,12))
   des.non_passwall(selection.area(06,00,27,02))
   des.non_passwall(selection.area(16,02,27,12))
   des.non_passwall(selection.area(06,12,16,12))
   --
   des.monster("L", 10,06)
   des.monster("vampire lord", 12, 06)
   -- Some surrounding horrors
   des.monster("kraken", 05, 01)
   des.monster("giant eel", 15, 01)
   des.monster("kraken", 05, 11)
   des.monster("giant eel", 15, 11)
   -- Other monsters
   des.monster("L")
   des.monster("D")
   des.monster("D", 15, 06)
   des.monster("&")
   des.monster("&")
   des.monster("&")
   -- And to make things a little harder.
   des.trap("magic",09,05)
   des.trap("magic",09,06)
   des.trap("magic",09,07)
   des.trap("magic",10,05)
   des.trap("magic",10,07)
   des.trap("magic",11,05)
   des.trap("magic",11,06)
   des.trap("magic",11,07)
   -- Some loot
   des.object(")")
   des.object("!")
   des.object("?")
   des.object("?")
   des.object("(")
   -- treasures
   des.object("\"")
end
}


local wiz3_list = {wiz3_classic, wiz3_big_room, wiz3_moat}
shuffle(wiz3_list)
local wiz3 = des.map(wiz3_list[1]);

local protected = bounds2:negate() | wiz3;
hell_tweaks(protected);
