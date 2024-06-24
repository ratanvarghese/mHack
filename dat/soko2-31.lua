-- "Either Way, It's All Good"
--MAZE: "soko2-14",' '
des.level_flags("noteleport", "premapped", "sokoban", "solidify")
des.message("Either Way, It's All Good")
--GEOMETRY: center, center
--12345678901234567890123456789012345678901234567890
des.map([[
           ----           
    --------..--------    
  ---...|........|...---  
  |.....|.....|..|.....|  
  |.....|...---..|.....|  
 --.------..|....-----.-- 
 |..........------......| 
--..-------..|...|......--
|.......|........|.......|
--......|...|..-------..--
 |......------..........| 
 --.-----....|..------.-- 
  |.....|..---...|.....|  
  |.....|..|.....|.....|  
  ---...|........|...---  
    --------..--------    
           ----           
]]);
--RANDOM_PLACES:(01,08),(24,08)
local places = { {01,08}, {24,08} }

if d(4) > 2 then
  des.stair("down", places[1][1], places[1][2])
  des.stair("up", places[2][1], places[2][2])
else
  des.stair("up", places[1][1], places[1][2])
  des.stair("down", places[2][1], places[2][2])
end

des.region(selection.area(00,00,25,16), "lit")
des.non_diggable(selection.area(00,00,25,16))
des.non_passwall(selection.area(00,00,25,16))

des.object("boulder",10,02)
des.object("boulder",04,03)
des.object("boulder",12,03)
des.object("boulder",21,03)
des.object("boulder",04,04)
des.object("boulder",06,04)
des.object("boulder",11,04)
des.object("boulder",15,04)
des.object("boulder",19,04)
des.object("boulder",21,04)
des.object("boulder",21,06)
des.object("boulder",03,07)
des.object("boulder",21,07)
des.object("boulder",22,07)
des.object("boulder",04,08)
des.object("boulder",06,08)
des.object("boulder",10,08)
des.object("boulder",15,08)
des.object("boulder",19,08)
des.object("boulder",21,08)
des.object("boulder",03,09)
des.object("boulder",04,09)
des.object("boulder",22,09)
des.object("boulder",04,10)
des.object("boulder",04,12)
des.object("boulder",06,12)
des.object("boulder",10,12)
des.object("boulder",14,12)
des.object("boulder",19,12)
des.object("boulder",21,12)
des.object("boulder",04,13)
des.object("boulder",13,13)
des.object("boulder",21,13)
des.object("boulder",15,14)

des.trap("hole",04,06)
des.trap("hole",05,06)
des.trap("hole",06,06)
des.trap("hole",07,06)
des.trap("hole",08,06)
des.trap("hole",09,06)
des.trap("hole",10,06)
des.trap("hole",11,06)
des.trap("hole",11,07)
des.trap("hole",12,08)
des.trap("hole",13,08)
des.trap("hole",14,09)
des.trap("hole",14,10)
des.trap("hole",15,10)
des.trap("hole",16,10)
des.trap("hole",17,10)
des.trap("hole",18,10)
des.trap("hole",19,10)
des.trap("hole",20,10)
des.trap("hole",21,10)

des.object('%')
des.object('%')
des.object('%')
des.object('%')
des.object('=', 16, 07)
des.object('/', 09, 09)
