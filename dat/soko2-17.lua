-- Originally written by J Franklin Mentzer
-- Heavily modified for NetHack Sokoban Levels patch by Pasi Kallinen
-- Heavily modified for NetHack Fourk by tsadok
-- Modified for HackEM by Hackemslashem
-- Converted to Lua and modified for mHack by Ratan Varghese

-- This was based on SLASH'EM Sokoban level 1c, but altered in many ways in Fourk.[1]
-- SLASH'EM Sokoban level 1c was in turn pulled from the Sokoban Levels patch.[2][3]
-- [1] https://github.com/tsadok/nhfourk/commit/b8ca981f2752bbbb80498991cf51027027df1ef1
-- [2] https://github.com/k21971/SlashEM/commit/a7906ae6768cb930ec80b57eb3f964e49e493821
-- [3] https://web.archive.org/web/20140402061823/http://bilious.alt.org/~paxed/nethack/nh342-newsoko.diff
-- The old, pre-Fourk design is ALSO included as IT'S OWN LEVEL, "Mirror Hall"

-- "The Snake"
-- (Adapted from Slash'em.)
--MAZE:"soko3-14",' '
des.level_flags("noteleport", "premapped", "sokoban", "solidify")
des.message("The Snake")
--GEOMETRY: center, center
--123456789012345678901234567
des.map([[
  ---------                 
 --.......--                
 |..--.--..|                
 |.........|     -----      
 |..-|.|-..|     |...|      
---..|.|..---    |.{.|      
|...........|    |...|      
|..|.....|..|  ----S----    
|-.|.---.|.-|  |.......|    
|..|.....|..|  |.......|    
|...........|  |.......|    
---.--.--.---  |.......|    
  |.......|    |.......|    
  ---...---    ----+----    
    |...|         |.|       
    |...-----------.|       
    |...............|       
    -----------------       
]]);
des.stair("up",19,10)
des.stair("down",06,13)
des.door("locked",19,13)
des.door("locked",19,07)
des.region(selection.area(00,00,27,17), "lit")
des.non_diggable(selection.area(00,00,27,17))
des.non_passwall(selection.area(00,00,27,17))

des.object("boulder",03,03)
des.object("boulder",05,03)
des.object("boulder",07,03)
des.object("boulder",09,03)
des.object("boulder",06,06)
des.object("boulder",06,07)
des.object("boulder",02,08)
des.object("boulder",04,08)
des.object("boulder",08,08)
des.object("boulder",10,08)
des.object("boulder",06,09)
des.object("boulder",06,10)

des.trap("hole",09,16)
des.trap("hole",10,16)
des.trap("hole",11,16)
des.trap("hole",12,16)
des.trap("hole",13,16)
des.trap("hole",14,16)
des.trap("hole",15,16)
des.trap("hole",16,16)
des.trap("hole",17,16)
des.trap("hole",18,16)

des.object('%')
des.object('%')
des.object('%')
des.object('%')
des.object('=')
des.object('/')
