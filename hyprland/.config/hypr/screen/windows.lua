hl.config({
    general = {
        gaps_out = {top = STATUS_BAR_GAP, right = 0, bottom = 0, left = 0}
    }
})

hl.window_rule({
    name = "test space",
    match = {workspace = "1"},
    tag = "+shader:/home/Frillion/.config/hypr/greyscale.frag"
})

hl.bind("SUPER + SHIFT + 1", function ()
    hl.dispatch(hl.dsp.window.move({workspace = "1"}))
end)
hl.bind("SUPER + SHIFT + 2", function ()
    hl.dispatch(hl.dsp.window.move({workspace = "2"}))
end)
hl.bind("SUPER + SHIFT + 3", function ()
    hl.dispatch(hl.dsp.window.move({workspace = "3"}))
end)
hl.bind("SUPER + SHIFT + 4", function ()
    hl.dispatch(hl.dsp.window.move({workspace = "4"}))
end)
hl.bind("SUPER + SHIFT + 5", function ()
    hl.dispatch(hl.dsp.window.move({workspace = "5"}))
end)
hl.bind("SUPER + SHIFT + 6", function ()
    hl.dispatch(hl.dsp.window.move({workspace = "6"}))
end)
