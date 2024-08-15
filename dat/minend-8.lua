-- Written for mHack by Ratan Varghese

des.level_init({ style = "solidfill", fg = "-" })
des.level_flags("mazelevel", "nommap")

--[[
#000000000111111111122222222223333333333444444444455555555556666666666777777
#123456789012345678901234567890123456789012345678901234567890123456789012345
--]]
des.map([[
----------------------------------------------------------------------------0
|- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -.- - - - |1
|-----------------------------------------------------------------S--------|2
|- - - - - - - - - - - - - - - - - - - - - - - - - - - - - --......--- - - |3
|-----------------------------------------------------------......---------|4
|- - - - - - - - - - - - - - - |...| - - - - - - - - - - --......--- - - - |5
|------------------------------|.{.|----------------------......-----------|6
|- - - - - - - - - - - - - - - |...| - - - - - - - - - --......--- - - - - |7
|-------------------------------------------------------......-------------|8
|- - - - - - - - - - - - - - - - - - - - - - - - - - --......--- - - - - - |9
|-----S-----------------------------------------------......---------------|0
|- - |...| - - - - - - - - - - - - - - - - - - - - --......--- - - - - - - |1
|----|...|------------------------------------------......-----------------|2
|- - |...----- - - - - - - - - - - - - - - - - - --......--- - - - - - - - |3
|----|.......|------------------------------------......------------------S|4
|- - |.......S - - - - - - - - - - - - - - - - --......--- - - - - - |.....|5
|-----------------------------------------------......---------------|.PPP.|6
|- - - - - - - - - - - - - - - - - - - - - - --......--- - - - - - - S.P.P.|7
|-----------------------------------------------S--------------------|.PPP.|8
|- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - |.....|9
----------------------------------------------------------------------------0
]]);

local stones = { {56,10}, {57,10}, {32,05}, {34,07}, {72,17}, {48,19} }
shuffle(stones)

des.mazewalk({ x=32, y=07, dir="south" });

des.region(selection.area(0,0,75,19), "unlit")
des.stair("up", 06, 15)
des.feature("fountain", 33, 06)

des.engraving({ coord = { 07, 14 }, type = "burn", text = "Beware the gnome with the wand of death!" })

des.monster("gnome")
des.monster("gnome")
des.monster("gnome")
des.monster("gnome")
des.monster("gnome")
des.monster("gnome")
des.monster("gnome")
des.monster("gnome")
des.monster("gnome")
des.monster("gnome")
des.monster("gnome leader")
des.monster("gnome leader")
des.monster("gnome leader")
des.monster("gnome leader")
des.monster("gnome ruler")
des.monster({ class="m", appear_as="obj:striking" })
des.monster({ class="m", appear_as="obj:striking" })
des.monster({ class="m", appear_as="obj:striking" })
des.monster({ class="m", appear_as="obj:striking" })

des.object({ id="luckstone", coord=stones[1], buc="not-cursed", achievement=1 })
des.object("loadstone", stones[2])
des.object("flint", stones[3])
des.object("flint", stones[4])
des.object("diamond")
des.object("emerald")
des.object("amethyst")
des.object("ruby")
des.object("*")
des.object("*")
des.object("*")
des.object("*")
des.object("*")
des.object("*")
des.object("*")

des.object("/")
des.object("/")
des.object("/")
des.object("/")
des.object("/")
des.object("/")
des.object("/")
des.object("/")
des.object("/")
des.object("/")
des.object("/")
des.object({ id="wand of death", spe=0 })
