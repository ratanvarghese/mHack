-- "The Dragon of Bactria"
--MAZE: "soko1-12",' '
des.level_flags("noteleport", "premapped", "sokoban", "solidify")
--MESSAGE: "The Dragon of Bactria"
--GEOMETRY: center, center
--123456789012345678901234567890
des.map([[
 -----   ----                  
 |...----|..---       -------  
 |............|   ----|.....|--
--.......|....|   |...+.....+.|
|........|....|   |.--|.....|-|
|........|....|   |.| |.....+.|
|---.------.----  |.| |.....|-|
|.......|......|  |.| |.....+.|
|.......|......|  |.| |.....|--
|..............|  |.| -------  
|.......|.....--  |.|          
|.......|.....|   |.|          
|-.--------...|   |.|          
|-.|      -----   |.|          
|..----------------.|          
|...................|          
------------------..|          
                 ----          
]]);
local place = selection.new();
place:set(29,03);
place:set(29,05);
place:set(29,07);

des.stair("down",02,12)
des.door("locked",22,03)
des.door("locked",28,03)
des.door("locked",28,05)
des.door("locked",28,07)
des.region(selection.area(00,00,30,17), "lit")
des.non_diggable(selection.area(00,00,30,17))
des.non_passwall(selection.area(00,00,30,17))

des.object("boulder",02,02)
des.object("boulder",03,02)
des.object("boulder",05,02)
des.object("boulder",08,02)
des.object("boulder",04,03)
des.object("boulder",06,03)
des.object("boulder",05,04)
des.object("boulder",08,04)
des.object("boulder",02,05)
des.object("boulder",06,05)
des.object("boulder",02,07)
des.object("boulder",04,07)
des.object("boulder",05,07)
des.object("boulder",10,07)
des.object("boulder",12,07)
des.object("boulder",03,08)
des.object("boulder",05,08)
des.object("boulder",10,08)
des.object("boulder",12,08)
des.object("boulder",02,09)
des.object("boulder",05,09)
des.object("boulder",07,09)
des.object("boulder",11,09)
des.object("boulder",13,09)
des.object("boulder",03,10)
des.object("boulder",06,10)
des.object("boulder",07,10)
des.object("boulder",10,10)
des.object("boulder",12,10)
des.object("boulder",02,11)
des.object("boulder",03,11)
des.object("boulder",11,11)

des.trap("hole",19,04)
des.trap("hole",19,05)
des.trap("hole",19,06)
des.trap("hole",19,07)
des.trap("hole",19,08)
des.trap("hole",19,09)
des.trap("hole",19,10)
des.trap("hole",19,11)
des.trap("hole",19,12)
des.trap("hole",02,13)
des.trap("hole",19,13)
des.trap("hole",02,14)
des.trap("hole",19,14)
des.trap("hole",03,15)
des.trap("hole",04,15)
des.trap("hole",05,15)
des.trap("hole",06,15)
des.trap("hole",07,15)
des.trap("hole",08,15)
des.trap("hole",09,15)
des.trap("hole",10,15)
des.trap("hole",11,15)
des.trap("hole",12,15)
des.trap("hole",13,15)
des.trap("hole",14,15)
des.trap("hole",15,15)
des.trap("hole",16,15)
des.trap("hole",17,15)

des.monster({ id = "giant mimic", appear_as = "obj:boulder" })
des.monster({ id = "giant mimic", appear_as = "obj:boulder" })

des.monster("baby green dragon", 29, 05)

des.object('%')
des.object('%')
des.object('%')
des.object('%')
des.object('%')
des.object('=')
des.object('/')

-- Rewards
des.region({ region={23,02, 27,08}, lit = 1, type = "zoo", filled = 1, irregular = 1 });


--OBJECT: '(',"bag of holding", $place[0]
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
