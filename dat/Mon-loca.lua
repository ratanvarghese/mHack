-- NetHack Monk Mon-loca.lua	$NHDT-Date: 1652196007 2022/05/10 15:20:07 $  $NHDT-Branch: NetHack-3.7 $:$NHDT-Revision: 1.1 $
--	Copyright (c) 1989 by Jean-Christophe Collet
--	Copyright (c) 1991-2 by M. Stephenson
--  Copyright (c) 2024 by Ratan Varghese
-- NetHack may be freely redistributed.  See license for details.
--

-- Heavily modified for mHack
-- The down stairs are in an unconnected room, reachable by teleportation but not digging.
-- Magic mapping is intentionally disabled - forcing the player to guess the destination.
-- The terrain layout and the guaranteed scrolls should help the player find their way.

des.level_init({ style = "solidfill", fg = " " });

des.level_flags("mazelevel", "nommap");

--[[
#         1         2         3         4         5         6         7 
#123456789012345678901234567890123456789012345678901234567890123456789012345
--]]
des.map([[
----------------------------------------------------------------------------
|                             PPP##########PPP                             |
|  ---------------------     PP##........  ##PP        ##########          |
|  |...................|    PP#...........   #PP       #        #          |
|  |...................|   PP#.......  ....   #PP      #  ------+--        |
|  |...................|   P#.......    ...    #P      #  |.PPPP.P|        |
|  |...................|  PP#.......    ...    #PP     #  |...PPPP|        |
|  |...................|  P#.........  ....     #P     #  |.....PP|        |
|  --S-------+----------  P#...............     #P-----#  |.P....P|        |
|    #       #            P#..............      ##....+#  ----+----        |
|            #       -----P#.............       #P-----       #            |
|        ----+----  #+....##.......             #P            #       #    |
|        |P....P.|  #-----P#......              #P  ----------+-------S--  |
|        |PP.....|  #     P#......   ..         #P  |...................|  |
|        |PPPP...|  #     PP#.....  ....       #PP  |...................|  |
|        |P.PPPP.|  #      P#.....  ....       #P   |...................|  |
|        --+------  #      PP#....   ..       #PP   |...................|  |
|          #        #       PP#....          #PP    |...................|  |
|          ##########        PP##...       ##PP     ---------------------  |
|                             PPP##########PPP                             |
----------------------------------------------------------------------------
]]);

-- Dungeon Description
des.region(selection.area(00,00,75,20), "lit")

-- Stairs
local up_places = { {13,05}, {62,15} }
local down_places = { {37,14}, {37,15}, {38,14}, {38,15} }
shuffle(up_places)
shuffle(down_places)
des.stair("up", up_places[1])
des.stair("down", down_places[1])

-- Non diggable walls
des.non_diggable(selection.area(00,00,75,20))

-- Doors
des.door("closed", 11,16)
des.door("closed", 13,08)
des.door("closed", 13,11)
des.door("locked", 21,11)
des.door("locked", 54,09)
des.door("closed", 62,06)
des.door("closed", 62,09)
des.door("closed", 64,04)

-- Fixed Objects
des.object({ coord = up_places[2], id = "scroll of teleportation", buc = "blessed" })
des.object({ coord = down_places[2], id = "scroll of teleportation", buc = "blessed" })
des.object({ id = "scroll of teleportation", buc = "blessed" })
des.object({ id = "scroll of teleportation", buc = "blessed" })
-- since vegetarian monks shouldn't eat giant corpses, give a chance for
-- Str boost that isn't throttled by exercise restrictions;
-- make a modest effort (Elbereth only) to prevent xorns from eating the tins
local tinplace = selection.negate():filter_mapchar('.')
local tinloc = tinplace:rndcoord(0)
des.object({ id="tin", coord=tinloc, quantity=2, buc="blessed",
             montype="spinach" })
des.engraving({ coord=tinloc, type="burn", text="Elbereth" })

-- Random Objects
des.object('?')
des.object('?')
des.object('?')
des.object('?')
des.object('?')
des.object('!')
des.object('!')
des.object('+')
des.object('+')
-- Random monsters
des.monster("earth elemental")
des.monster("earth elemental")
des.monster("earth elemental")
des.monster("earth elemental")
des.monster("earth elemental")
des.monster("earth elemental")
des.monster("earth elemental")
des.monster("earth elemental")
des.monster("earth elemental")
des.monster("earth elemental")
des.monster("earth elemental")
des.monster("earth elemental")
des.monster("earth elemental")
des.monster("earth elemental")
des.monster("xorn")
des.monster("xorn")
des.monster("xorn")
des.monster("xorn")
des.monster("xorn")
des.monster("xorn")
des.monster("xorn")
des.monster("xorn")
des.monster("xorn")

-- Engravings
-- From Ursula K. Le Guin's "rendition" of Lao Tzu's Tao Te Ching
local the_way = {
    "The way you go isn't the real way",
    "The name you can say isn't the real name",
    "The unwanting soul sees what's hidden",
    "The ever-wanting soul sees only what it wants",
    "Hard and easy complete each other",
    "Long and short shape each other",
    "High and low depend on each other",
    "Where the room isn't, there's room for you",
}
shuffle(the_way)
local text_locs_west = selection.area(04,03,22,07)
local text_locs_east = selection.area(53,13,71,17)
des.engraving({ coord = text_locs_west:rndcoord(1), type="engrave", text = the_way[1] })
des.engraving({ coord = text_locs_west:rndcoord(1), type="engrave", text = the_way[2] })
des.engraving({ coord = text_locs_west:rndcoord(1), type="engrave", text = the_way[3] })
des.engraving({ coord = text_locs_west:rndcoord(1), type="engrave", text = the_way[4] })
des.engraving({ coord = text_locs_east:rndcoord(1), type="engrave", text = the_way[5] })
des.engraving({ coord = text_locs_east:rndcoord(1), type="engrave", text = the_way[6] })
des.engraving({ coord = text_locs_east:rndcoord(1), type="engrave", text = the_way[7] })
des.engraving({ coord = text_locs_east:rndcoord(1), type="engrave", text = the_way[8] })