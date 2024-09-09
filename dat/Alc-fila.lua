des.room({ type = "ordinary",
           contents = function()
              des.stair("up")
              des.object()
              des.monster({ class = "water elemental", peaceful=0 })
              des.monster("energy vortex")
           end
})

des.room({ type = "ordinary",
           contents = function()
              des.object()
              des.object()
              des.monster({ class = "water elemental", peaceful=0 })
              des.monster("shocking sphere")
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
              des.monster({ class = "water elemental", peaceful=0 })
              des.monster("energy vortex")
              des.monster("e")
           end
})

des.room({ type = "ordinary",
           contents = function()
              des.object("scroll of alchemy")
              des.object()
              des.object()
              des.trap()
              des.monster({ class = "air elemental", peaceful=0 })
              des.monster("shocking sphere")
           end
})

des.room({ type = "ordinary",
           contents = function()
              des.object()
              des.trap()
              des.monster("v")
           end
})

des.random_corridors()
