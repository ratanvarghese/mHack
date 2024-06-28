-- NetHack bigroom bigrm-1.lua	$NHDT-Date: 1652196021 2022/05/10 15:20:21 $  $NHDT-Branch: NetHack-3.7 $:$NHDT-Revision: 1.3 $
--	Copyright (c) 1989 by Jean-Christophe Collet
--	Copyright (c) 1990 by M. Stephenson
-- NetHack may be freely redistributed.  See license for details.
--
des.level_init({ style = "solidfill", fg = " " });
des.level_flags("mazelevel", "noflip");

des.map([[
---------------------------------------------------------------------------
|.......||..............||..............||..............||................|
|.......||..............||..............||..............||................|
Fwwwww..||..wwwwwwwwww..||..wwwwwwwwww..||..wwwwwwwwww..||..wwwwwwwwww....|
Fwwwww..||..wwwwwwwwww..||..wwwwwwwwww..||..wwwwwwwwww..||..wwwwwwwwww....|
|...ww......ww......ww......ww......ww......ww......ww......ww......ww....|
|...ww......ww......ww......ww......ww......ww......ww......ww......ww....|
|...ww......ww......ww......ww......ww......ww......ww......ww......ww....|
|...ww......ww......ww......ww......ww......ww......ww......ww......ww....|
|...ww......ww......ww......ww......ww......ww......ww......ww......ww....|
|...ww......ww......ww......ww......ww......ww......ww......ww......ww....|
|...ww......ww......ww......ww......ww......ww......ww......ww......ww....|
|...ww......ww......ww......ww......ww......ww......ww......ww......ww....|
|...wwwwwwwwww..||..wwwwwwwwww..||..wwwwwwwwww..||..wwwwwwwwww..||..wwwwwwF
|...wwwwwwwwww..||..wwwwwwwwww..||..wwwwwwwwww..||..wwwwwwwwww..||..wwwwwwF
|...............||..............||..............||..............||........|
|...............||..............||..............||..............||........|
---------------------------------------------------------------------------
]]);

des.region(selection.area(01,01, 73, 16), "lit");

des.stair("up");
des.stair("down");

des.non_diggable();


for i = 1,4 do
  des.feature("fountain")
end

for i = 1,15 do
   des.object();
end

for i = 1,6 do
   des.trap();
end

for i = 1,28 do
  des.monster();
end