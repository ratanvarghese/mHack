-- Written for SpliceHack Kestrel Gregorich-Trevor
-- Modified for mHack by Ratan Varghese

-- The Banquet Hall
--
--
-- It's a party for everyone...

des.level_init({ style = "solidfill", fg = " " });

des.level_flags("mazelevel");

des.map({ halign = "center", valign = "center", map = [[
    ......................................................    
    ......................................................    
..............................................................
...............LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL.............\..
...............LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL................
..............................................................
    ......................................................    
    ......................................................    
]]});
des.region({ region={00,00,61,07},lit=1,type="throne", filled=2 })

-- Features
des.stair("up", 30,01)
des.object({id="statue", x=08, y=01,montype="H",historic=true})
des.object({id="statue", x=52, y=01,montype="H",historic=true})
des.object({id="statue", x=08, y=06,montype="H",historic=true})
des.object({id="statue", x=52, y=01,montype="H",historic=true})

-- Creatures
des.monster({id="dwarf",peaceful=0})
des.monster({id="dwarf",peaceful=0})
des.monster({id="dwarf",peaceful=0})
des.monster({id="dwarf",peaceful=0})
des.monster({id="dwarf",peaceful=0})
des.monster({id="dwarf ruler",peaceful=0})
des.monster({id="dwarf ruler",peaceful=0})
des.monster({id="dwarf noble",peaceful=0})
des.monster({id="dwarf noble",peaceful=0})
des.monster("dwarf")
des.monster("dwarf")
des.monster("h")
des.monster("h")
des.monster("h")
des.monster("H")
des.monster("H")
des.monster({id="storm giant", x=61, y=03,name="Lord Belaphius",peaceful=0})
des.monster({id="storm giant", x=61, y=03,name="Vizier Dophomor",peaceful=0})
des.monster("yellow mold")
des.monster("yellow mold")
des.monster("violet fungus")
des.monster("violet fungus")
des.monster("incubus")
des.monster("succubus")


-- Treasure
des.object({ id="luckstone", buc="not-cursed", achievement=1 })
des.object("loadstone")
des.object("flint")
des.object("flint")
des.object("flint")
des.object("flint")
des.object({id="chest", x=61, y=03})
des.object({id="chest", x=61, y=05})
des.object("potion of hallucination")
des.object("potion of hallucination")
des.object("potion of hallucination")
des.object("potion of booze")
des.object("potion of booze")
des.object("potion of booze")
des.object("potion of booze")
des.object("potion of booze")
des.object("potion of booze")
des.object("potion of booze")
-- It's a crazy party, don't tell the Kops...
des.object({ id = "ice box", trapped = 0,
             contents = function()
                des.object("potion of hallucination")
                des.object("potion of booze")
                des.object("potion of booze")
                des.object("potion of booze")
                des.object({ id = "corpse", montype = "yellow mold" })
                des.object({ id = "corpse", montype = "yellow mold" })
                des.object({ id = "corpse", montype = "yellow mold" })
                des.object({ id = "corpse", montype = "violet fungus" })
                des.object({ id = "corpse", montype = "violet fungus" })
             end
});

des.object("!")
des.object("!")
des.object("!")
des.object("*")
des.object("*")
des.object("*")
des.object("*")
des.object("*")
des.object("%")
des.object("%")
des.object("%")
des.object("%")
des.object("%")
des.object("%")
des.object()
des.object()
des.object()
