-- NetHack yendor wizard2.lua	$NHDT-Date: 1652196039 2022/05/10 15:20:39 $  $NHDT-Branch: NetHack-3.7 $:$NHDT-Revision: 1.2 $
--	Copyright (c) 1989 by Jean-Christophe Collet
--	Copyright (c) 1992 by M. Stephenson and Izchak Miller
-- NetHack may be freely redistributed.  See license for details.
--
des.level_init({ style="mazegrid", bg ="-" });

des.level_flags("mazelevel", "noteleport", "hardfloor")

local tmpbounds = selection.match("-");
local bnds = tmpbounds:bounds();
local bounds2 = selection.fillrect(bnds.lx, bnds.ly + 1, bnds.hx - 2, bnds.hy - 1);

-- The classic middle level of the Wizard's Tower
local wiz2_classic = { halign = "center", valign = "center", map = [[
----------------------------x
|.....|.S....|.............|x
|.....|.-------S--------S--|x
|.....|.|.........|........|x
|..-S--S|.........|........|x
|..|....|.........|------S-|x
|..|....|.........|.....|..|x
|-S-----|.........|.....|..|x
|.......|.........|S--S--..|x
|.......|.........|.|......|x
|-----S----S-------.|......|x
|............|....S.|......|x
----------------------------x
]], contents = function(rm)
   des.levregion({ type="stair-up", region={01,00,79,20}, region_islev=1, exclude={0,0,28,12} })
   des.levregion({ type="stair-down", region={01,00,79,20}, region_islev=1, exclude={0,0,28,12} })
   des.levregion({ type="branch", region={01,00,79,20}, region_islev=1, exclude={0,0,28,12} })
   des.teleport_region({ region={01,00,79,20}, region_islev=1, exclude={0,0,27,12} })
   -- entire tower in a region, constrains monster migration
   des.region({ region={01,01, 26,11}, lit=0, type="ordinary", arrival_room=true })
   des.region({ region={09,03, 17,09}, lit=0, type="zoo", filled=1 })
   des.door("closed",15,02)
   des.door("closed",11,10)
   des.mazewalk(28,05,"east")
   des.ladder("up", 12,01)
   des.ladder("down", 14,11)
   -- Non diggable walls everywhere
   des.non_diggable(selection.area(00,00,27,12))
   --
   des.non_passwall(selection.area(00,00,27,12))
   -- Random traps.
   des.trap("spiked pit")
   des.trap("sleep gas")
   des.trap("anti magic")
   des.trap("magic")
   -- Some random loot.
   des.object("!")
   des.object("!")
   des.object("?")
   des.object("?")
   des.object("+")
   -- treasures
   des.object("\"", 04, 06)
end
};

-- Inspired by the NetHack 3.0.x End Game
local wiz2_endgame = { halign = "center", valign = "center", map = [[
----------------------------x
|........S........|........|x
|........|........|........|x
|........|........|........|x
|S-------|}}}}.}}}|-S------|x
|........|}}}.}}}}|........|x
|........|}}}}.}}}|........|x
|........|}}}.}}}}|........|x
|-------S|}}}}.}}}|------S-|x
|........|........|........|x
|........|........|........|x
|........|........S........|x
----------------------------x
]], contents = function(rm)
   des.levregion({ type="stair-up", region={01,00,79,20}, region_islev=1, exclude={0,0,28,12} })
   des.levregion({ type="stair-down", region={01,00,79,20}, region_islev=1, exclude={0,0,28,12} })
   des.levregion({ type="branch", region={01,00,79,20}, region_islev=1, exclude={0,0,28,12} })
   des.teleport_region({ region={01,00,79,20}, region_islev=1, exclude={0,0,27,12} })
   -- entire tower in a region, constrains monster migration
   des.region({ region={01,01, 26,11}, lit=0, type="ordinary", arrival_room=true })
   des.door("closed",09,01)
   des.door("closed",01,04)
   des.door("closed",20,04)
   des.door("closed",20,04)
   des.door("closed",08,08)
   des.door("closed",25,08)
   des.door("closed",18,11)
   des.mazewalk(28,05,"east")
   des.ladder("up", 01,11)
   des.ladder("down", 26,01)
   -- Non diggable walls everywhere
   des.non_diggable(selection.area(00,00,27,12))
   --
   des.non_passwall(selection.area(00,00,27,12))
   -- Monsters (more than the 3.0 End Game)
   des.monster({ class = 'R', x = 20, y = 1, asleep = 1 })
   des.monster({ class = 'R', x = 20, y = 2, asleep = 1 })
   des.monster({ class = 'R', x = 20, y = 3, asleep = 1 })
   des.monster({ class = 'R', x = 21, y = 2, asleep = 1 })
   des.monster({ class = 'R', x = 24, y = 2, asleep = 1 })
   des.monster({ class = 'R', x = 25, y = 1, asleep = 1 })
   des.monster({ class = 'R', x = 25, y = 2, asleep = 1 })
   des.monster({ class = 'R', x = 25, y = 3, asleep = 1 })
   des.monster({ class = 'L', x = 20, y = 5, asleep = 1 })
   des.monster({ class = 'L', x = 20, y = 6, asleep = 1 })
   des.monster({ class = 'L', x = 20, y = 7, asleep = 1 })
   des.monster({ class = 'L', x = 21, y = 6, asleep = 1 })
   des.monster({ class = 'L', x = 24, y = 6, asleep = 1 })
   des.monster({ class = 'L', x = 25, y = 5, asleep = 1 })
   des.monster({ class = 'L', x = 25, y = 6, asleep = 1 })
   des.monster({ class = 'L', x = 25, y = 7, asleep = 1 })
   des.monster({ class = 'N', x = 20, y = 9, asleep = 1 })
   des.monster({ class = 'N', x = 20, y = 10, asleep = 1 })
   des.monster({ class = 'N', x = 20, y = 11, asleep = 1 })
   des.monster({ class = 'N', x = 21, y = 10, asleep = 1 })
   des.monster({ class = 'N', x = 24, y = 10, asleep = 1 })
   des.monster({ class = 'N', x = 25, y = 9, asleep = 1 })
   des.monster({ class = 'N', x = 25, y = 10, asleep = 1 })
   des.monster({ class = 'N', x = 25, y = 11, asleep = 1 })
   des.monster({ id = 'giant eel', x = 10, y = 5, asleep = 1 })
   des.monster({ id = 'giant eel', x = 10, y = 6, asleep = 1 })
   des.monster({ id = 'kraken', x = 10, y = 7, asleep = 1 })
   des.monster({ id = 'kraken', x = 11, y = 6, asleep = 1 })
   des.monster({ id = 'kraken', x = 16, y = 6, asleep = 1 })
   des.monster({ id = 'kraken', x = 17, y = 5, asleep = 1 })
   des.monster({ id = 'electric eel', x = 17, y = 6, asleep = 1 })
   des.monster({ id = 'electric eel', x = 17, y = 7, asleep = 1 })
   des.monster({ class = 'D', x = 10, y = 1, asleep = 1 })
   des.monster({ class = 'D', x = 10, y = 2, asleep = 1 })
   des.monster({ class = 'D', x = 10, y = 3, asleep = 1 })
   des.monster({ class = 'D', x = 11, y = 2, asleep = 1 })
   des.monster({ class = 'D', x = 16, y = 2, asleep = 1 })
   des.monster({ class = 'D', x = 17, y = 1, asleep = 1 })
   des.monster({ class = 'D', x = 17, y = 2, asleep = 1 })
   des.monster({ class = 'D', x = 17, y = 3, asleep = 1 })
   des.monster({ class = 'H', x = 2, y = 1, asleep = 1 })
   des.monster({ class = 'H', x = 2, y = 2, asleep = 1 })
   des.monster({ class = 'H', x = 2, y = 3, asleep = 1 })
   des.monster({ class = 'H', x = 3, y = 2, asleep = 1 })
   des.monster({ class = 'H', x = 6, y = 2, asleep = 1 })
   des.monster({ class = 'H', x = 7, y = 1, asleep = 1 })
   des.monster({ class = 'H', x = 7, y = 2, asleep = 1 })
   des.monster({ class = 'H', x = 7, y = 3, asleep = 1 })
   des.monster({ class = 'O', x = 2, y = 5, asleep = 1 })
   des.monster({ class = 'O', x = 2, y = 6, asleep = 1 })
   des.monster({ class = 'O', x = 2, y = 7, asleep = 1 })
   des.monster({ class = 'O', x = 3, y = 6, asleep = 1 })
   des.monster({ class = 'O', x = 6, y = 6, asleep = 1 })
   des.monster({ class = 'O', x = 7, y = 5, asleep = 1 })
   des.monster({ class = 'O', x = 7, y = 6, asleep = 1 })
   des.monster({ class = 'O', x = 7, y = 7, asleep = 1 })
   des.monster({ class = 'T', x = 2, y = 9, asleep = 1 })
   des.monster({ class = 'T', x = 2, y = 10, asleep = 1 })
   des.monster({ class = 'T', x = 2, y = 11, asleep = 1 })
   des.monster({ class = 'T', x = 3, y = 10, asleep = 1 })
   des.monster({ class = 'T', x = 6, y = 10, asleep = 1 })
   des.monster({ class = 'T', x = 7, y = 9, asleep = 1 })
   des.monster({ class = 'T', x = 7, y = 10, asleep = 1 })
   des.monster({ class = 'T', x = 7, y = 11, asleep = 1 })
   -- Random traps.
   des.trap("spiked pit")
   des.trap("sleep gas")
   des.trap("anti magic")
   des.trap("magic")
   -- Some random loot.
   des.object("!")
   des.object("!")
   des.object("?")
   des.object("?")
   des.object("+")
   -- treasures
   des.object("\"")
end
};

local wiz2_nasty = { halign = "center", valign = "center", map = [[
----------------------------x
|.....}}}}...LLLLL..}}}}...|x
|.......}}}}...LLL..}}}}...|x
|...}}....}}}}...L..}}}}...|x
|...}}}}....}}}}....}}}}...|x
|...}}}}}}....}}}}..}}}}...|x
|...}}}}}}}}....}}}}}}}}...|x
|...}}}}..}}}}....}}}}}}...|x
|...}}}}....}}}}....}}}}...|x
|...}}}}..L...}}}}....}}...|x
|...}}}}..LLL...}}}}.......|x
|...}}}}..LLLLL...}}}}.....|x
----------------------------x
]], contents = function(rm)
   des.levregion({ type="stair-up", region={01,00,79,20}, region_islev=1, exclude={0,0,28,12} })
   des.levregion({ type="stair-down", region={01,00,79,20}, region_islev=1, exclude={0,0,28,12} })
   des.levregion({ type="branch", region={01,00,79,20}, region_islev=1, exclude={0,0,28,12} })
   des.teleport_region({ region={01,00,79,20}, region_islev=1, exclude={0,0,27,12} })
   -- entire tower in a region, constrains monster migration
   des.region({ region={01,01, 26,11}, lit=0, type="ordinary", arrival_room=true })
   des.region(selection.area(09,10,15,11), "lit")
   des.region(selection.area(09,08,11,09), "lit")
   des.region(selection.area(12,01,18,02), "lit")
   des.region(selection.area(16,03,18,04), "lit")
   des.mazewalk(28,05,"east")
   des.ladder("up", 01,11)
   des.ladder("down", 26,01)
   -- Non diggable walls everywhere
   des.non_diggable(selection.area(00,00,27,12))
   --
   des.non_passwall(selection.area(00,00,27,12))
   -- Monsters (nasty)
   des.monster({ id = 'arch-lich', asleep = 1 })
   des.monster({ id = 'arch-lich', asleep = 1 })
   des.monster({ id = 'Elvenking', asleep = 1 })
   des.monster({ id = 'Elvenking', asleep = 1 })
   des.monster({ id = 'leocrotta', asleep = 1 })
   des.monster({ id = 'leocrotta', asleep = 1 })
   des.monster({ id = 'rock troll', asleep = 1 })
   des.monster({ id = 'rock troll', asleep = 1 })
   des.monster({ id = 'baluchitherium', asleep = 1 })
   des.monster({ id = 'baluchitherium', asleep = 1 })
   des.monster({ id = 'ettin', asleep = 1 })
   des.monster({ id = 'ettin', asleep = 1 })
   des.monster({ id = 'master mind flayer', asleep = 1 })
   des.monster({ id = 'master mind flayer', asleep = 1 })
   des.monster({ id = 'stalker', asleep = 1 })
   des.monster({ id = 'stalker', asleep = 1 })
   des.monster({ id = 'black dragon', asleep = 1 })
   des.monster({ id = 'black dragon', asleep = 1 })
   des.monster({ id = 'fire elemental', asleep = 1 })
   des.monster({ id = 'fire elemental', asleep = 1 })
   des.monster({ id = 'minotaur', asleep = 1 })
   des.monster({ id = 'minotaur', asleep = 1 })
   des.monster({ id = 'umber hulk', asleep = 1 })
   des.monster({ id = 'umber hulk', asleep = 1 })
   des.monster({ id = 'captain', asleep = 1 })
   des.monster({ id = 'captain', asleep = 1 })
   des.monster({ id = 'fire giant', asleep = 1 })
   des.monster({ id = 'fire giant', asleep = 1 })
   des.monster({ id = 'ochre jelly', asleep = 1 })
   des.monster({ id = 'ochre jelly', asleep = 1 })
   des.monster({ id = 'vampire lord', asleep = 1 })
   des.monster({ id = 'vampire lord', asleep = 1 })
   des.monster({ id = 'carnivorous ape', asleep = 1 })
   des.monster({ id = 'carnivorous ape', asleep = 1 })
   des.monster({ id = 'green dragon', asleep = 1 })
   des.monster({ id = 'green dragon', asleep = 1 })
   des.monster({ id = 'ogre king', asleep = 1 })
   des.monster({ id = 'ogre king', asleep = 1 })
   des.monster({ id = 'winged gargoyle', asleep = 1 })
   des.monster({ id = 'winged gargoyle', asleep = 1 })
   -- (deliberately exclude cockatrice)
   des.monster({ id = 'green slime', asleep = 1 })
   des.monster({ id = 'green slime', asleep = 1 })
   des.monster({ id = 'olog-hai', asleep = 1 })
   des.monster({ id = 'olog-hai', asleep = 1 })
   des.monster({ id = 'xan', asleep = 1 })
   des.monster({ id = 'xan', asleep = 1 })
   -- (deliberately exclude couatl)
   des.monster({ id = 'gremlin', asleep = 0 }) -- (deliberately awake)
   des.monster({ id = 'gremlin', asleep = 0 }) -- (deliberately awake)
   des.monster({ id = 'owlbear', asleep = 1 })
   des.monster({ id = 'owlbear', asleep = 1 })
   des.monster({ id = 'xorn', asleep = 1 })
   des.monster({ id = 'xorn', asleep = 1 })
   des.monster({ id = 'disenchanter', asleep = 1 })
   des.monster({ id = 'disenchanter', asleep = 1 })
   des.monster({ id = 'iron golem', asleep = 1 })
   des.monster({ id = 'iron golem', asleep = 1 })
   des.monster({ id = 'purple worm', asleep = 1 })
   des.monster({ id = 'purple worm', asleep = 1 })
   des.monster({ id = 'yellow dragon', asleep = 1 })
   des.monster({ id = 'yellow dragon', asleep = 1 })
   des.monster({ id = 'elf-lord', asleep = 1 })
   des.monster({ id = 'elf-lord', asleep = 1 })
   des.monster({ id = 'jabberwock', asleep = 1 })
   des.monster({ id = 'jabberwock', asleep = 1 })
   des.monster({ id = 'red dragon', asleep = 1 })
   des.monster({ id = 'red dragon', asleep = 1 })
   des.monster({ id = 'zruty', asleep = 1 })
   des.monster({ id = 'zruty', asleep = 1 })
   -- Random traps.
   des.trap("spiked pit")
   des.trap("sleep gas")
   des.trap("anti magic")
   des.trap("magic")
   -- Some random loot.
   des.object("!")
   des.object("!")
   des.object("?")
   des.object("?")
   des.object("+")
   -- treasures
   des.object("\"")
end
};

-- Inspired by the Gulf of N'Kai in the Lethe patch
local wiz2_flayer = { halign = "center", valign = "center", map = [[
----------------------------x
|.}..}}}}...}}}}...}}}}..}.|x
|}}.}}..}}.}}}}}}.}}..}}.}}|x
|}..}....}.}}}}}}.}....}..}|x
|}}......}..}}}}..}......}}|x
|.}}}}}}}}..}}}}..}}}}}}}}.|x
|........}}}}}}}}}}........|x
|..}}}}}}}}}}}}}}}}}}}}}}..|x
|.}}........}..}........}}.|x
|.}..}..}..}}..}}..}..}..}.|x
|.}..}..}.}}....}}.}..}..}.|x
|.}}}}..}}}......}}}..}}}}.|x
----------------------------x
]], contents = function(rm)
   des.levregion({ type="stair-up", region={01,00,79,20}, region_islev=1, exclude={0,0,28,12} })
   des.levregion({ type="stair-down", region={01,00,79,20}, region_islev=1, exclude={0,0,28,12} })
   des.levregion({ type="branch", region={01,00,79,20}, region_islev=1, exclude={0,0,28,12} })
   des.teleport_region({ region={01,00,79,20}, region_islev=1, exclude={0,0,27,12} })
   -- entire tower in a region, constrains monster migration
   des.region({ region={01,01, 26,11}, lit=0, type="ordinary", arrival_room=true })
   des.mazewalk(28,05,"east")
   des.ladder("up")
   des.ladder("down")
   -- Non diggable walls everywhere
   des.non_diggable(selection.area(00,00,27,12))
   --
   des.non_passwall(selection.area(00,00,27,12))
   -- Monsters
   des.monster({ id = 'kraken', asleep = 1, x = 12, y = 1 })
   des.monster({ id = 'kraken', asleep = 1, x = 13, y = 1 })
   des.monster({ id = 'kraken', asleep = 1, x = 14, y = 1 })
   des.monster({ id = 'kraken', asleep = 1, x = 15, y = 1 })
   des.monster({ id = 'electric eel', asleep = 1, x = 12, y = 2 })
   des.monster({ id = 'electric eel', asleep = 1, x = 13, y = 2 })
   des.monster({ id = 'electric eel', asleep = 1, x = 14, y = 2 })
   des.monster({ id = 'electric eel', asleep = 1, x = 15, y = 2 })
   des.monster({ id = 'mind flayer', asleep = 1 })
   des.monster({ id = 'mind flayer', asleep = 1 })
   des.monster({ id = 'mind flayer', asleep = 1 })
   des.monster({ id = 'mind flayer', asleep = 1 })
   des.monster({ id = 'mind flayer', asleep = 1 })
   des.monster({ id = 'mind flayer', asleep = 1 })
   des.monster({ id = 'mind flayer', asleep = 1 })
   des.monster({ id = 'mind flayer', asleep = 1 })
   des.monster({ id = 'master mind flayer', asleep = 1 })
   des.monster({ id = 'master mind flayer', asleep = 1 })
   des.monster({ id = 'master mind flayer', asleep = 1 })
   des.monster({ id = 'master mind flayer', asleep = 1 })
   des.monster({ id = 'master mind flayer', asleep = 1 })
   des.monster({ id = 'master mind flayer', asleep = 1 })
   des.monster({ id = 'master mind flayer', asleep = 1 })
   des.monster({ id = 'master mind flayer', asleep = 1 })
   des.monster({ id = 'green slime', asleep = 1 })
   des.monster({ id = 'green slime', asleep = 1 })
   des.monster({ id = 'green slime', asleep = 1 })
   des.monster({ id = 'green slime', asleep = 1 })
   des.monster({ class = 'e', asleep = 1 })
   des.monster({ class = 'e', asleep = 1 })
   des.monster({ class = 'e', asleep = 1 })
   des.monster({ class = 'e', asleep = 1 })
   des.monster({ class = 'v', asleep = 1 })
   des.monster({ class = 'v', asleep = 1 })
   des.monster({ class = 'v', asleep = 1 })
   des.monster({ class = 'v', asleep = 1 })
   des.monster({ class = 'Q', asleep = 1 })
   des.monster({ class = 'Q', asleep = 1 })
   des.monster({ class = 'Q', asleep = 1 })
   des.monster({ class = 'Q', asleep = 1 })
   des.monster({ class = 'j', asleep = 1 })
   des.monster({ class = 'j', asleep = 1 })
   des.monster({ class = 'j', asleep = 1 })
   des.monster({ class = 'j', asleep = 1 })
   des.monster({ class = 'B', asleep = 1 })
   des.monster({ class = 'B', asleep = 1 })
   des.monster({ class = 'B', asleep = 1 })
   des.monster({ class = 'B', asleep = 1 })
   -- Random traps.
   des.trap("board")
   des.trap("board")
   des.trap("board")
   des.trap("board")
   des.trap("web")
   des.trap("web")
   des.trap("web")
   des.trap("web")
   des.trap("bear")
   des.trap("bear")
   des.trap("bear")
   des.trap("bear")
   -- Some loot.
   des.object("+")
   des.object("+")
   des.object("+")
   des.object("+")
   des.object("!")
   des.object("!")
   des.object("!")
   des.object("!")
   des.object("\"")
end
};

local wiz2_skull = { halign = "center", valign = "center", map = [[
----------------------------x
|..........................|x
|...--------------------...|x
|...|..................|...|x
|...+....LLLL..LLLL....+...|x
|...|....LLLL..LLLL....|...|x
|...|..................|...|x
|...----.....LL.....----...|x
|......|............|......|x
|......|++-+-++-+-++|......|x
|......|..|.|..|.|..|......|x
|......--------------......|x
----------------------------x
]], contents = function(rm)
   des.levregion({ type="stair-up", region={01,00,79,20}, region_islev=1, exclude={0,0,28,12} })
   des.levregion({ type="stair-down", region={01,00,79,20}, region_islev=1, exclude={0,0,28,12} })
   des.levregion({ type="branch", region={01,00,79,20}, region_islev=1, exclude={0,0,28,12} })
   des.teleport_region({ region={01,00,79,20}, region_islev=1, exclude={0,0,27,12} })
   -- entire tower in a region, constrains monster migration
   des.region({ region={01,01, 26,11}, lit=0, type="ordinary", arrival_room=true })
   des.mazewalk(28,05,"east")
   des.region(selection.area(08,03,19,06), "lit")
   des.region(selection.area(12,06,15,08), "lit")
   des.door("locked",04,04)
   des.door("locked",23,04)
   des.door("locked",08,09)
   des.door("locked",09,09)
   des.door("locked",11,09)
   des.door("locked",13,09)
   des.door("locked",14,09)
   des.door("locked",16,09)
   des.door("locked",18,09)
   des.door("locked",19,09)
   local down_loc = { {01, 11}, {26, 11} }
   shuffle(down_loc)
   des.ladder("down", down_loc[1])
   local up_loc = {
      {08, 10}, {09, 10}, {11, 10}, {13, 10}, {14, 10}, {16, 10}, {18, 10}, {19, 10},
   }
   shuffle(up_loc)
   des.ladder("up", up_loc[1])
   -- Non diggable walls everywhere
   des.non_diggable(selection.area(00,00,27,12))
   --
   des.non_passwall(selection.area(00,00,27,12))
   -- Monsters
   des.monster({ id = 'white dragon', x = 6, y = 8 })
   des.monster({ id = 'white dragon', x = 21, y = 8 })
   des.monster({ id = 'bone devil', x = 5, y = 3 })
   des.monster({ id = 'bone devil', x = 6, y = 3 })
   des.monster({ id = 'bone devil', x = 7, y = 3 })
   des.monster({ id = 'bone devil', x = 8, y = 3 })
   des.monster({ id = 'ettin zombie', x = 9, y = 3 })
   des.monster({ id = 'giant zombie', x = 10, y = 3 })
   des.monster({ id = 'long worm', x = 11, y = 3 })
   des.monster({ id = 'black unicorn', x = 12, y = 3 })
   des.monster({ id = 'skeleton', x = 13, y = 3 })
   des.monster({ id = 'skeleton', x = 14, y = 3 })
   des.monster({ id = 'black unicorn', x = 15, y = 3 })
   des.monster({ id = 'long worm', x = 16, y = 3 })
   des.monster({ id = 'giant mummy', x = 17, y = 3 })
   des.monster({ id = 'ettin mummy', x = 18, y = 3 })
   des.monster({ id = 'bone devil', x = 19, y = 3 })
   des.monster({ id = 'bone devil', x = 20, y = 3 })
   des.monster({ id = 'bone devil', x = 21, y = 3 })
   des.monster({ id = 'bone devil', x = 22, y = 3 })
   des.monster({ id = 'bone devil', x = 5, y = 6 })
   des.monster({ id = 'bone devil', x = 6, y = 6 })
   des.monster({ id = 'bone devil', x = 7, y = 6 })
   des.monster({ id = 'bone devil', x = 8, y = 6 })
   des.monster({ id = 'ettin zombie', x = 9, y = 6 })
   des.monster({ id = 'giant zombie', x = 10, y = 6 })
   des.monster({ id = 'long worm', x = 11, y = 6 })
   des.monster({ id = 'black unicorn', x = 12, y = 6 })
   des.monster({ id = 'skeleton', x = 13, y = 6 })
   des.monster({ id = 'skeleton', x = 14, y = 6 })
   des.monster({ id = 'black unicorn', x = 15, y = 6 })
   des.monster({ id = 'long worm', x = 16, y = 6 })
   des.monster({ id = 'giant mummy', x = 17, y = 6 })
   des.monster({ id = 'ettin mummy', x = 18, y = 6 })
   des.monster({ id = 'bone devil', x = 19, y = 6 })
   des.monster({ id = 'bone devil', x = 20, y = 6 })
   des.monster({ id = 'bone devil', x = 21, y = 6 })
   des.monster({ id = 'bone devil', x = 22, y = 6 })
   des.monster({ id = 'skeleton', x = 8, y = 10 })
   des.monster({ id = 'skeleton', x = 9, y = 10 })
   des.monster({ id = 'skeleton', x = 11, y = 10 })
   des.monster({ id = 'skeleton', x = 13, y = 10 })
   des.monster({ id = 'skeleton', x = 14, y = 10 })
   des.monster({ id = 'skeleton', x = 16, y = 10 })
   des.monster({ id = 'skeleton', x = 18, y = 10 })
   des.monster({ id = 'skeleton', x = 19, y = 10 })
   des.monster('marilith')
   des.monster('marilith')
   des.monster('marilith')
   des.monster('marilith')
   -- Random traps.
   des.trap("spiked pit")
   des.trap("sleep gas")
   des.trap("anti magic")
   des.trap("magic")
   -- Some bone loot.
   local horn_list = { "tooled horn", "frost horn", "fire horn", "horn of plenty" }
   des.object({ id = table.remove(horn_list, d(#horn_list)), material = "bone" })
   des.object({ id = table.remove(horn_list, d(#horn_list)), material = "bone" })
   local weap_list = {
      "tsurugi", "grappling hook", "katana", "lance", "ranseur", "partisan", "glaive",
      "spetum", "halberd", "short sword", "trident", "battle-axe", "javelin", "morning star",
      "scimitar", "war hammer", "boomerang", "knife", "two-handed sword", "bow"
   }
   des.object({ id = table.remove(weap_list, d(#weap_list)), material = "bone", spe = 5 })
   des.object({ id = table.remove(weap_list, d(#weap_list)), material = "bone", spe = 5 })
   des.object({ id = table.remove(weap_list, d(#weap_list)), material = "bone", spe = 5 })
   des.object({ id = table.remove(weap_list, d(#weap_list)), material = "bone", spe = 5 })
   des.object({ id = table.remove(weap_list, d(#weap_list)), material = "bone", spe = 5 })
   des.object({ id = table.remove(weap_list, d(#weap_list)), material = "bone", spe = 5 })
   des.object({ id = table.remove(weap_list, d(#weap_list)), material = "bone", spe = 5 })
   des.object({ id = table.remove(weap_list, d(#weap_list)), material = "bone", spe = 5 })
   des.object({ id = table.remove(weap_list, d(#weap_list)), material = "bone", spe = 5 })
   des.object({ id = table.remove(weap_list, d(#weap_list)), material = "bone", spe = 5 })
   des.object({ id = table.remove(weap_list, d(#weap_list)), material = "bone", spe = 5 })
   des.object({ id = table.remove(weap_list, d(#weap_list)), material = "bone", spe = 5 })
   des.object({ id = table.remove(weap_list, d(#weap_list)), material = "bone", spe = 5 })
end
};

local wiz2_list = {wiz2_classic, wiz2_endgame, wiz2_nasty, wiz2_flayer, wiz2_skull}
shuffle(wiz2_list)
local wiz2 = des.map(wiz2_list[1])

local protected = bounds2:negate() | wiz2;
hell_tweaks(protected);
