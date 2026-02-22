des.room({ type = "ordinary",
           contents = function()
              des.stair("up")
              des.object()
              des.monster({ id = "water elemental", peaceful=0 })
              des.monster("energy vortex")
           end
})

des.room({ type = "ordinary",
           contents = function()
              des.object()
              des.object()
              des.monster({ id = "water elemental", peaceful=0 })
              des.monster("quark")
           end
})

des.room({ type = "ordinary",
           contents = function()
              des.object()
              des.trap()
              des.object()
              des.monster("v")
              des.monster("E")
           end
})

des.room({ type = "ordinary",
           contents = function()
              des.stair("down")
              des.object()
              des.trap()
              des.monster({ id = "water elemental", peaceful=0 })
              des.monster("energy vortex")
              des.monster("quark")
           end
})

des.room({ type = "ordinary",
           contents = function()
              des.object("scroll of alchemy")
              des.object()
              des.object()
              des.trap()
              des.monster({ id = "air elemental", peaceful=0 })
              des.monster("quark")
           end
})

des.room({ type = "ordinary",
           contents = function()
              des.object()
              des.trap()
              des.monster("v")
              des.monster("disintegrator")
              des.monster({ id = "ouroboros", peaceful = 1 })
           end
})

des.random_corridors()
