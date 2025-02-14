-- NetHack Knight Kni-goal.lua	$NHDT-Date: 1652196005 2022/05/10 15:20:05 $  $NHDT-Branch: NetHack-3.7 $:$NHDT-Revision: 1.1 $
--	Copyright (c) 1989 by Jean-Christophe Collet
--	Copyright (c) 1991,92 by M. Stephenson
-- NetHack may be freely redistributed.  See license for details.
--
-- Modified for the Terrain patch by L
des.level_init({ style = "solidfill", fg = " " });

des.level_flags("mazelevel");

des.map([[
.wwwPPPPwwPPPw.                                                             
wPPPPPwwwPPw.     ..........     .................................          
.wPPPPPw.wPw.    ...........    ...................................         
.wPPPww...w.   ...........    ......................................        
..wPPPw......    .........     ...............   .....................      
...www.....    ............    ............     ......................      
............   .............      .......     .....................         
..............................            .........................         
...............................   ..................................        
.............................    ....................................       
.....ww..    ......................................................         
....wPPw..    .....................................................         
....wPPPw...    ....................................................        
.....wPPPw...   ..............   ....................................       
......wPPPw...  .............    .....................................      
...www.wPPw..    ............    ......................................     
..wPPPw.ww....     ..........     ..................................        
.wPPPPPww......     ..........     ..............................           
..wwPPPPPww....       .........     ..........................              
....wwwPPPPw..                                                              
]]);
-- Dungeon Description
des.region(selection.area(00,00,14,19), "lit")
des.region(selection.area(15,00,75,19), "unlit")
-- Stairs
des.stair("up", 03,08)
-- Non diggable walls
des.non_diggable(selection.area(00,00,75,19))
-- Objects
des.object({ id = "mirror", x=50,y=06, buc="blessed", spe=0, name="The Magic Mirror of Merlin" })
des.object({ coord = { 33, 01 } })
des.object({ coord = { 33, 02 } })
des.object({ coord = { 33, 03 } })
des.object({ coord = { 33, 04 } })
des.object({ coord = { 33, 05 } })
des.object({ coord = { 34, 01 } })
des.object({ coord = { 34, 02 } })
des.object({ coord = { 34, 03 } })
des.object({ coord = { 34, 04 } })
des.object({ coord = { 34, 05 } })
des.object({ coord = { 35, 01 } })
des.object({ coord = { 35, 02 } })
des.object({ coord = { 35, 03 } })
des.object({ coord = { 35, 04 } })
des.object({ coord = { 35, 05 } })
des.object()
des.object()
des.object()
des.object()
des.object()
des.object()
-- Random traps
des.trap("spiked pit",13,07)
des.trap("spiked pit",12,08)
des.trap("spiked pit",12,09)
des.trap()
des.trap()
des.trap()
des.trap()
des.trap()
-- Random monsters.
des.monster({ id = "Ixoth", x=50, y=06, peaceful=0 })
des.monster({ id = "quasit", peaceful=0 })
des.monster({ id = "quasit", peaceful=0 })
des.monster({ id = "quasit", peaceful=0 })
des.monster({ id = "quasit", peaceful=0 })
des.monster({ id = "quasit", peaceful=0 })
des.monster({ id = "quasit", peaceful=0 })
des.monster({ id = "quasit", peaceful=0 })
des.monster({ id = "quasit", peaceful=0 })
des.monster({ id = "quasit", peaceful=0 })
des.monster({ id = "quasit", peaceful=0 })
des.monster({ id = "quasit", peaceful=0 })
des.monster({ id = "quasit", peaceful=0 })
des.monster({ id = "quasit", peaceful=0 })
des.monster({ id = "quasit", peaceful=0 })
des.monster({ id = "quasit", peaceful=0 })
des.monster({ id = "quasit", peaceful=0 })
des.monster({ class = "i", peaceful=0 })
des.monster({ class = "i", peaceful=0 })
des.monster({ id = "ochre jelly", peaceful=0 })
des.monster({ id = "ochre jelly", peaceful=0 })
des.monster({ id = "ochre jelly", peaceful=0 })
des.monster({ id = "ochre jelly", peaceful=0 })
des.monster({ id = "ochre jelly", peaceful=0 })
des.monster({ id = "ochre jelly", peaceful=0 })
des.monster({ id = "ochre jelly", peaceful=0 })
des.monster({ id = "ochre jelly", peaceful=0 })
des.monster({ class = "j", peaceful=0 })
