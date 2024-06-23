--LEVEL:"soko4-4"
des.level_flags("noteleport", "hardfloor", "mazelevel", "premapped", "sokoban", "solidify")
--MESSAGE:"We See You"
des.level_init({ style = "solidfill", fg = " " });
--GEOMETRY: center, center
-- "Joseph L Traub"
des.map([[
  -------------    
--|...........|    
|.+...........|    
|.|...........|----
|.|FFFFFFFFFFF|...|
|.F...........|...|
|.F.--............|
|.F..|.-----.--...|
|.F..|.....|.||...|
|.F.--.---.|.--...|
|.F....---........|
|.-FF-.......--...|
|............|-----
|..---.......|     
---- ------..|     
          ----     
]]);
des.levregion({ region = {11,14,11,14}, type = "branch" })
des.stair("up",12,02)
des.region(selection.area(00,00,18,15), "lit")
des.non_diggable(selection.area(00,00,18,15))
des.non_passwall(selection.area(00,00,18,15))
des.door("locked",02,02)

-- MAGIC_CHEST:(12,12)

des.object("boulder",08,06)
des.object("boulder",10,06)
des.object("boulder",15,06)
des.object("boulder",16,06)
des.object("boulder",16,07)
des.object("boulder",06,08)
des.object("boulder",07,08)
des.object("boulder",12,08)
des.object("boulder",16,08)
des.object("boulder",15,09)
des.object("boulder",11,10)
des.object("boulder",13,10)

des.trap("pit",01,03)
des.trap("pit",01,04)
des.trap("pit",01,05)
des.trap("pit",01,06)
des.trap("pit",01,07)
des.trap("pit",01,08)
des.trap("pit",01,09)
des.trap("pit",01,10)
des.trap("pit",03,12)
des.trap("pit",04,12)
des.trap("pit",05,12)

des.object("scroll of earth",01,13)
des.object("scroll of earth",02,13)

des.object('%')
des.object('%')
des.object('%')
des.object('%')
des.object('=')
des.object('/')
