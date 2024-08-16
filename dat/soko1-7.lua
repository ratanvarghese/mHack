-- Originally written by Thinking Rabbit
-- Heavily modified for NetHack Sokoban Levels patch by Pasi Kallinen
-- Heavily modified for NetHack Fourk by tsadok
-- Modified for HackEM by Hackemslashem
-- Converted to Lua and modified for mHack by Ratan Varghese

-- This was based on SLASH'EM Sokoban level 3c, but altered in many ways in Fourk.[1]
-- SLASH'EM Sokoban level 3c was in turn pulled from the Sokoban Levels patch.[2][3]
-- [1] https://github.com/tsadok/nhfourk/commit/e1792bf895b72727aa5210b7df3e91238e0431c3
-- [2] https://github.com/k21971/SlashEM/commit/a7906ae6768cb930ec80b57eb3f964e49e493821
-- [3] https://web.archive.org/web/20140402061823/http://bilious.alt.org/~paxed/nethack/nh342-newsoko.diff
-- The old, pre-Fourk design is ALSO included as IT'S OWN LEVEL, "Corner Pocket"

-- "Ringing Endorsement"
--MAZE:"soko1-7",' '
des.level_flags("noteleport", "premapped", "sokoban", "solidify")
des.message("Ringing Endorsement")
--GEOMETRY: center, center
--12345678901234567890123456789012345678901234567890
des.map([[
--------      -------------- 
|...|..|---   |............| 
|......|..|   |...--------+--
--.--..|..------.--   |.....|
 |.....--...|..|.|  --|.....|
 |.|....|......|.|  |.+.....|
 |...|.....---.|.|  |-|.....|
 |.....--..---.|.|  |.+.....|
 ---...|.......|.|  |-|.....|
   ---.|...--..|.|  |.+.....|
    |......||....|  --|.....|
    |.....-----..|    |.....|
    -------   ----    -------
]]);
local place = selection.new();
place:set(21,05);
place:set(21,07);
place:set(21,09);

des.stair("down",08,03)
des.region(selection.area(00,00,28,12), "lit")
des.non_diggable(selection.area(00,00,28,12))
des.non_passwall(selection.area(00,00,28,12))

des.object("boulder",02,02)
des.object("boulder",05,03)
des.object("boulder",04,04)
des.object("boulder",06,04)
des.object("boulder",09,04)
des.object("boulder",06,05)
des.object("boulder",10,05)
des.object("boulder",03,06)
des.object("boulder",06,06)
des.object("boulder",10,07)
des.object("boulder",05,08)
des.object("boulder",10,08)
des.object("boulder",10,09)
des.object("boulder",07,10)
des.object("boulder",08,10)

des.trap("hole",18,01)
des.trap("hole",19,01)
des.trap("hole",20,01)
des.trap("hole",21,01)
des.trap("hole",22,01)
des.trap("hole",23,01)
des.trap("hole",24,01)
des.trap("hole",25,01)
des.trap("hole",16,04)
des.trap("hole",16,05)
des.trap("hole",16,06)
des.trap("hole",16,07)
des.trap("hole",16,08)
des.trap("hole",16,09)

des.monster({ id = "giant mimic", appear_as = "obj:boulder" })
des.monster({ id = "giant mimic", appear_as = "obj:boulder" })

des.object('%')
des.object('%')
des.object('%')
des.object('%')
des.object('=')
des.object('/')
des.object('=', 21, 07)

-- Rewards
des.door("locked",26,02)
des.door("locked",22,05)
des.door("locked",22,07)
des.door("locked",22,09)
des.region({ region={23,03, 27,11}, lit = 1, type = "zoo", filled = 1, irregular = 1 });


--CONTAINER:'(',"sack",place[0]
--OBJECT: '=',"polymorph control",contained
--OBJECT: '=',"teleport control",contained
--OBJECT: '=',random,contained
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
