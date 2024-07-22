-- Fang Cove

des.level_init({ style = "solidfill", fg = " " });
des.level_flags("noteleport", "mazelevel")

--[[
#         1         2         3         4         5         6         7 
#123456789012345678901234567890123456789012345678901234567890123456789012345
--]]
des.map([[
}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}0
}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}----------w}}}}}}}}}}}}}}}}}}}}}}}}}wwwwwww}}}1
}}}}}}}}}}}}}}}}}}}}}}---------........|ww}}}}}}}}}}}}}wwww}}}}}}}w.....w}}}2
}}}}}}}}}}}}}}}}}}}}}}|....|...........|.ww}}}}}}}}}}}}w..w}}}}}}}w.....w}}}3
}}}}}}}}}}}}}}}}}}-----....|....--------..ww}}}}}}}}}}}ww.w}}}}}}}w.....w}}}4
}}}}}}}}}}}}}}-----...-+----..---.wwww.....w}}}}ww}}}}}}w.w}}}}}}}w.....w}}}5
}}}}}}}}}}-----..............--.www}}www...w}}}}}ww}}}}}w.ww}}}}}}w.....w}}}6
}}}}}------...|..........-----www}}}}}}w...w}}}}}}w}}}}}w..w}}}}}}wwwwwww}}}7
}}}---........+......-----..www}}}}}}}}ww..w}}}}}}}}}}}}wwww}}}}}}}}}}}}}}}}8
}---..........|..-----....www}}}}}}}}}}}w..w}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}9
}|............----....wwwww}}}}}}}}}}}}ww.ww}}}}}}}}}}}}}}}}}}wwww}}}}}www}}0
}|-----S-------...wwwww}}}}}}}}}}}}}}}}w.ww}}}}}}}}}}}}}}}}wwww..w}}}}}w.w}}1
}|...........+..www}}}}}}}}}}}}}}}}}}}}www}}}}}}}}}}}}}}}www.....w}}}}}w.w}}2
}|-S-----....-....wwwww}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}w.......w}}}}}www}}3
}|......------........wwwww}}}}}}}}}}}}}}}}}}}}}}}}www}}}w.wwwwwww}}}}}}}}}}4
}|....---}}}}----.........wwwww}}}}}www}}}}}}}}}}}}w.w}}}www}}}}}}}}}}www}}}5
}--.---}}}}}}}}}-----.........wwwww}w.w}}}}}wwwwww}w.w}}}}}}}}}}}}}}}ww.ww}}6
}}---}}}}}}}}}}}}}}}-----.........www.w}}}www....w}www}}}}}}}}}}}}}}}w...w}}7
}}}}}}}}}}}}}}}}}}}}}}}}----.........ww}}}w...wwww}}}}}}}}}}}}}}}}}}}w...w}}8
}}}}}}}}}}}}}}}}}}}}}}}}}}}-------wwww}}}wwwwww}}}}}}}}}}}}}}}}}}}}}}wwwww}}9
}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}0
]]);

-- Teleport: down to up stairs island, up to Medusa's island
des.teleport_region({ region = {67,02,71,06}, dir="down" })
des.teleport_region({ region = {23,03,26,04}, dir="up" })
-- Stairs
des.stair("up", 69,04)
des.stair("down", 24,04)

des.region(selection.area(00,00,75,20),"lit")
-- fixup_special hack: The first "room" region in Medusa levels gets filled
-- with some leaderboard statues, so this needs to be a room; setting
-- irregular=1 will force this
des.region({ region={23,03,26,04}, lit=0, type="ordinary", irregular=1 })

des.door("locked",13,12)
des.door("locked",14,08)
des.door("locked",23,05)

des.object({ id="statue", coord={03,15}, buc="uncursed",
                      montype="knight", historic=1, male=1,name="Perseus",
                      contents = function()
                         if percent(25) then
                            des.object({ id = "shield of reflection", buc="cursed", spe=0 })
                         end
                         if percent(75) then
                            des.object({ id = "levitation boots", spe=0 })
                         end
                         if percent(50) then
                            des.object({ id = "scimitar", buc="blessed", spe=2 })
                         end
                         if percent(50) then
                            des.object("sack")
                         end
                      end
});

des.object({ id = "statue", contents=0 })
des.object({ id = "statue", contents=0 })
des.object({ id = "statue", contents=0 })
des.object({ id = "statue", contents=0 })
des.object({ id = "statue", contents=0 })
des.object({ id = "statue", contents=0 })
des.object({ id = "statue", contents=0 })
for i=1,8 do
   des.object()
end
--
for i=1,7 do
   des.trap()
end

-- place Medusa before placing other monsters so that they won't be able to
-- unintentionally steal her spot on the downstairs
des.monster({ id = "Medusa", coord={24,04}, asleep=1 })

des.monster("giant eel")
des.monster("giant eel")
des.monster("jellyfish")
des.monster("jellyfish")
for i=1,14 do
   des.monster("S")
end
for i=1,4 do
   des.monster("black naga hatchling")
   des.monster("black naga")
end
for i=1,3 do
   des.monster("N")
end
des.monster("water troll")
des.monster({ id = "titan", coord={03,16}, asleep=1 })
