-- "Collecting Marbles"
--MAZE:"soko1-9",' '
des.level_flags("noteleport", "premapped", "sokoban", "solidify")
--MESSAGE: "Collecting Marbles"
--GEOMETRY: center, center
--12345678901234567890123456789012345678901234567890
des.map([[
   ------------------------
   |......................|
   |..-------------------.|
 ----.--   ----         |.|
 |.....-----..|         |.|
 |............|         |.|
 --.......|...|         |.|
  --......|...|         |.|
   |.----.--.-|   ------|.|
  --...--.....| --|.....|.|
  |...........| |.+.....|.|
  |...---.--.-| |-|.....|.|
  |...|.......| |.+.....+.|
 --.---.......| |-|.....|--
 |............| |.+.....|  
 |....|.......| --|.....|  
 --------------   -------  
]]);
local place = selection.new();
place:set(17,10);
place:set(17,12);
place:set(17,14);

des.stair("down",03,15)
des.region(selection.area(00,00,26,16), "lit")
des.non_diggable(selection.area(00,00,26,16))
des.non_passwall(selection.area(00,00,26,16))

des.object("boulder",03,14)
--
des.object("boulder",06,14)
des.object("boulder",08,14)
des.object("boulder",10,14)
des.object("boulder",12,14)
des.object("boulder",12,13)
des.object("boulder",09,13)
des.object("boulder",08,12)
des.object("boulder",11,12)
--
des.object("boulder",03,11)
des.object("boulder",05,11)
des.object("boulder",05,09)
des.object("boulder",04,08)
--
des.object("boulder",11,09)
--
des.object("boulder",03,04)
des.object("boulder",04,06)
des.object("boulder",08,07)
des.object("boulder",08,05)
--
des.object("boulder",11,05)
des.object("boulder",12,05)
des.object("boulder",12,06)

des.trap("hole",06,01)
des.trap("hole",07,01)
des.trap("hole",08,01)
des.trap("hole",09,01)
des.trap("hole",10,01)
des.trap("hole",11,01)
des.trap("hole",12,01)
des.trap("hole",13,01)
des.trap("hole",14,01)
des.trap("hole",15,01)
des.trap("hole",16,01)
des.trap("hole",17,01)
des.trap("hole",18,01)
des.trap("hole",19,01)
des.trap("hole",20,01)
des.trap("hole",21,01)
des.trap("hole",22,01)
des.trap("hole",23,01)

des.monster({ id = "giant mimic", appear_as = "obj:boulder" })
des.monster({ id = "giant mimic", appear_as = "obj:boulder" })

des.object('%')
des.object('%')
des.object('%')
des.object('%')
des.object('=')
des.object('/')

-- Rewards
des.door("locked",24,12)
des.door("closed",18,10)
des.door("closed",18,12)
des.door("closed",18,14)
des.region({ region={19,09, 23,15}, lit = 1, type = "zoo", filled = 1, irregular = 1 });

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
