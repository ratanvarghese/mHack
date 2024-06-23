--LEVEL:"soko4-5"
des.level_flags("noteleport", "hardfloor", "mazelevel", "premapped", "sokoban", "solidify")
--MESSAGE:"False Flag"
des.level_init({ style = "solidfill", fg = " " });
--GEOMETRY: center, center
-- "Thinking Rabbit"
des.map([[
----            
|..|            
|..-------------
|..............|
|-.--FFFFFF---+|
|..........F...|
|...|......F...|
---.|......F...|
  |.|...|..F...|
  |.|......F...|
  |.|.|....F...|
  |.|....-------
  |.---..|      
  |....|.|      
  ----...|      
     -----      
]]);
des.levregion({ region = {08,13,08,13}, type = "branch" })
des.stair("up",13,10)
des.region(selection.area(00,00,15,15), "lit")
des.non_diggable(selection.area(00,00,15,15))
des.non_passwall(selection.area(00,00,15,15))
des.door("locked",14,04)

-- MAGIC_CHEST:(08,14)

des.object("boulder",02,04)
des.object("boulder",02,05)
des.object("boulder",04,05)
des.object("boulder",06,07)
des.object("boulder",07,07)
des.object("boulder",09,07)
des.object("boulder",09,08)
des.object("boulder",06,09)
des.object("boulder",07,09)
des.object("boulder",08,10)
des.object("boulder",09,10)
des.object("boulder",07,11)

des.trap("pit",03,03)
des.trap("pit",04,03)
des.trap("pit",05,03)
des.trap("pit",06,03)
des.trap("pit",07,03)
des.trap("pit",08,03)
des.trap("pit",09,03)
des.trap("pit",10,03)
des.trap("pit",11,03)
des.trap("pit",12,03)
des.trap("pit",13,03)

des.object("scroll of earth",01,01)
des.object("scroll of earth",02,01)

des.object('%')
des.object('%')
des.object('%')
des.object('%')
des.object('=')
des.object('/')
