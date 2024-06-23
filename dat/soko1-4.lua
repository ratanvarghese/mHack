--LEVEL:"soko1-4"
des.level_flags("noteleport", "mazelevel", "premapped", "sokoban", "solidify")
--MESSAGE:"Work For It"
des.level_init({ style = "solidfill", fg = " " });
--GEOMETRY: center, center
-- "J Franklin Mentzer <wryter@aol.com>"
des.map([[
------------      
|.+......+.|      
|-|......|--------
|.+......+.......|
|-|......|-----..|
|.+......+.|  |.--
|-------------|.| 
|.....|...|...|.| 
|.............|.| 
|....------.|.|.| 
|....|...|....|.| 
|....|.......-|.| 
-----|.--..---|.| 
 |...|.....+..F.| 
 |........-|..F.| 
 |-.----.---FF-.| 
 |..............| 
 |...|...-----..| 
 ---------   ---- 
]]);
local place = selection.new();
place:set(01,01);
place:set(01,03);
place:set(01,05);

des.stair("down",06,10)
des.region(selection.area(00,00,17,18), "lit")
des.non_diggable(selection.area(00,00,17,18))
des.non_passwall(selection.area(00,00,17,18))

des.object("boulder",02,08)
des.object("boulder",03,08)
des.object("boulder",06,08)
des.object("boulder",10,08)
des.object("boulder",12,08)
des.object("boulder",03,09)
des.object("boulder",02,10)
des.object("boulder",03,10)
des.object("boulder",12,10)
des.object("boulder",08,11)
des.object("boulder",06,12)
des.object("boulder",07,13)
des.object("boulder",06,14)
des.object("boulder",04,16)
des.object("boulder",08,16)
des.object("boulder",09,16)

des.trap("hole",10,03)
des.trap("hole",11,03)
des.trap("hole",12,03)
des.trap("hole",13,03)
des.trap("hole",14,03)
des.trap("hole",15,05)
des.trap("hole",15,06)
des.trap("hole",15,07)
des.trap("hole",15,08)
des.trap("hole",15,09)
des.trap("hole",15,10)
des.trap("hole",15,11)
des.trap("hole",15,12)
des.trap("hole",15,13)
des.trap("hole",15,14)
des.trap("hole",15,15)

des.monster({ id = "giant mimic", appear_as = "obj:boulder" })
des.monster({ id = "giant mimic", appear_as = "obj:boulder" })

des.object('%')
des.object('%')
des.object('%')
des.object('%')
des.object('=')
des.object('/')

-- Rewards
des.door("closed",02,01)
des.door("locked",09,01)
des.door("closed",02,03)
des.door("locked",09,03)
des.door("closed",02,05)
des.door("locked",09,05)
des.door("locked",11,13)

des.region({ region={03,01,08,05}, lit=1, type="zoo", filled=1, irregular=1 })

local pt = selection.rndcoord(place);
if percent(75) then
   des.object({ id="bag of holding", coord=pt,
    buc="not-cursed", achievement=1 });
else
   des.object({ id="amulet of reflection", coord=pt,
    buc="not-cursed", achievement=1 });
end
des.engraving({ coord = pt, type = "burn", text = "Elbereth" });
des.object({ id = "scroll of scare monster", coord = pt, buc = "cursed" });
