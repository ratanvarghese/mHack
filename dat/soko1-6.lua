--LEVEL:"soko1-6"
des.level_flags("noteleport", "premapped", "sokoban", "solidify")
--MESSAGE:"Plinketto"
des.level_init({ style = "solidfill", fg = " " });
--GEOMETRY: center, center
-- Steve Melenchuk <smelenchuk@gmail.com>
des.map([[
  -----                        
  |...------  -----   -------  
  |........----...| ---.....|  
 --..--.--.--.....| |.+.....|  
 |................| ---.....|--
--.....--.--....--- |.+.....+.|
|...-----.-----.-   ---.....|.|
|.....--..-----.--  |.+.....|.|
--....---.---....|  ---.....|.|
 ---..---...-....|    ------|.|
   |......-......|          |.|
   |..--...-.....|          |.|
   ------..-----------------|.|
       -......................|
       -...--------------------
       -----                   
]]);
local place = selection.new();
place:set(21,03);
place:set(21,05);
place:set(21,07);

des.stair("down",08,07)
des.region(selection.area(00,00,30,15), "lit")
des.non_diggable(selection.area(00,00,30,15))
des.non_passwall(selection.area(00,00,30,15))

des.object("boulder",04,02)
des.object("boulder",06,02)
des.object("boulder",08,02)
des.object("boulder",16,03)
des.object("boulder",03,04)
des.object("boulder",06,04)
des.object("boulder",12,04)
des.object("boulder",14,04)
des.object("boulder",14,05)
des.object("boulder",02,06)
des.object("boulder",03,06)
des.object("boulder",15,07)
des.object("boulder",04,08)
des.object("boulder",09,08)
des.object("boulder",15,08)
des.object("boulder",15,09)
des.object("boulder",05,10)
des.object("boulder",06,10)
des.object("boulder",12,10)
des.object("boulder",14,10)
des.object("boulder",15,10)

des.trap("hole",11,13)
des.trap("hole",12,13)
des.trap("hole",13,13)
des.trap("hole",14,13)
des.trap("hole",15,13)
des.trap("hole",16,13)
des.trap("hole",17,13)
des.trap("hole",18,13)
des.trap("hole",19,13)
des.trap("hole",20,13)
des.trap("hole",21,13)
des.trap("hole",22,13)
des.trap("hole",23,13)
des.trap("hole",24,13)
des.trap("hole",25,13)
des.trap("hole",26,13)
des.trap("hole",27,13)
des.trap("hole",28,13)

des.monster({ id = "giant mimic", appear_as = "obj:boulder" })
des.monster({ id = "giant mimic", appear_as = "obj:boulder" })

des.object('%')
des.object('%')
des.object('%')
des.object('%')
des.object('=')
des.object('/')

-- Rewards
des.door("locked",28,05)
des.door("closed",22,03)
des.door("closed",22,05)
des.door("closed",22,07)

des.region({ region={23,02,27,08}, lit=1, type="zoo", filled=1, irregular=1 })

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
