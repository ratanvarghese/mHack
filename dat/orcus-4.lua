-- Inspiration: "Vanite, ou Allegorie de la vie humaine", Philippe de Champaigne

des.level_init({ style="solidfill", fg =" " })
des.level_flags("mazelevel", "shortsighted")

--[[
#000000000111111111122222222223333333333444444444455555555556666666666777777
#123456789012345678901234567890123456789012345678901234567890123456789012345
--]]
des.map([[
----------------------------------------------------------------------------0
||||      |||| |||.| #+.|      ---------------      |.|                    |1
||.|-     |..| |...| #---  ----.............----    -+- -------------------|2
||...|-- |....|.....|##  ----...................---- ###S.................-|3
||.....||.....|.....| # --............/............--  #--...............--|4
| |.....|.....|S|..|  # |...........................|  # --.............-- |5
| |.....||......|.||| ##|...........................|  #  --...........--  |6
| |......|S|....|.|.|  #S...........................S###   --.........--   |7
||.........|....|....| #|......----.......----......|#-+------.......--    |8
||.........|....||....|#|.....-----.......-----.....|#|....| --.....--     |9
||.........|....||....|#--.....---.........---.....--#|....|  --...--      |0
||.........|....|.....|# --..........|.|..........-- #|....| --.....--     |1
||.........|....|.....|#  --........|||||........--  #|....|--.......--    |2
||.........||S||......|#   --+-.....||.||.....-+--   #-------.........--   |3
||.........||.|.......|#    |.----.........----.|   ##    --...........--  |4
| |........|..|......||#--- |....----...----....|---+--  --.............-- |5
|  |.........||......|##|.| |.......-----.......||....| --...............--|6
|   |........||....|S|#--+- ----....|...|....----|....| -.................-|7
|   |||.......||.|||###+..|    ----.+...+.----   |....| -------------------|8
|     ||||||||||||     |..|       ---------      |....|                    |9
----------------------------------------------------------------------------0
]]);

-- Level setup
des.region(selection.area(00,00,75,20), "unlit");
-- when falling down on this level, always end up in the flower
des.teleport_region({ region = {02,08,10,14}, exclude = {24,00,75,20}, dir = "down" });
-- stairs to Vlad may appear
des.levregion({ region={02,08,10,14}, region_islev=1, exclude={24,00,75,20}, exclude_islev=1, type="branch" });
-- Stairs up, in the flower
des.levregion({ region = {02,08,10,14}, exclude = {24,00,75,20}, type="stair-up"});
des.stair("down", 65,10);

-- Doors
des.door("random", 22,01)
des.door("random", 23,18)
des.door("random", 25,17)
des.door("random", 29,14)
des.door("random", 36,18)
des.door("random", 40,18)
des.door("random", 47,14)
des.door("random", 52,15)
des.door("random", 53,02)
des.door("random", 55,18)

des.altar({ x=38,y=18,align="noalign",type="sanctum" })
des.region({ region={25,05,29,09},lit=0,type="morgue",filled=1 })
des.region({ region={47,05,51,09},lit=0,type="morgue",filled=1 })
des.region({ region={59,03,71,05},lit=0,type="morgue",filled=1 })
des.region({ region={50,16,53,19},lit=1,type="shop",filled=1 })
des.region({ region={55,09,58,12},lit=1,type="shop",filled=1 })

-- Traps
des.trap("spiked pit")
des.trap("sleep gas")
des.trap("anti magic")
des.trap("fire")
des.trap("fire")
des.trap("fire")
des.trap("magic")
des.trap("magic")

-- Time is running out
local corpselocs = selection.area(59,15,71,17)
des.object("corpse", corpselocs:rndcoord(1))
des.object("corpse", corpselocs:rndcoord(1))
des.object("corpse", corpselocs:rndcoord(1))
des.object("corpse", corpselocs:rndcoord(1))
des.object("corpse", corpselocs:rndcoord(1))
des.object("corpse", corpselocs:rndcoord(1))
des.object("corpse", corpselocs:rndcoord(1))
des.object("corpse", corpselocs:rndcoord(1))
des.object("corpse", corpselocs:rndcoord(1))
des.object("corpse", corpselocs:rndcoord(1))
des.object("corpse", corpselocs:rndcoord(1))
des.object("corpse", corpselocs:rndcoord(1))
des.object("corpse", corpselocs:rndcoord(1))
des.object("corpse", corpselocs:rndcoord(1))
des.object("corpse", corpselocs:rndcoord(1))

-- Loot
des.object()
des.object()
des.object()
des.object()
des.object()
des.object()
des.object()
des.object()
des.object()
des.object()

-- The resident nasty
des.monster("Orcus",38,04)

-- And its preferred companions
des.monster("shade",38,03)
des.monster("shade",38,05)
des.monster("vampire",37,04)
des.monster("vampire",39,04)
des.monster("vampire lord",37,03)
des.monster("vampire lord",39,03)
des.monster("human zombie",37,05)
des.monster("human zombie",39,05)

-- Randomly placed companions
des.monster("skeleton")
des.monster("skeleton")
des.monster("skeleton")
des.monster("skeleton")
des.monster("skeleton")
des.monster("shade")
des.monster("shade")
des.monster("shade")
des.monster("shade")
des.monster("giant zombie")
des.monster("giant zombie")
des.monster("giant zombie")
des.monster("ettin zombie")
des.monster("ettin zombie")
des.monster("ettin zombie")
des.monster("human zombie")
des.monster("human zombie")
des.monster("human zombie")
des.monster("vampire")
des.monster("vampire")
des.monster("vampire")
des.monster("vampire lord")
des.monster("vampire lord")

-- A few more for the party
des.monster()
des.monster()
des.monster()
des.monster()
des.monster()
