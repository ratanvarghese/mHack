-- "Open at the Top"
--MAZE:"soko1-8",' '
des.level_flags("noteleport", "premapped", "sokoban", "solidify")
des.message("Open at the Top")
--GEOMETRY: center, center
--12345678901234567890123456789012345678901234567890
des.map([[
 ------------------    ----
 |................------..|
 |........................|
 |...........----.-------.|
 |--.--------|....|     |.|
 |.....|.....|....|     |.|
 |.....|..........|     |.|
 |............-----     |.|
 |.....|......|         |.|
 |.....--.....|         |.|
 -----.--------   ------|.|
  |.........|   --|.....|.|
  |.........|   |.+.....|.|
  |-.----...|   |-|.....|.|
  |........--   |.+.....+.|
  |........|    |-|.....|--
  |.....----    |.+.....|  
  -------       --|.....|  
                  -------  
]]);
local place = selection.new();
place:set(17,12);
place:set(17,14);
place:set(17,16);

des.stair("down",04,15)
des.region(selection.area(00,00,26,18), "lit")
des.non_diggable(selection.area(00,00,26,18))
des.non_passwall(selection.area(00,00,26,18))

des.object("boulder",05,14)
des.object("boulder",08,15)
des.object("boulder",09,14)
--
des.object("boulder",04,11)
des.object("boulder",05,12)
des.object("boulder",07,11)
des.object("boulder",08,12)
--OBJECT: ('`', "boulder"), (10,12)
--
des.object("boulder",14,06)
des.object("boulder",13,08)
des.object("boulder",12,08)
des.object("boulder",11,06)
des.object("boulder",10,08)
des.object("boulder",09,08)
des.object("boulder",08,06)
--
des.object("boulder",06,09)
des.object("boulder",06,06)
des.object("boulder",06,07)
des.object("boulder",03,07)
des.object("boulder",04,04)
des.object("boulder",04,03)

des.trap("hole",18,02)
des.trap("hole",19,02)
des.trap("hole",20,02)
des.trap("hole",21,02)
des.trap("hole",22,02)
des.trap("hole",23,02)
des.trap("hole",24,02)
des.trap("hole",25,03)
des.trap("hole",25,04)
des.trap("hole",25,05)
des.trap("hole",25,06)
des.trap("hole",25,07)
des.trap("hole",25,08)
des.trap("hole",25,09)
des.trap("hole",25,10)
des.trap("hole",25,11)
des.trap("hole",25,12)
des.trap("hole",25,13)

des.monster({ id = "giant mimic", appear_as = "obj:boulder" , x = 10, y = 10})
des.monster({ id = "giant mimic", appear_as = "obj:boulder" })

des.object('%')
des.object('%')
des.object('%')
des.object('%')
des.object('=')
des.object('/')

-- Rewards
des.door("locked",24,14)
des.door("closed",18,12)
des.door("closed",18,14)
des.door("closed",18,16)

des.region({ region={19,11, 23,17}, lit = 1, type = "zoo", filled = 1, irregular = 1 });


--OBJECT: '(',"bag of holding",place[0]
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
