-- "Running Rings Around"
--MAZE: "soko1-10",' '
des.level_flags("noteleport", "premapped", "sokoban", "solidify")
--MESSAGE: "Running Rings Around"
--GEOMETRY: center, center
--123456789012345678
des.map([[
       ----        
    ----..----     
    |........|     
  ---.|......|     
  |...|......|     
  |....-..-..----- 
  --.............| 
   |..-....--....| 
   |.....----....| 
   |---|.|-------| 
 ---|  |.||.....---
 |..----..|.....+.|
 |........|.....|-|
 |.|------|.....+.|
-|.|      |.....|-|
|..|------|.....+.|
|.........+.....|--
-----------------  
]]);
local place = selection.new();
place:set(17,11);
place:set(17,13);
place:set(17,15);

des.stair("down",05,04)
des.door("locked",16,11)
des.door("locked",16,13)
des.door("locked",16,15)
des.door("locked",10,16)
des.region(selection.area(00,00,18,17), "lit")
des.non_diggable(selection.area(00,00,18,17))
des.non_passwall(selection.area(00,00,18,17))

des.object("boulder",06,02)
des.object("boulder",09,03)
des.object("boulder",11,03)
des.object("boulder",08,04)
des.object("boulder",10,04)
des.object("boulder",05,05)
des.object("boulder",08,05)
des.object("boulder",09,05)
des.object("boulder",12,05)
des.object("boulder",07,06)
des.object("boulder",14,06)
des.object("boulder",05,07)
des.object("boulder",07,07)
des.object("boulder",08,07)
des.object("boulder",09,07)
des.object("boulder",13,07)
des.object("boulder",15,07)

des.trap("hole",08,09)
des.trap("hole",08,10)
des.trap("hole",04,12)
des.trap("hole",05,12)
des.trap("hole",06,12)
des.trap("hole",07,12)
des.trap("hole",02,13)
des.trap("hole",02,14)
des.trap("hole",02,15)
des.trap("hole",03,16)
des.trap("hole",04,16)
des.trap("hole",05,16)
des.trap("hole",06,16)
des.trap("hole",07,16)
des.trap("hole",08,16)
des.trap("hole",09,16)

des.monster({ id = "giant mimic", appear_as = "obj:boulder" })
des.monster({ id = "giant mimic", appear_as = "obj:boulder" })

des.object('%')
des.object('%')
des.object('%')
des.object('%')
des.object('=')
des.object('/')

-- Rewards
des.region({ region={11,10, 15,16}, lit = 1, type = "zoo", filled = 1, irregular = 1 });

--CONTAINER:'(',"sack",place[0]
--OBJECT: '=',"polymorph control",contained
--OBJECT: '=',"teleport control",contained
--OBJECT: '=',random,contained
--ENGRAVING: place[0], burn, "Elbereth"

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
