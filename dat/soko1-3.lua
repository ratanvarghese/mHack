--LEVEL:"soko1-3"
des.level_flags("noteleport", "mazelevel", "premapped", "sokoban", "solidify")
--MESSAGE:"Just Keep Pushing"
des.level_init({ style = "solidfill", fg = " " });
--GEOMETRY: center, center
-- "J Franklin Mentzer <wryter@aol.com>"
des.map([[
            --------- 
            |.......| 
 -------    |..----+--
 |.....-------.|.....|
-----........|.|.....|
|...|-....--.|.|.....|
|...|..--....|.|.....|
|...|..-----.|.|.....|
--.........|.|.|+----|
 |.....---.|.|.F...+.|
 |.|.....|.|.|.|...|-|
 |.|.|.|...|.|.F...+.|
--.---...|.|.|.|...|-|
|.....----.|.|.F...+.|
|..............|------
----....|......|      
   |....|..-----      
   ---------          
]]);
local place = selection.new();
place:set(20,09);
place:set(20,11);
place:set(20,13);

des.stair("down",02,03)
des.region(selection.area(00,00,21,17), "lit")
des.non_diggable(selection.area(00,00,21,17))
des.non_passwall(selection.area(00,00,21,17))

des.object("boulder",06,04)
des.object("boulder",02,06)
des.object("boulder",02,07)
des.object("boulder",03,08)
des.object("boulder",06,08)
des.object("boulder",03,09)
des.object("boulder",05,09)
des.object("boulder",06,10)
des.object("boulder",06,11)
des.object("boulder",03,13)
des.object("boulder",05,14)
des.object("boulder",10,14)
des.object("boulder",04,15)
des.object("boulder",07,15)
des.object("boulder",10,15)

des.trap("hole",15,01)
des.trap("hole",16,01)
des.trap("hole",17,01)
des.trap("hole",18,01)
des.trap("hole",14,03)
des.trap("hole",14,04)
des.trap("hole",14,05)
des.trap("hole",14,06)
des.trap("hole",14,07)
des.trap("hole",14,08)
des.trap("hole",14,09)
des.trap("hole",14,10)
des.trap("hole",14,11)
des.trap("hole",14,12)
des.trap("hole",14,13)

des.monster({ id = "giant mimic", appear_as = "obj:boulder" })
des.monster({ id = "giant mimic", appear_as = "obj:boulder" })

des.object('%')
des.object('%')
des.object('%')
des.object('%')
des.object('=')
des.object('/')

-- Rewards
des.door("locked",19,02)
des.door("locked",16,08)
des.door("closed",19,09)
des.door("closed",19,11)
des.door("closed",19,13)

des.region({ region={16,03,19,07}, lit=1, type="zoo", filled=1, irregular=1 })

local pt = selection.rndcoord(place);
if percent(25) then
   des.object({ id="bag of holding", coord=pt,
    buc="not-cursed", achievement=1 });
else
   des.object({ id="amulet of reflection", coord=pt,
    buc="not-cursed", achievement=1 });
end
des.engraving({ coord = pt, type = "burn", text = "Elbereth" });
des.object({ id = "scroll of scare monster", coord = pt, buc = "cursed" });
