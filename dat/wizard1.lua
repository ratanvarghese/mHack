-- NetHack yendor wizard1.lua	$NHDT-Date: 1652196039 2022/05/10 15:20:39 $  $NHDT-Branch: NetHack-3.7 $:$NHDT-Revision: 1.3 $
--	Copyright (c) 1989 by Jean-Christophe Collet
--	Copyright (c) 1992 by M. Stephenson and Izchak Miller
-- NetHack may be freely redistributed.  See license for details.
--
--
-- The top (real) wizard level.
-- Keeping the Moat for old-time's sake
des.level_init({ style="mazegrid", bg ="-" });

des.level_flags("mazelevel", "noteleport", "hardfloor")

local tmpbounds = selection.match("-");
local bnds = tmpbounds:bounds();
local bounds2 = selection.fillrect(bnds.lx, bnds.ly + 1, bnds.hx - 2, bnds.hy - 1);

-- The classic top level of the Wizard's Tower
local wiz1_classic = { halign = "center", valign = "center", map = [[
----------------------------x
|.......|..|.........|.....|x
|.......S..|.}}}}}}}.|.....|x
|..--S--|..|.}}---}}.|---S-|x
|..|....|..|.}--.--}.|..|..|x
|..|....|..|.}|...|}.|..|..|x
|..--------|.}--.--}.|..|..|x
|..|.......|.}}---}}.|..|..|x
|..S.......|.}}}}}}}.|..|..|x
|..|.......|.........|..|..|x
|..|.......|-----------S-S-|x
|..|.......S...............|x
----------------------------x
]], contents = function(rm)
   des.levregion({ type="stair-up", region={01,00,79,20}, region_islev=1, exclude={0,0,28,12} })
   des.levregion({ type="stair-down", region={01,00,79,20}, region_islev=1, exclude={0,0,28,12} })
   des.levregion({ type="branch", region={01,00,79,20}, region_islev=1, exclude={0,0,28,12} })
   des.teleport_region({ region={01,00,79,20}, region_islev=1, exclude={0,0,27,12} })
   des.region({ region={12,01, 20,09}, lit=0, type="morgue", filled=2, contents=function()
                   local sdwall = { "south", "west", "east" };
                   des.door({ wall = sdwall[math.random(1, #sdwall)], state = "secret" });
   end })
   -- another region to constrain monster arrival
   des.region({ region={01,01, 10,11}, lit=0, type="ordinary", arrival_room=true })
   des.mazewalk(28,05,"east")
   des.ladder("down", 06,05)
   -- Non diggable walls
   -- Walls inside the moat stay diggable
   des.non_diggable(selection.area(00,00,11,12))
   des.non_diggable(selection.area(11,00,21,00))
   des.non_diggable(selection.area(11,10,27,12))
   des.non_diggable(selection.area(21,00,27,10))
   -- Non passable walls
   des.non_passwall(selection.area(00,00,11,12))
   des.non_passwall(selection.area(11,00,21,00))
   des.non_passwall(selection.area(11,10,27,12))
   des.non_passwall(selection.area(21,00,27,10))
   -- The wizard and his guards
   des.monster({ id = "Wizard of Yendor", x=16, y=05, asleep=1 })
   des.monster("hell hound", 15, 05)
   des.monster("vampire lord", 17, 05)
   -- The local treasure
   des.object("Book of the Dead", 16, 05)
   -- Surrounding terror
   des.monster("kraken", 14, 02)
   des.monster("giant eel", 17, 02)
   des.monster("kraken", 13, 04)
   des.monster("giant eel", 13, 06)
   des.monster("kraken", 19, 04)
   des.monster("giant eel", 19, 06)
   des.monster("kraken", 15, 08)
   des.monster("giant eel", 17, 08)
   des.monster("piranha", 15, 02)
   des.monster("piranha", 19, 08)
   -- Random monsters
   des.monster("D")
   des.monster("H")
   des.monster("&")
   des.monster("&")
   des.monster("&")
   des.monster("&")
   -- And to make things a little harder.
   des.trap("board",16,04)
   des.trap("board",16,06)
   des.trap("board",15,05)
   des.trap("board",17,05)
   -- Random traps.
   des.trap("spiked pit")
   des.trap("sleep gas")
   des.trap("anti magic")
   des.trap("magic")
   -- Some random loot.
   des.object("ruby")
   des.object("!")
   des.object("!")
   des.object("?")
   des.object("?")
   des.object("+")
   des.object("+")
   des.object("+")
end
}

-- Inspired by the Wizard's room in Hack 1.0.2
local wiz1_small_room = { halign = "center", valign = "center", map = [[
----------------------------x
|......|...|...|...|...|...|x
|.----.|.|...|...|.|.|.|.|.|x
|....|.|.---------.|.|.|.|.|x
|.--.|.|..|}}}}}}|...|...|.|x
|.--.|.--.|}----}|--------.|x
|....|....|}|..|}|....|....|x
|.--------|}----}|.--.|.--.|x
|.|...|...|}}}}}}|..|.|.--.|x
|.|.|.|.|.---------.|.|....|x
|.|.|.|.|.|...|...|.|.----.|x
|...|...|...|...|...|......|x
----------------------------x
]], contents = function(rm)
   des.levregion({ type="stair-up", region={01,00,79,20}, region_islev=1, exclude={0,0,28,12} })
   des.levregion({ type="stair-down", region={01,00,79,20}, region_islev=1, exclude={0,0,28,12} })
   des.levregion({ type="branch", region={01,00,79,20}, region_islev=1, exclude={0,0,28,12} })
   des.teleport_region({ region={01,00,79,20}, region_islev=1, exclude={0,0,27,12} })
   -- another region to constrain monster arrival
   des.region({ region={01,01, 09,11}, type="ordinary", arrival_room=true })
   des.mazewalk(28,05,"east")
   des.ladder("down", 01,06)

   local door_loc = {
      {10,04}, {10,05}, {10,06}, {10,08},
      {11,03}, {12,03}, {14,03}, {15,03}, {16,03},
      {11,09}, {12,09}, {13,09}, {15,09}, {16,09},
      {17,04}, {17,06}, {17,07}, {17,08}
   }
   shuffle(door_loc)
   des.door("nodoor", door_loc[1][1], door_loc[1][2])

   -- Replace some walls
   local terrain_list = {"|", "|", "|", "|", "T", "}", "L", "C"}
   shuffle(terrain_list)
   local to_terr = terrain_list[1]
   if to_terr ~= "|" then
      des.replace_terrain({ region={01,01,10,11}, fromterrain='|', toterrain=to_terr })
      des.replace_terrain({ region={17,01,26,11}, fromterrain='|', toterrain=to_terr })
      des.replace_terrain({ region={10,01,17,03}, fromterrain='|', toterrain=to_terr })
      des.replace_terrain({ region={10,09,17,11}, fromterrain='|', toterrain=to_terr })
      des.replace_terrain({ region={01,01,10,11}, fromterrain='-', toterrain=to_terr })
      des.replace_terrain({ region={17,01,26,11}, fromterrain='-', toterrain=to_terr })
      des.replace_terrain({ region={10,01,17,03}, fromterrain='-', toterrain=to_terr })
      des.replace_terrain({ region={10,09,17,11}, fromterrain='-', toterrain=to_terr })
      if to_terr == "L" then
         des.region({ region={01,01, 26,11}, type="ordinary", lit=1 })
         des.replace_terrain({ region={01,01,26,11}, fromterrain='}', toterrain='L' })
      end
   end

   -- Non diggable walls
   -- Walls inside the moat stay diggable
   des.non_diggable(selection.area(00,00,10,12))
   des.non_diggable(selection.area(17,00,27,12))
   des.non_diggable(selection.area(10,00,17,03))
   des.non_diggable(selection.area(10,09,17,12))
   -- Non passable walls
   des.non_passwall(selection.area(00,00,10,12))
   des.non_passwall(selection.area(17,00,27,12))
   des.non_passwall(selection.area(10,00,17,03))
   des.non_passwall(selection.area(10,09,17,12))
   -- The wizard and his guard
   des.monster({ id = "Wizard of Yendor", x=14, y=06, asleep=1 })
   des.monster("hell hound", 13, 06)
   -- The local treasure
   des.object("Book of the Dead", 14, 06)
   -- Surrounding terror
   des.monster("vampire lord")
   if to_terr == "L" then
      des.monster("fire elemental")
      des.monster("fire elemental")
      des.monster("fire elemental")
      des.monster("red dragon")
      des.monster("red dragon")
      des.monster("red dragon")
      des.monster("balrog")
      des.monster("balrog")
      des.monster("balrog")
      des.monster("balrog")
   else
      des.monster("kraken", 11, 04)
      des.monster("giant eel", 11, 05)
      des.monster("kraken", 11, 07)
      des.monster("giant eel", 11, 08)
      des.monster("kraken", 16, 04)
      des.monster("giant eel", 16, 05)
      des.monster("kraken", 16, 07)
      des.monster("giant eel", 16, 08)
      des.monster("piranha", 14, 04)
      des.monster("piranha", 13, 08)
   end
   -- Random monsters
   des.monster("D")
   des.monster("H")
   des.monster("&")
   des.monster("&")
   des.monster("&")
   des.monster("&")
   -- And to make things a little harder.
   des.trap("magic")
   des.trap("magic")
   des.trap("magic")
   des.trap("magic")
   -- Random traps.
   des.trap("spiked pit")
   des.trap("sleep gas")
   des.trap("anti magic")
   des.trap("magic")
   -- Some random loot.
   des.object("ruby")
   des.object("!")
   des.object("!")
   des.object("?")
   des.object("?")
   des.object("+")
   des.object("+")
   des.object("+")
end
}

-- Astrological sign: Aries
local wiz1_aries = { halign = "center", valign = "center", map = [[
----------------------------x
|...LLLLLL--....--LLLLLL...|x
|..LLLLLLLL--..--LLLLLLLL..|x
|.LLL....LLL----LLL....LLL.|x
|.LLL.....LLL--LLL.....LLL.|x
|..LLL.....LLLLLL.....LLL..|x
|...........LLLL...........|x
|-------....LLLL....-------|x
|......|....LLLL....|......|x
|......|....LLLL....|......|x
|......+....LLLL....+......|x
|......|....LLLL....|......|x
----------------------------x
]], contents = function(rm)
   des.levregion({ type="stair-up", region={01,00,79,20}, region_islev=1, exclude={0,0,28,12} })
   des.levregion({ type="stair-down", region={01,00,79,20}, region_islev=1, exclude={0,0,28,12} })
   des.levregion({ type="branch", region={01,00,79,20}, region_islev=1, exclude={0,0,28,12} })
   des.teleport_region({ region={01,00,79,20}, region_islev=1, exclude={0,0,27,12} })
   -- another region to constrain monster arrival
   des.region({ region={01,08, 07,11}, type="ordinary", arrival_room=true })
   des.mazewalk(28,05,"east")
   des.ladder("down", 01,11)

   des.door('random', 07,10)
   des.door('random', 20,10)
   des.region({ region={01,01, 26,11}, type="ordinary", lit=1 })
   -- Non diggable walls
   -- Walls inside the moat stay diggable
   des.non_diggable(selection.area(00,00,27,00))
   des.non_diggable(selection.area(00,01,09,12))
   des.non_diggable(selection.area(19,01,27,12))
   des.non_diggable(selection.area(10,12,17,12))
   -- Non passable walls
   des.non_passwall(selection.area(00,00,27,00))
   des.non_passwall(selection.area(00,01,09,12))
   des.non_passwall(selection.area(19,01,27,12))
   des.non_passwall(selection.area(10,12,17,12))
   -- The wizard and his guards
   des.monster({ id = "Wizard of Yendor", x=13, y=01, asleep=1 })
   des.monster("hell hound", 13, 02)
   des.monster("hell hound", 14, 01)
   des.monster("vampire lord", 14, 02)
   -- The local treasure
   des.object("Book of the Dead", 13, 01)
   -- Surrounding terror
   des.monster("fire elemental")
   des.monster("fire elemental")
   des.monster("red dragon")
   des.monster("red dragon")
   des.monster("balrog")
   des.monster("balrog")
   des.monster("balrog")
   -- Random monsters
   des.monster("D")
   des.monster("H")
   des.monster("&")
   des.monster("&")
   des.monster("&")
   des.monster("&")
   des.monster("q")
   des.monster("q")
   des.monster("q")
   -- And to make things a little harder.
   des.trap("fire")
   des.trap("fire")
   des.trap("fire")
   des.trap("fire")
   -- Random traps.
   des.trap("spiked pit")
   des.trap("sleep gas")
   des.trap("anti magic")
   des.trap("magic")
   -- Some random loot.
   des.object("ruby")
   des.object("!")
   des.object("!")
   des.object("?")
   des.object("?")
   des.object("+")
   des.object("+")
   des.object("+")
end
}

-- Astrological sign: Taurus
local wiz1_taurus = { halign = "center", valign = "center", map = [[
----------------------------|
|..    ..|. .... .|..    ..||
|...  ...|.  ..  .|...  ...||
| ...... |..    ..| ...... ||
|  ....  |...  ...|  ....  ||
| ...... |..    ..| ...... ||
|...  ...|.  ..  .|...  ...||
|..    ..|. .... .|..    ..||
|..    ..|. .... .|..    ..||
|...  ...+.  ..  .+...  ...||
| ...... |..    ..| ...... ||
|  ....  |...  ...|  ....  ||
----------------------------|
]], contents = function(rm)
   des.levregion({ type="stair-up", region={01,00,79,20}, region_islev=1, exclude={0,0,28,12} })
   des.levregion({ type="stair-down", region={01,00,79,20}, region_islev=1, exclude={0,0,28,12} })
   des.levregion({ type="branch", region={01,00,79,20}, region_islev=1, exclude={0,0,28,12} })
   des.teleport_region({ region={01,00,79,20}, region_islev=1, exclude={0,0,27,12} })
   -- another region to constrain monster arrival
   des.region({ region={01,11, 08,11}, type="ordinary", arrival_room=true })
   des.mazewalk(28,05,"east")
   des.ladder("down", 01,01)

   des.door('random', 09,09)
   des.door('random', 18,09)
   -- Non diggable walls
   -- Walls inside center stay diggable
   des.non_diggable(selection.area(00,00,27,00))
   des.non_diggable(selection.area(00,01,09,12))
   des.non_diggable(selection.area(18,01,27,12))
   des.non_diggable(selection.area(10,12,17,12))
   -- Non passable walls
   des.non_passwall(selection.area(00,00,27,00))
   des.non_passwall(selection.area(00,01,09,12))
   des.non_passwall(selection.area(18,01,27,12))
   des.non_passwall(selection.area(10,12,17,12))
   -- The wizard and his guards
   des.monster({ id = "Wizard of Yendor", x=13, y=01, asleep=1 })
   des.monster("hell hound", 13, 02)
   des.monster("warg", 14, 01)
   des.monster("vampire lord", 14, 02)
   -- The local treasure
   des.object("Book of the Dead", 13, 01)
   -- Surrounding terror
   des.monster("earth elemental")
   des.monster("earth elemental")
   des.monster("earth elemental")
   des.monster("xorn")
   des.monster("xorn")
   des.monster("xorn")
   des.monster("pit fiend")
   -- Random monsters
   des.monster("D")
   des.monster("H")
   des.monster("&")
   des.monster("&")
   des.monster("&")
   des.monster("&")
   des.monster("q")
   des.monster("q")
   des.monster("q")
   -- And to make things a little harder.
   des.trap("spiked pit")
   des.trap("spiked pit")
   des.trap("spiked pit")
   des.trap("spiked pit")
   -- Random traps.
   des.trap("spiked pit")
   des.trap("sleep gas")
   des.trap("anti magic")
   des.trap("magic")
   -- Some random loot.
   des.object("ruby")
   des.object("!")
   des.object("!")
   des.object("?")
   des.object("?")
   des.object("+")
   des.object("+")
   des.object("+")
end
}

-- Astrological sign: Gemini
local wiz1_gemini = { halign = "center", valign = "center", map = [[
----------------------------x
|....TCC...T....T...CCT....|x
|....TCC...TT..TT...CCT....|x
|.....TCCC..TTTT..CCCT.....|x
|.....TCCCCC....CCCCCT.....|x
|.....TCC..CCCCCC..CCT.....|x
|.....TCC..........CCT.....|x
|.....TCC..CCCCCC..CCT.....|x
|.....TCCCCC....CCCCCT.....|x
|.....TCCC........CCCT.....|x
|....TCC............CCT....|x
|....CCC............CCC....|x
----------------------------x
]], contents = function(rm)
   des.levregion({ type="stair-up", region={01,00,79,20}, region_islev=1, exclude={0,0,28,12} })
   des.levregion({ type="stair-down", region={01,00,79,20}, region_islev=1, exclude={0,0,28,12} })
   des.levregion({ type="branch", region={01,00,79,20}, region_islev=1, exclude={0,0,28,12} })
   des.teleport_region({ region={01,00,79,20}, region_islev=1, exclude={0,0,27,12} })
   -- another region to constrain monster arrival
   des.region({ region={01,11, 08,11}, type="ordinary", arrival_room=true })
   des.mazewalk(28,05,"east")
   des.ladder("down", 01,01)
   -- Non diggable walls
   -- Walls inside center stay diggable
   des.non_diggable(selection.area(00,00,27,00))
   des.non_diggable(selection.area(00,01,09,12))
   des.non_diggable(selection.area(18,01,27,12))
   des.non_diggable(selection.area(10,12,17,12))
   -- Non passable walls
   des.non_passwall(selection.area(00,00,27,00))
   des.non_passwall(selection.area(00,01,09,12))
   des.non_passwall(selection.area(18,01,27,12))
   des.non_passwall(selection.area(10,12,17,12))
   -- The wizard and his guards
   des.monster({ id = "Wizard of Yendor", x=13, y=01, asleep=1 })
   des.monster("hell hound", 13, 02)
   des.monster("jabberwock", 14, 01)
   des.monster("vampire lord", 14, 02)
   -- The local treasure
   des.object("Book of the Dead", 13, 01)
   -- Surrounding terror
   des.monster("air elemental")
   des.monster("air elemental")
   des.monster("air elemental")
   des.monster("blue dragon")
   des.monster("blue dragon")
   des.monster("blue dragon")
   des.monster("xan")
   -- Random monsters
   des.monster("D")
   des.monster("H")
   des.monster("&")
   des.monster("&")
   des.monster("&")
   des.monster("&")
   des.monster("&")
   des.monster("ghost")
   des.monster("ghost")
   -- And to make things a little harder.
   des.trap("anti magic")
   des.trap("anti magic")
   des.trap("anti magic")
   des.trap("anti magic")
   -- Random traps.
   des.trap("spiked pit")
   des.trap("sleep gas")
   des.trap("anti magic")
   des.trap("magic")
   -- Some random loot.
   des.object("ruby")
   des.object("!")
   des.object("!")
   des.object("?")
   des.object("?")
   des.object("+")
   des.object("+")
   des.object("+")
end
}

-- Astrological sign: Cancer
local wiz1_cancer = { halign = "center", valign = "center", map = [[
----------------------------x
|IIIIIIIIIIIIIIIIIIIIIIIIII|x
|IIII}}}}}}}}}}}}}}}}}}IIII|x
|III}}-S-}}IIIIIIIIIIIIIIII|x
|III}--.--}IIIIIII}}}}}IIII|x
|III}S...S}IIIIII}}---}}III|x
|III}--.--}IIIIII}--.--}III|x
|III}}-S-}}IIIIII}|...|}III|x
|IIII}}}}}IIIIIII}--.--}III|x
|IIIIIIIIIIIIIIII}}---}}III|x
|IIII}}}}}}}}}}}}}}}}}}IIII|x
|IIIIIIIIIIIIIIIIIIIIIIIIII|x
----------------------------x
]], contents = function(rm)
   des.levregion({ type="stair-up", region={01,00,79,20}, region_islev=1, exclude={0,0,28,12} })
   des.levregion({ type="stair-down", region={01,00,79,20}, region_islev=1, exclude={0,0,28,12} })
   des.levregion({ type="branch", region={01,00,79,20}, region_islev=1, exclude={0,0,28,12} })
   des.teleport_region({ region={01,00,79,20}, region_islev=1, exclude={0,0,27,12} })
   -- another region to constrain monster arrival
   des.region({ region={06,03, 08,06}, type="ordinary", arrival_room=true })
   des.mazewalk(28,05,"east")
   des.ladder("down", 07,05)
   -- Non diggable walls
   -- Walls inside center stay diggable
   des.non_diggable(selection.area(00,00,27,00))
   des.non_diggable(selection.area(00,12,27,12))
   des.non_diggable(selection.area(00,00,00,12))
   des.non_diggable(selection.area(27,00,27,12))
   -- Non passable walls
   des.non_passwall(selection.area(00,00,27,00))
   des.non_passwall(selection.area(00,12,27,12))
   des.non_passwall(selection.area(00,00,00,12))
   des.non_passwall(selection.area(27,00,27,12))
   -- The wizard and his guards
   des.monster({ id = "Wizard of Yendor", x=20, y=07, asleep=1 })
   des.monster("hell hound", 20, 08)
   des.monster("winter wolf", 20, 06)
   des.monster("vampire lord", 19, 07)
   -- The local treasure
   des.object("Book of the Dead", 20, 07)
   -- Surrounding terror
   des.monster("kraken", 18, 04)
   des.monster("giant eel", 22, 04)
   des.monster("kraken", 18, 10)
   des.monster("giant eel", 22, 10)
   des.monster("kraken", 05, 02)
   des.monster("giant eel", 09, 02)
   des.monster("kraken", 05, 08)
   des.monster("giant eel", 09, 08)
   -- Random monsters
   des.monster("silver dragon")
   des.monster("frost giant")
   des.monster("ice devil")
   des.monster("ice devil")
   des.monster("&")
   des.monster("&")
   des.monster("&")
   des.monster("white dragon")
   des.monster("white dragon")
   -- And to make things a little harder.
   des.trap("magic")
   des.trap("magic")
   des.trap("magic")
   des.trap("magic")
   -- Random traps.
   des.trap("spiked pit")
   des.trap("sleep gas")
   des.trap("anti magic")
   des.trap("magic")
   -- Some random loot.
   des.object("ruby")
   des.object("!")
   des.object("!")
   des.object("?")
   des.object("?")
   des.object("+")
   des.object("+")
   des.object("+")
end
}

-- Astrological sign: Leo
local wiz1_leo = { halign = "center", valign = "center", map = [[
----------------------------x
|..........LLLLLLL...|.....|x
|.........LL.....LL..|.....|x
|........LL.......LL.|.....|x
|........LL.......LL.|.....|x
|........LL.......LL.|.....|x
|.........LL.....LL..----S-|x
|.....LLLLLL....LL.........|x
|.....L----L....LL..LL.....|x
|.....L|..|L....LL..LL.....|x
|.....L----L.....LLLL......|x
|.....LLLLLL...............|x
----------------------------x
]], contents = function(rm)
   des.levregion({ type="stair-up", region={01,00,79,20}, region_islev=1, exclude={0,0,28,12} })
   des.levregion({ type="stair-down", region={01,00,79,20}, region_islev=1, exclude={0,0,28,12} })
   des.levregion({ type="branch", region={01,00,79,20}, region_islev=1, exclude={0,0,28,12} })
   des.teleport_region({ region={01,00,79,20}, region_islev=1, exclude={0,0,27,12} })
   -- another region to constrain monster arrival
   des.region({ region={22,01, 26,05}, type="ordinary", arrival_room=true })
   des.mazewalk(28,05,"east")
   des.ladder("down", 26,01)
   -- Non diggable walls
   -- Walls inside center stay diggable
   des.non_diggable(selection.area(00,00,27,00))
   des.non_diggable(selection.area(00,12,27,12))
   des.non_diggable(selection.area(00,00,00,12))
   des.non_diggable(selection.area(27,00,27,12))
   -- Non passable walls
   des.non_passwall(selection.area(00,00,27,00))
   des.non_passwall(selection.area(00,12,27,12))
   des.non_passwall(selection.area(00,00,00,12))
   des.non_passwall(selection.area(27,00,27,12))
   -- The wizard and his guards
   des.monster({ id = "Wizard of Yendor", x=09, y=09, asleep=1 })
   des.monster("hell hound", 08, 09)
   -- The local treasure
   des.object("Book of the Dead", 09, 09)
   -- Surrounding terror
   des.monster("vampire lord")
   des.monster("fire elemental")
   des.monster("fire elemental")
   des.monster("red dragon")
   des.monster("red dragon")
   des.monster("balrog")
   des.monster("balrog")
   des.monster("balrog")
   -- Random monsters
   des.monster("D")
   des.monster("H")
   des.monster("&")
   des.monster("&")
   des.monster("&")
   des.monster("&")
   des.monster("f")
   des.monster("f")
   des.monster("f")
   -- And to make things a little harder.
   des.trap("fire")
   des.trap("fire")
   des.trap("fire")
   des.trap("fire")
   -- Random traps.
   des.trap("spiked pit")
   des.trap("sleep gas")
   des.trap("anti magic")
   des.trap("magic")
   -- Some random loot.
   des.object("ruby")
   des.object("!")
   des.object("!")
   des.object("?")
   des.object("?")
   des.object("+")
   des.object("+")
   des.object("+")
end
}

-- Astrological sign: Virgo
local wiz1_virgo = { halign = "center", valign = "center", map = [[
----------------------------|
|. ------- |....|         .||
|.--.....----..------     .||
|.S..--.....-SS-....--    .||
|.--..|...-......-...---  .||
|. ---|..----..----....-- .||
|.    |..|  |..|  |..|..--.||
|.    |..|  |..|..S..||..|.||
|.    |..|  |..|. |..|..||.||
|.    |..|  |..|. |....---.||
|.    ----  ----. --..--  .||
|................  --..S...||
----------------------------|
]], contents = function(rm)
   des.levregion({ type="stair-up", region={01,00,79,20}, region_islev=1, exclude={0,0,28,12} })
   des.levregion({ type="stair-down", region={01,00,79,20}, region_islev=1, exclude={0,0,28,12} })
   des.levregion({ type="branch", region={01,00,79,20}, region_islev=1, exclude={0,0,28,12} })
   des.teleport_region({ region={01,00,79,20}, region_islev=1, exclude={0,0,27,12} })
   -- another region to constrain monster arrival
   des.region({ region={01,11, 08,11}, type="ordinary", arrival_room=true })
   des.mazewalk(28,05,"east")
   des.ladder("down", 01,11)
   -- Non diggable walls
   -- Walls inside center stay diggable
   des.non_diggable(selection.area(00,00,27,00))
   des.non_diggable(selection.area(00,12,27,12))
   des.non_diggable(selection.area(00,00,00,12))
   des.non_diggable(selection.area(27,00,27,12))
   -- Non passable walls
   des.non_passwall(selection.area(00,00,27,00))
   des.non_passwall(selection.area(00,12,27,12))
   des.non_passwall(selection.area(00,00,00,12))
   des.non_passwall(selection.area(27,00,27,12))
   -- The wizard and his guards
   des.monster({ id = "Wizard of Yendor", x=13, y=01, asleep=1 })
   des.monster("hell hound", 13, 02)
   des.monster("giant mimic", 14, 01)
   des.monster("vampire lord", 14, 02)
   -- The local treasure
   des.object("Book of the Dead", 13, 01)
   -- Surrounding terror
   des.monster("earth elemental")
   des.monster("earth elemental")
   des.monster("earth elemental")
   des.monster("xorn")
   des.monster("xorn")
   des.monster("xorn")
   des.monster("pit fiend")
   -- Random monsters
   des.monster("D")
   des.monster("H")
   des.monster("&")
   des.monster("&")
   des.monster("&")
   des.monster("&")
   des.monster("q")
   des.monster("q")
   des.monster("q")
   -- And to make things a little harder.
   des.trap("spiked pit")
   des.trap("spiked pit")
   des.trap("spiked pit")
   des.trap("spiked pit")
   -- Random traps.
   des.trap("spiked pit")
   des.trap("sleep gas")
   des.trap("anti magic")
   des.trap("magic")
   -- Some random loot.
   des.object("ruby")
   des.object("!")
   des.object("!")
   des.object("?")
   des.object("?")
   des.object("+")
   des.object("+")
   des.object("+")
end
}

-- Astrological sign: Libra
local wiz1_libra = { halign = "center", valign = "center", map = [[
----------------------------x
|..........................|x
|..........TTTTTT..........|x
|.........TT....TT.........|x
|.........T......T.........|x
|....TTTTTTCCCCCCTTTTTT....|x
|....CCCCCCCCCCCCCCCCCC....|x
|....C................C....|x
|....CCCCCCCCCCCCCCCCCC....|x
|....TTTTTTTTTTTTTTTTTT....|x
|..........................|x
|..........................|x
----------------------------x
]], contents = function(rm)
   des.replace_terrain({ region={02,01, 09,11}, fromterrain=".", toterrain="C", chance=40 })
   des.replace_terrain({ region={18,01, 25,11}, fromterrain=".", toterrain="C", chance=40 })

   des.levregion({ type="stair-up", region={01,00,79,20}, region_islev=1, exclude={0,0,28,12} })
   des.levregion({ type="stair-down", region={01,00,79,20}, region_islev=1, exclude={0,0,28,12} })
   des.levregion({ type="branch", region={01,00,79,20}, region_islev=1, exclude={0,0,28,12} })
   des.teleport_region({ region={01,00,79,20}, region_islev=1, exclude={0,0,27,12} })
   -- another region to constrain monster arrival
   des.region({ region={01,11, 08,11}, type="ordinary", arrival_room=true })
   des.mazewalk(28,05,"east")
   des.ladder("down", 01,11)
   -- Non diggable walls
   -- Walls inside center stay diggable
   des.non_diggable(selection.area(00,00,27,00))
   des.non_diggable(selection.area(00,12,27,12))
   des.non_diggable(selection.area(00,00,00,12))
   des.non_diggable(selection.area(27,00,27,12))
   -- Non passable walls
   des.non_passwall(selection.area(00,00,27,00))
   des.non_passwall(selection.area(00,12,27,12))
   des.non_passwall(selection.area(00,00,00,12))
   des.non_passwall(selection.area(27,00,27,12))
   -- The wizard and his guards
   des.monster({ id = "Wizard of Yendor", x=13, y=03, asleep=1 })
   des.monster("hell hound", 13, 04)
   des.monster("jabberwock", 14, 03)
   des.monster("vampire lord", 14, 04)
   -- The local treasure
   des.object("Book of the Dead", 13, 03)
   -- Surrounding terror
   des.monster("air elemental")
   des.monster("air elemental")
   des.monster("air elemental")
   des.monster("blue dragon")
   des.monster("blue dragon")
   des.monster("blue dragon")
   des.monster("xan")
   -- Random monsters
   des.monster("D")
   des.monster("H")
   des.monster("&")
   des.monster("&")
   des.monster("&")
   des.monster("&")
   des.monster("&")
   des.monster("ghost")
   des.monster("ghost")
   -- And to make things a little harder.
   des.trap("anti magic")
   des.trap("anti magic")
   des.trap("anti magic")
   des.trap("anti magic")
   -- Random traps.
   des.trap("spiked pit")
   des.trap("sleep gas")
   des.trap("anti magic")
   des.trap("magic")
   -- Some random loot.
   des.object("ruby")
   des.object("!")
   des.object("!")
   des.object("?")
   des.object("?")
   des.object("+")
   des.object("+")
   des.object("+")
end
}

-- Astrological sign: Scorpio
local wiz1_scorpio = { halign = "center", valign = "center", map = [[
----------------------------x
|.w}}}}}}}w-....-wwwwwwwww.|x
|w}}wwwww}}--..--}}}}wwwwww|x
|w}ww}}wwwww-SS-wwww}}wwwww|x
|w}}ww}www}wwwwww}www}wwwww|x
|ww}}}}ww}}}}ww}}}}ww}wwwww|x
|wwwww}ww}ww}ww}ww}ww}wwwww|x
|wwwww}ww}ww}ww}ww}ww}w}}ww|x
|wwwww}ww}ww}ww}ww}ww}}}}}w|x
|wwwww}ww}ww}ww}ww}wwwwww}}|x
|wwwww}}}}ww}}}}ww}}}}}}}}w|x
|.wwwwwwwwwwwwwwwwwwwww}}w.|x
----------------------------x
]], contents = function(rm)
   des.levregion({ type="stair-up", region={01,00,79,20}, region_islev=1, exclude={0,0,28,12} })
   des.levregion({ type="stair-down", region={01,00,79,20}, region_islev=1, exclude={0,0,28,12} })
   des.levregion({ type="branch", region={01,00,79,20}, region_islev=1, exclude={0,0,28,12} })
   des.teleport_region({ region={01,00,79,20}, region_islev=1, exclude={0,0,27,12} })
   -- another region to constrain monster arrival
   des.region({ region={01,11, 08,11}, type="ordinary", arrival_room=true })
   des.mazewalk(28,05,"east")
   des.ladder("down", 01,11)
   -- Non diggable walls
   -- Walls inside center stay diggable
   des.non_diggable(selection.area(00,00,27,00))
   des.non_diggable(selection.area(00,12,27,12))
   des.non_diggable(selection.area(00,00,00,12))
   des.non_diggable(selection.area(27,00,27,12))
   -- Non passable walls
   des.non_passwall(selection.area(00,00,27,00))
   des.non_passwall(selection.area(00,12,27,12))
   des.non_passwall(selection.area(00,00,00,12))
   des.non_passwall(selection.area(27,00,27,12))
   -- The wizard and his guards
   des.monster({ id = "Wizard of Yendor", x=13, y=01, asleep=1 })
   des.monster("hell hound", 13, 02)
   des.monster({ id = "giant mimic", x = 14, y = 01, appear_as = "obj:chest" })
   des.monster("vampire lord", 14, 02)
   -- The local treasure
   des.object("Book of the Dead", 13, 01)
   -- Surrounding terror
   des.monster("kraken", 03, 01)
   des.monster("giant eel", 09, 01)
   des.monster("kraken", 17, 02)
   des.monster("giant eel", 20, 02)
   des.monster("kraken", 16, 10)
   des.monster("giant eel", 12, 10)
   des.monster("kraken", 18, 10)
   des.monster("giant eel", 26, 09)
   -- Random monsters
   des.monster("water nymph")
   des.monster("water troll")
   des.monster("water elemental")
   des.monster("&")
   des.monster("&")
   des.monster("&")
   des.monster("scorpion")
   des.monster("scorpion")
   des.monster("scorpion")
   des.monster({ id = "giant mimic", appear_as = "obj:chest" })
   des.monster({ id = "giant mimic", appear_as = "obj:chest" })
   des.monster({ id = "giant mimic", appear_as = "obj:chest" })
   -- And to make things a little harder.
   des.trap("magic")
   des.trap("magic")
   des.trap("magic")
   des.trap("magic")
   -- Random traps.
   des.trap("spiked pit")
   des.trap("sleep gas")
   des.trap("anti magic")
   des.trap("magic")
   -- Some random loot.
   des.object("ruby")
   des.object("chest")
   des.object("chest")
   des.object("chest")
   des.object("chest")
   des.object("chest")
   des.object("chest")
   des.object("chest")
end
}

-- Astrological sign: Sagittarius
local wiz1_sagittarius = { halign = "center", valign = "center", map = [[
----------------------------x
|LLLLLL......LLLLLL.LLLLLLL|x
|L....L......LLLLLL.LLLLLLL|x
|L....L........LLLL.LLLLLLL|x
|L....L..LL...LLLLL.LL---LL|x
|LLLLLL..LLL.LLL.LL.L--.--L|x
|L.L..L...LLLLL..LL.L|...|L|x
|L.L..L....LLL......L--.--L|x
|L.LLLL...LLLLL.....LL---LL|x
|L....L..LLL.LLL....LLLLLLL|x
|L....L.LLL...LL....LLLLLLL|x
|LLLLLL.LL..........LLLLLLL|x
----------------------------x
]], contents = function(rm)
   des.levregion({ type="stair-up", region={01,00,79,20}, region_islev=1, exclude={0,0,28,12} })
   des.levregion({ type="stair-down", region={01,00,79,20}, region_islev=1, exclude={0,0,28,12} })
   des.levregion({ type="branch", region={01,00,79,20}, region_islev=1, exclude={0,0,28,12} })
   des.teleport_region({ region={01,00,79,20}, region_islev=1, exclude={0,0,27,12} })
   -- another region to constrain monster arrival
   des.region({ region={02,02, 05,04}, type="ordinary", arrival_room=true })
   des.mazewalk(28,05,"east")
   des.ladder("down", 03,03)
   des.region({ region={01,01, 26,11}, type="ordinary", lit=1 })
   -- Walls inside center stay diggable
   des.non_diggable(selection.area(00,00,27,00))
   des.non_diggable(selection.area(00,12,27,12))
   des.non_diggable(selection.area(00,00,00,12))
   des.non_diggable(selection.area(27,00,27,12))
   -- Non passable walls
   des.non_passwall(selection.area(00,00,27,00))
   des.non_passwall(selection.area(00,12,27,12))
   des.non_passwall(selection.area(00,00,00,12))
   des.non_passwall(selection.area(27,00,27,12))
   -- The wizard and his guards
   des.monster({ id = "Wizard of Yendor", x=23, y=06, asleep=1 })
   des.monster("hell hound", 22, 06)
   des.monster("vampire lord", 22, 06)
   -- The local treasure
   des.object("Book of the Dead", 23, 06)
   -- Surrounding terror
   des.monster("fire elemental")
   des.monster("fire elemental")
   des.monster("red dragon")
   des.monster("red dragon")
   des.monster("balrog")
   des.monster("balrog")
   des.monster("balrog")
   -- Random monsters
   des.monster("D")
   des.monster("H")
   des.monster("&")
   des.monster("&")
   des.monster("&")
   des.monster("&")
   des.monster("C")
   des.monster("C")
   des.monster("C")
   -- And to make things a little harder.
   des.trap("fire")
   des.trap("fire")
   des.trap("fire")
   des.trap("fire")
   -- Random traps.
   des.trap("spiked pit")
   des.trap("sleep gas")
   des.trap("anti magic")
   des.trap("magic")
   -- Some random loot.
   des.object("ruby")
   des.object("!")
   des.object("!")
   des.object("?")
   des.object("?")
   des.object("+")
   des.object("+")
   des.object("+")
end
}

-- Astrological sign: Capricorn
local wiz1_capricorn = { halign = "center", valign = "center", map = [[
----------------------------x
|         --....----..--   |x
|          --..----....--  |x
|           ---- -..--..-  |x
|------      -----..--..-  |x
|-....--    --.........--  |x
|-.....--  --.........--   |x
|----...----...-----...--  |x
|   --...--...-------...-  |x
|    --......-- -..---..-  |x
|     --....--  -.......-  |x
|      --..--   ---....--  |x
----------------------------x
]], contents = function(rm)
   des.levregion({ type="stair-up", region={01,00,79,20}, region_islev=1, exclude={0,0,28,12} })
   des.levregion({ type="stair-down", region={01,00,79,20}, region_islev=1, exclude={0,0,28,12} })
   des.levregion({ type="branch", region={01,00,79,20}, region_islev=1, exclude={0,0,28,12} })
   des.teleport_region({ region={01,00,79,20}, region_islev=1, exclude={0,0,27,12} })
   -- another region to constrain monster arrival
   des.region({ region={02,02, 05,04}, type="ordinary", arrival_room=true })
   des.mazewalk(28,05,"east")
   des.ladder("down", 02,05)
   -- Walls inside center stay diggable
   des.non_diggable(selection.area(00,00,27,00))
   des.non_diggable(selection.area(00,12,27,12))
   des.non_diggable(selection.area(00,00,00,12))
   des.non_diggable(selection.area(27,00,27,12))
   -- Non passable walls
   des.non_passwall(selection.area(00,00,27,00))
   des.non_passwall(selection.area(00,12,27,12))
   des.non_passwall(selection.area(00,00,00,12))
   des.non_passwall(selection.area(27,00,27,12))
   -- The wizard and his guards
   des.monster({ id = "Wizard of Yendor", x=13, y=01, asleep=1 })
   des.monster("hell hound", 13, 02)
   des.monster("warg", 14, 01)
   des.monster("vampire lord", 14, 02)
   -- The local treasure
   des.object("Book of the Dead", 13, 01)
   -- Surrounding terror
   des.monster("earth elemental")
   des.monster("earth elemental")
   des.monster("earth elemental")
   des.monster("xorn")
   des.monster("xorn")
   des.monster("xorn")
   des.monster("pit fiend")
   -- Random monsters
   des.monster("D")
   des.monster("H")
   des.monster("&")
   des.monster("&")
   des.monster("&")
   des.monster("&")
   des.monster("q")
   des.monster("q")
   des.monster("q")
   -- And to make things a little harder.
   des.trap("spiked pit")
   des.trap("spiked pit")
   des.trap("spiked pit")
   des.trap("spiked pit")
   -- Random traps.
   des.trap("spiked pit")
   des.trap("sleep gas")
   des.trap("anti magic")
   des.trap("magic")
   -- Some random loot.
   des.object("ruby")
   des.object("!")
   des.object("!")
   des.object("?")
   des.object("?")
   des.object("+")
   des.object("+")
   des.object("+")
end
}

-- Astrological sign: Aquarius
local wiz1_aquarius = { halign = "center", valign = "center", map = [[
----------------------------x
|..........................|x
|..........................|x
|..........................|x
|......TTTTTT..TTTTTT......|x
|..TTTTTT..TTTTTT..TTTTTT..|x
|..C...C...C....C...C...C..|x
|..C...TTTTTT..TTTTTT...C..|x
|..TTTTTT..TTTTTT..TTTTTT..|x
|..........................|x
|..........................|x
|..........................|x
----------------------------x
]], contents = function(rm)
   des.replace_terrain({ region={02,01, 24,04}, fromterrain=".", toterrain="C", chance=40 })
   des.replace_terrain({ region={02,08, 24,11}, fromterrain=".", toterrain="C", chance=40 })

   des.levregion({ type="stair-up", region={01,00,79,20}, region_islev=1, exclude={0,0,28,12} })
   des.levregion({ type="stair-down", region={01,00,79,20}, region_islev=1, exclude={0,0,28,12} })
   des.levregion({ type="branch", region={01,00,79,20}, region_islev=1, exclude={0,0,28,12} })
   des.teleport_region({ region={01,00,79,20}, region_islev=1, exclude={0,0,27,12} })
   -- another region to constrain monster arrival
   des.region({ region={01,11, 08,11}, type="ordinary", arrival_room=true })
   des.mazewalk(28,05,"east")
   des.ladder("down", 01,11)
   -- Non diggable walls
   -- Walls inside center stay diggable
   des.non_diggable(selection.area(00,00,27,00))
   des.non_diggable(selection.area(00,12,27,12))
   des.non_diggable(selection.area(00,00,00,12))
   des.non_diggable(selection.area(27,00,27,12))
   -- Non passable walls
   des.non_passwall(selection.area(00,00,27,00))
   des.non_passwall(selection.area(00,12,27,12))
   des.non_passwall(selection.area(00,00,00,12))
   des.non_passwall(selection.area(27,00,27,12))
   -- The wizard and his guards
   des.monster({ id = "Wizard of Yendor", x=13, y=07, asleep=1 })
   des.monster("hell hound", 13, 06)
   des.monster("jabberwock", 14, 06)
   des.monster("vampire lord", 14, 07)
   -- The local treasure
   des.object("Book of the Dead", 13, 07)
   -- Surrounding terror
   des.monster("air elemental")
   des.monster("air elemental")
   des.monster("air elemental")
   des.monster("blue dragon")
   des.monster("blue dragon")
   des.monster("blue dragon")
   des.monster("xan")
   -- Random monsters
   des.monster("D")
   des.monster("H")
   des.monster("&")
   des.monster("&")
   des.monster("&")
   des.monster("&")
   des.monster("&")
   des.monster("ghost")
   des.monster("ghost")
   -- And to make things a little harder.
   des.trap("anti magic")
   des.trap("anti magic")
   des.trap("anti magic")
   des.trap("anti magic")
   -- Random traps.
   des.trap("spiked pit")
   des.trap("sleep gas")
   des.trap("anti magic")
   des.trap("magic")
   -- Some random loot.
   des.object("ruby")
   des.object("!")
   des.object("!")
   des.object("?")
   des.object("?")
   des.object("+")
   des.object("+")
   des.object("+")
end
}

-- Astrological sign: Pisces
local wiz1_pisces = { halign = "center", valign = "center", map = [[
----------------------------x
|II}}}IIII--....--IIII}}}II|x
|IIII}}}III--..--III}}}IIII|x
|IIIIII}}}II----II}}}IIIIII|x
|IIIIIII}}}IIIIII}}}IIIIIII|x
|IIIIIIII}}}IIII}}}IIIIIIII|x
|II}}}}}}}}}}}}}}}}}}}}}}II|x
|IIIIIIII}}}IIII}}}IIIIIIII|x
|IIIIIII}}}IIIIII}}}IIIIIII|x
|IIIIII}}}IIIIIIII}}}IIIIII|x
|IIII}}}IIIIIIIIIIII}}}IIII|x
|II}}}IIIIIIIIIIIIIIII}}}II|x
----------------------------x
]], contents = function(rm)
   des.levregion({ type="stair-up", region={01,00,79,20}, region_islev=1, exclude={0,0,28,12} })
   des.levregion({ type="stair-down", region={01,00,79,20}, region_islev=1, exclude={0,0,28,12} })
   des.levregion({ type="branch", region={01,00,79,20}, region_islev=1, exclude={0,0,28,12} })
   des.teleport_region({ region={01,00,79,20}, region_islev=1, exclude={0,0,27,12} })
   -- another region to constrain monster arrival
   des.region({ region={06,03, 08,06}, type="ordinary", arrival_room=true })
   des.mazewalk(28,05,"east")
   des.ladder("down", 01,11)
   -- Non diggable walls
   -- Walls inside center stay diggable
   des.non_diggable(selection.area(00,00,27,00))
   des.non_diggable(selection.area(00,12,27,12))
   des.non_diggable(selection.area(00,00,00,12))
   des.non_diggable(selection.area(27,00,27,12))
   -- Non passable walls
   des.non_passwall(selection.area(00,00,27,00))
   des.non_passwall(selection.area(00,12,27,12))
   des.non_passwall(selection.area(00,00,00,12))
   des.non_passwall(selection.area(27,00,27,12))
   -- The wizard and his guards
   des.monster({ id = "Wizard of Yendor", x=13, y=01, asleep=1 })
   des.monster("hell hound", 13, 02)
   des.monster("winter wolf", 14, 01)
   des.monster("vampire lord", 14, 02)
   -- The local treasure
   des.object("Book of the Dead", 13, 01)
   -- Surrounding terror
   des.monster("kraken", 03, 01)
   des.monster("kraken", 03, 11)
   des.monster("giant eel", 05, 01)
   des.monster("giant eel", 05, 11)
   des.monster("kraken", 24, 01)
   des.monster("kraken", 24, 11)
   des.monster("giant eel", 22, 01)
   des.monster("giant eel", 22, 11)
   -- Random monsters
   des.monster("silver dragon")
   des.monster("frost giant")
   des.monster("ice devil")
   des.monster("ice devil")
   des.monster("&")
   des.monster("&")
   des.monster("&")
   des.monster("white dragon")
   des.monster("white dragon")
   -- And to make things a little harder.
   des.trap("magic")
   des.trap("magic")
   des.trap("magic")
   des.trap("magic")
   -- Random traps.
   des.trap("spiked pit")
   des.trap("sleep gas")
   des.trap("anti magic")
   des.trap("magic")
   -- Some random loot.
   des.object("ruby")
   des.object("!")
   des.object("!")
   des.object("?")
   des.object("?")
   des.object("+")
   des.object("+")
   des.object("+")
end
}


local wiz1_list = {
   wiz1_classic, wiz1_small_room,
   wiz1_aries, wiz1_taurus, wiz1_gemini, wiz1_cancer,
   wiz1_leo, wiz1_virgo, wiz1_libra, wiz1_scorpio,
   wiz1_sagittarius, wiz1_capricorn, wiz1_aquarius, wiz1_pisces
}
shuffle(wiz1_list)
local wiz1 = des.map(wiz1_list[1]);

local protected = bounds2:negate() | wiz1;
hell_tweaks(protected);
