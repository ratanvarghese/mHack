-- From the Lethe Patch

des.level_init({ style="mazegrid", bg ="-" });

des.level_flags("mazelevel", "shortsighted")

--[[
#         1         2         3         4         5         6         7
#123456789012345678901234567890123456789012345678901234567890123456789012345
]]
des.map([[
 -----                        --------------------                          
 |...|..       .............. |.......|.....|....|     |..........----------
 |...|...........----------.. |.......|.....|....|.....|..........|........|
 |...+...........|........|...|.......|--+-----+--................|........|
 -----..---+---..|........+...----+----.............{.............+......\.|
 |...+..|.....|..|........|.wwwwwwwww.......------................|........|
 |...|..|.....|..----------ww}}}}}}}wwwwww..+....|.....|..........|........|
 |...|ww--www--www.wwwww}}}}}}}}}}}}}}}}}www|....|.....|..........------S---
 -----}}}}w}w}}}}www}}}}}}}}}}}}}}}}}}}}}}}}------wwww.---------+--   |...| 
}}}}}}}}}}}w}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}wwww..........   |...| 
}}}}}}}}}}w}w}}}}}}}}}}}}}}}-----------}}}}}}}}}}}}}}}}}wwwwwww.....  ----- 
}}}}}}}}--www--}}}}}}}}wwwww|.........|ww}}}}}}}}}}}}}}}}}}}}}wwwwwwwwwww   
}}}}wwww|.....|wwwwwwwww....|.........+.wwwww}}}}}}}}}}}}}}}}}}}}}}}}}}}wwww
-------.|.....|..----.----..|.........|.....wwwwwwwwwww}}}}}}}}}}}}}}}}}}}}}
|.....|.---+---..|.......|..-----------..-----+----...wwwwwwwwwww}}}}}}}}}}}
|.....|..................................|........|..-------....wwwwwww}}}}}
|--+--|...----+---.......-----+----------|........|..|.....-----...--+-----w
   ...... |......|.......|........|......+........|..+.....|...+.. |......| 
          |......|.......|........|......|........|  |.....|...|   |......| 
          -----------------------------------------  -----------   -------- 
]])

-- Entire main area
des.region(selection.area(01,00,75,19),"unlit")
des.stair("down", 71,04)
des.stair("up", 61,18)
des.levregion({ region={39,01,48,02}, region_islev=1, exclude={00,00,00,00}, exclude_islev=1, type="branch" });
des.teleport_region({ region={26,17,40,18}, region_islev=1, exclude={00,00,00,00}, exclude_islev=1 });

-- Doors
des.door("random",69,16)
des.door("random",63,17)
des.door("random",53,17)
des.door("random",46,14)
des.door("locked",41,17)
des.door("closed",38,12)
des.door("random",30,16)
des.door("random",14,16)
des.door("closed",11,14)
des.door("random",03,16)
des.door("random",05,05)
des.door("random",05,03)
des.door("locked",11,04)
des.door("nodoor",26,04)
des.door("random",34,04)
des.door("random",41,03)
des.door("random",44,06)
des.door("closed",66,04)
des.door("locked",64,08)
des.door("locked",72,07)

-- Special rooms
des.altar({ x=31,y=12,align="noalign",type="sanctum" })
des.region({ region={18,14,24,18},lit=0,type="morgue",filled=1 })
des.region({ region={56,01,65,07},lit=0,type="morgue",filled=1 })
des.region({ region={01,14,05,15},lit=1,type="shop",filled=1 })
des.region({ region={39,01,43,02},lit=1,type="shop",filled=1 })

des.altar({ x=20,y=04,align="noalign",type="sanctum" })
des.object({ id="corpse", montype="aligned cleric", x=23, y=03 })

-- Some traps
des.trap("spiked pit")
des.trap("sleep gas")
des.trap("anti magic")
des.trap("anti magic")
des.trap("fire")
des.trap("fire")
des.trap("fire")
des.trap("magic")
des.trap("magic")
des.trap("magic")
des.trap("rust")

-- Some random objects
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
des.monster("Orcus",33,15)
-- And its preferred companions
des.monster("human zombie",32,15)
des.monster("shade",32,14)
des.monster("shade",32,16)
des.monster("vampire",35,16)
des.monster("vampire",35,14)
des.monster("vampire lord",36,14)
des.monster("vampire lord",36,15)

-- Randomly placed companions
des.monster("skeleton")
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
