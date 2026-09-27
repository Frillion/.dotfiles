SIF_SEQUENCE = {"~/Wallpapers/1920x1080/sifoops_1_1920x1080.png","~/Wallpapers/1920x1080/sifoops_2_1920x1080.png","~/Wallpapers/1920x1080/Sifded.webp"}
hl.on("workspace.active",function ()
    local new_workspace = hl.get_active_workspace()
    if new_workspace.id <= #SIF_SEQUENCE then
        hl.dispatch(hl.dsp.exec_cmd('hyprctl hyprpaper wallpaper "' .. new_workspace.monitor.name.. ',' .. SIF_SEQUENCE[new_workspace.id] .. '"'))
    end
end)
