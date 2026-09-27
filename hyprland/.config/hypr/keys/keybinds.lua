hl.bind("SUPER + M", hl.dsp.exec_cmd("uwsm stop"))
hl.bind("SUPER + Q", hl.dsp.exec_cmd(TERMINAL))
hl.bind("SUPER + SHIFT + B", hl.dsp.exec_cmd(BROWSER))
hl.bind("SUPER + C", function ()
    hl.dispatch(hl.dsp.window.close({window = hl.get_active_window()}))
end)
hl.bind("SUPER + R", hl.dsp.exec_cmd(RUN_MENU))
hl.bind("SUPER + W",function ()
    local gap = hl.get_config("general.gaps_out")
    if gap.top > 0 then
        hl.config({
            general = {
                gaps_out = 0
            }
        })
    else 
        hl.config({
            general = {
                gaps_out = {top = STATUS_BAR_GAP, right = 0, bottom = 0, left = 0}
            }
        })
    end
    hl.dispatch(hl.dsp.exec_cmd("pkill -x waybar || waybar &"))
end)

hl.bind("SUPER + S", function ()
    hl.dispatch(hl.dsp.exec_cmd("~/.local/scripts/select_workspace.sh"))
end)

hl.bind("SUPER + 1",function ()
     hl.dispatch(hl.dsp.focus({workspace = 1}))
end)
hl.bind("SUPER + 2",function ()
     hl.dispatch(hl.dsp.focus({workspace = 2}))
end)
hl.bind("SUPER + 3",function ()
     hl.dispatch(hl.dsp.focus({workspace = 3}))
end)
hl.bind("SUPER + 4",function ()
     hl.dispatch(hl.dsp.focus({workspace = 4}))
end)
hl.bind("SUPER + 5",function ()
     hl.dispatch(hl.dsp.focus({workspace = 5}))
end)
hl.bind("SUPER + 6",function ()
     hl.dispatch(hl.dsp.focus({workspace = 6}))
end)
hl.bind("SUPER + 7",function ()
     hl.dispatch(hl.dsp.focus({workspace = 7}))
end)

