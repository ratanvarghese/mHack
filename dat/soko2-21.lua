--LEVEL:"soko2-4"
des.level_flags("noteleport", "mazelevel", "premapped", "sokoban", "solidify")
des.message("Back Alley Cliche")
des.level_init({ style = "solidfill", fg = " " });
--GEOMETRY: center, center
-- "Thinking Rabbit"
des.map([[
           ----       
  ---------|..|       
---...|...--..|---    
|.....|.......|..|    
|.|...|...--.....|    
|.|...|....|..--.|    
|.|.----.|.--F--.|--- 
|.|..|--.|..|.|..|..| 
|.|..|....|.|.|.....| 
|.........|.|.--F--.--
|.|..---.--.|..|..|..|
|.----......F..F.....|
|......-----|..|.-----
--------    |.--..|   
            |.....|   
            |..----   
            ----      
]]);
des.stair("down",12,01)
des.stair("up",13,07)
des.region(selection.area(00,00,21,16), "lit")
des.non_diggable(selection.area(00,00,21,16))
des.non_passwall(selection.area(00,00,21,16))

des.object("boulder",12,02)
des.object("boulder",03,03)
des.object("boulder",04,03)
des.object("boulder",12,03)
des.object("boulder",12,04)
des.object("boulder",08,05)
des.object("boulder",09,05)
des.object("boulder",03,07)
des.object("boulder",06,09)

des.trap("hole",14,04)
des.trap("hole",16,05)
des.trap("hole",16,06)
des.trap("hole",17,08)
des.trap("hole",19,09)
des.trap("hole",18,11)
des.trap("hole",16,12)
des.trap("hole",13,13)
des.trap("hole",15,14)

des.object('%')
des.object('%')
des.object('%')
des.object('%')
des.object('=')
des.object('/')
