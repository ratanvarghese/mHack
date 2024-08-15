-- Written for NetHack Fourk by tsadok
-- Modified for HackEM by Hackemslashem
-- Converted to Lua and modified for mHack by Ratan Varghese

-- "Back At Ya"
--MAZE: "soko1-11",' '
des.level_flags("noteleport", "premapped", "sokoban", "solidify")
des.message("Back At Ya")
--GEOMETRY: center, center
--12345678901234567890123456789
des.map([[
   ----- ---------     -------
----...--|..|-...---- --.....|
|........|..|.......---.....--
|...........................| 
|.---|.|-----.....---......-- 
|.|  |.|    --....| --.....|  
|.|  |.|--   ------  |-----|  
|.---|...|           |.....|--
|........|           |.....+.|
|...|...-------------|.....|-|
----|................+.....+.|
    -----------------|.....|-|
                     |.....+.|
                     |.....|--
                     -------  
]]);
local place = selection.new();
place:set(28,08);
place:set(28,10);
place:set(28,12);

des.stair("down",09,03)
des.door("locked",27,08)
des.door("locked",21,10)
des.door("locked",27,10)
des.door("locked",27,12)
des.region(selection.area(00,00,29,14), "lit")
des.non_diggable(selection.area(00,00,29,14))
des.non_passwall(selection.area(00,00,29,14))

des.object("boulder",02,02)
des.object("boulder",05,02)
des.object("boulder",10,02)
des.object("boulder",14,02)
des.object("boulder",17,02)
des.object("boulder",26,02)
des.object("boulder",10,03)
des.object("boulder",15,03)
des.object("boulder",16,03)
des.object("boulder",19,03)
des.object("boulder",23,03)
des.object("boulder",26,03)
des.object("boulder",14,04)
des.object("boulder",23,04)
des.object("boulder",25,04)
des.object("boulder",26,04)
des.object("boulder",02,08)
des.object("boulder",04,08)
des.object("boulder",07,08)

des.trap("hole",06,02)
des.trap("hole",06,03)
des.trap("hole",06,04)
des.trap("hole",06,05)
des.trap("hole",06,06)
des.trap("hole",06,07)
des.trap("hole",08,10)
des.trap("hole",09,10)
des.trap("hole",10,10)
des.trap("hole",11,10)
des.trap("hole",12,10)
des.trap("hole",13,10)
des.trap("hole",14,10)
des.trap("hole",15,10)
des.trap("hole",16,10)
des.trap("hole",17,10)
des.trap("hole",18,10)
des.trap("hole",19,10)

des.monster({ id = "giant mimic", appear_as = "obj:boulder" })
des.monster({ id = "giant mimic", appear_as = "obj:boulder" })

des.object('%')
des.object('%')
des.object('%')
des.object('%')
des.object('=')
des.object('/')
-- A pun on the name of the level:
des.object('ya')

-- Rewards
des.region({ region={22,07, 26,13}, lit = 1, type = "zoo", filled = 1, irregular = 1 });


--OBJECT: '"',"amulet of reflection",place[0]
--ENGRAVING: place[0], burn, "Elbereth"

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
