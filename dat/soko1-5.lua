--LEVEL:"soko1-5"
des.level_flags("noteleport", "premapped", "sokoban", "solidify")
--MESSAGE:"Dudley's Torment"
des.level_init({ style = "solidfill", fg = " " });
--GEOMETRY: center, center
-- Steve Melenchuk <smelenchuk@gmail.com>
des.map([[
    ----                     
    -..--                    
 ----...---------------------
 |..-.......................|
--...-..------------------|.|
|.................|       |.|
|..-....-...----.-| -------.|
--.-..--...-......---.....|.|
--.---..--.-..-...|.+.....|.|
--.- -....---.-...---.....|.|
--.---..-..-....--|.+.....+.|
--.-..-.--......-----.....---
|...........-....||.+.....|  
|...-.....-......|---.....|  
-----.........-..|  -------  
    |..-..-..--..|           
    --------------           
]]);
local place = selection.new();
place:set(19,08);
place:set(19,10);
place:set(19,12);

des.stair("down",15,15)
des.region(selection.area(00,00,28,16), "lit")
des.non_diggable(selection.area(00,00,28,16))
des.non_passwall(selection.area(00,00,28,16))

des.object("boulder",06,03)
des.object("boulder",07,03)
des.object("boulder",07,04)
des.object("boulder",02,05)
des.object("boulder",08,05)
des.object("boulder",11,05)
des.object("boulder",05,06)
des.object("boulder",15,08)
des.object("boulder",13,09)
des.object("boulder",16,09)
des.object("boulder",13,10)
des.object("boulder",11,11)
des.object("boulder",04,12)
des.object("boulder",06,12)
des.object("boulder",09,12)
des.object("boulder",15,12)
des.object("boulder",07,13)
des.object("boulder",08,13)
des.object("boulder",09,13)
des.object("boulder",11,13)
des.object("boulder",14,13)
des.object("boulder",11,14)

des.trap("hole",08,03)
des.trap("hole",09,03)
des.trap("hole",10,03)
des.trap("hole",11,03)
des.trap("hole",12,03)
des.trap("hole",13,03)
des.trap("hole",14,03)
des.trap("hole",15,03)
des.trap("hole",16,03)
des.trap("hole",17,03)
des.trap("hole",18,03)
des.trap("hole",19,03)
des.trap("hole",20,03)
des.trap("hole",21,03)
des.trap("hole",22,03)
des.trap("hole",23,03)
des.trap("hole",24,03)
des.trap("hole",25,03)

des.monster({ id = "giant mimic", appear_as = "obj:boulder" })
des.monster({ id = "giant mimic", appear_as = "obj:boulder" })

des.object('%')
des.object('%')
des.object('%')
des.object('%')
des.object('=')
des.object('/')

-- Rewards
des.door("locked",26,10)
des.door("closed",20,08)
des.door("closed",20,10)
des.door("closed",20,12)

des.region({ region={21,07,25,13}, lit=1, type="zoo", filled=1, irregular=1 })


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
