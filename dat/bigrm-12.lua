-- Written for the Terrain patch by L
-- Converted to Lua and modified for mHack by Ratan Varghese
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