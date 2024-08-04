-- NetHack yendor fakewiz1.lua	$NHDT-Date: 1652196025 2022/05/10 15:20:25 $  $NHDT-Branch: NetHack-3.7 $:$NHDT-Revision: 1.2 $
--	Copyright (c) 1989 by Jean-Christophe Collet
--	Copyright (c) 1992 by M. Stephenson and Izchak Miller
-- NetHack may be freely redistributed.  See license for details.
--
des.level_init({ style="mazegrid", bg ="-" });

des.level_flags("mazelevel");

local tmpbounds = selection.match("-");
local bnds = tmpbounds:bounds();
local bounds2 = selection.fillrect(bnds.lx, bnds.ly + 1, bnds.hx - 2, bnds.hy - 1);

-- The classic fake wizard's tower
local fakewiz_classic = { halign = "center", valign = "center", map = [[
.........
.}}}}}}}.
.}}---}}.
.}--.--}.
.}|...|}.
.}--.--}.
.}}---}}.
.}}}}}}}.
.........
]], contents = function(rm)
   des.levregion({ region={01,00,79,20}, region_islev=1, exclude={0,0,8,8}, type="stair-up" })
   des.levregion({ region={01,00,79,20}, region_islev=1, exclude={0,0,8,8}, type="stair-down" })
   des.levregion({ region={01,00,79,20}, region_islev=1, exclude={0,0,8,8}, type="branch" });
   des.teleport_region({ region={01,00,79,20}, region_islev=1,exclude={2,2,6,6} })
   des.levregion({ region={4,4,4,4}, type="portal", name="wizard3" })
   des.mazewalk(08,05,"east")
   des.region({ region={04,03,06,06},lit=0,type="ordinary",irregular=1,arrival_room=true })
   des.monster("L",04,04)
   des.monster("vampire leader",03,04)
   des.monster("kraken",06,06)
   -- And to make things a little harder.
   des.trap("board",04,03)
   des.trap("board",04,05)
   des.trap("board",03,04)
   des.trap("board",05,04)
end
}

-- A fake wizard's tower with iron bars and lava
local fakewiz_metal = { halign = "center", valign = "center", map = [[
.........
.LLLLLLL.
.LLFFFLL.
.LFF.FFL.
.LF...FL.
.LFF.FFL.
.LLFFFLL.
.LLLLLLL.
.........
]], contents = function(rm)
   des.levregion({ region={01,00,79,20}, region_islev=1, exclude={0,0,8,8}, type="stair-up" })
   des.levregion({ region={01,00,79,20}, region_islev=1, exclude={0,0,8,8}, type="stair-down" })
   des.levregion({ region={01,00,79,20}, region_islev=1, exclude={0,0,8,8}, type="branch" });
   des.teleport_region({ region={01,00,79,20}, region_islev=1,exclude={2,2,6,6} })
   des.levregion({ region={4,4,4,4}, type="portal", name="wizard3" })
   des.mazewalk(08,05,"east")
   des.region({ region={04,03,06,06},lit=0,type="ordinary",irregular=1,arrival_room=true })
   des.monster("L",04,04)
   des.monster("vampire leader",03,04)
   des.monster("red dragon",06,06)
   -- And to make things a little harder.
   des.trap("fire",04,03)
   des.trap("fire",04,05)
   des.trap("fire",03,04)
   des.trap("fire",05,04)
end
}

local fakewiz_mini = { halign = "center", valign = "center", map = [[
.........
.}}}}}}}.
.}}}}}}}.
.}}---}}.
.}}|.|}}.
.}}---}}.
.}}}}}}}.
.}}}}}}}.
.........
]], contents = function(rm)
   des.levregion({ region={01,00,79,20}, region_islev=1, exclude={0,0,8,8}, type="stair-up" })
   des.levregion({ region={01,00,79,20}, region_islev=1, exclude={0,0,8,8}, type="stair-down" })
   des.levregion({ region={01,00,79,20}, region_islev=1, exclude={0,0,8,8}, type="branch" });
   des.teleport_region({ region={01,00,79,20}, region_islev=1,exclude={2,2,6,6} })
   des.levregion({ region={4,4,4,4}, type="portal", name="wizard3" })
   des.mazewalk(08,05,"east")
   des.region({ region={04,04,04,04},lit=0,type="ordinary",irregular=1,arrival_room=true })
   des.monster("L",04,04)
   des.monster("vampire leader",02,04)
   des.monster("kraken",06,06)
   -- to steal levitation equipment
   des.monster("water nymph",01,01)
   des.monster("water nymph",01,07)
   des.monster("water nymph",07,01)
   des.monster("water nymph",07,07)
   -- to melt ice
   des.monster("red dragon",04,01)
   -- to be annoying
   des.monster("electric eel",04,07)
end
}

local fakewiz_player = { halign = "center", valign = "center", map = [[
.........
.}}}}}}}.
.}.....}.
.}.}}}.}.
.}.}.}.}.
.}.}}}}}.
.}.......
.}}}}}}}.
.........
]], contents = function(rm)
   des.levregion({ region={01,00,79,20}, region_islev=1, exclude={0,0,8,8}, type="stair-up" })
   des.levregion({ region={01,00,79,20}, region_islev=1, exclude={0,0,8,8}, type="stair-down" })
   des.levregion({ region={01,00,79,20}, region_islev=1, exclude={0,0,8,8}, type="branch" });
   des.teleport_region({ region={01,00,79,20}, region_islev=1,exclude={2,2,6,6} })
   des.levregion({ region={4,4,4,4}, type="portal", name="wizard3" })
   des.mazewalk(08,05,"east")
   des.region({ region={04,03,06,06},lit=0,type="ordinary",irregular=1,arrival_room=true })
   local pmon = { "wizard", "valkyrie", "tourist",
              "samurai", "rogue", "ranger", "priestess",
              "priest", "merchant", "monk", "knight", "healer",
              "cavewoman", "caveman", "barbarian",
              "archeologist" }
   shuffle(pmon)
   des.monster(pmon[1],04,04)
   des.monster(pmon[2],02,03)
   des.monster(pmon[3],02,05)
   des.monster(pmon[4],03,02)
   des.monster(pmon[5],03,06)
   des.monster(pmon[6],05,02)
   des.monster(pmon[7],05,06)
   des.monster(pmon[8],06,03)
   des.monster(pmon[9],06,05)
   -- And to make things a little harder.
   des.trap("magic",02,02)
   des.trap("magic",02,04)
   des.trap("magic",02,06)
   des.trap("magic",04,04)
   des.trap("magic",04,06)
   des.trap("magic",06,02)
   des.trap("magic",06,04)
   des.trap("magic",06,06)
end
}

local fakewiz_list = {fakewiz_classic,fakewiz_metal,fakewiz_mini,fakewiz_player}
shuffle(fakewiz_list)
local fakewiz1 = des.map(fakewiz_list[1]);

local protected = bounds2:negate() | fakewiz1;
hell_tweaks(protected);
