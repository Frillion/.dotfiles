TERMINAL = "kitty"
RUN_MENU = "rofi -show drun"
BROWSER = "firefox"
STATUS_BAR_GAP = 30

hl.on("hyprland.start",function ()
    hl.exec_cmd("waybar & hyprpaper & hyprpm reload -n")
end)

hl.on("config.reloaded",function ()
    hl.exec_cmd("killall -9 waybar && waybar & killall -9 && hyprpaper & hyprpaper")
end)

hl.config({
    misc = {
        disable_hyprland_logo = true,
        disable_splash_rendering = true,
        force_default_wallpaper = 0,
        render_unfocused_fps = 144
    },
    debug = {
        damage_tracking = 0,
    }
})

require("screen.windows")
require("screen.monitors")
require("events.workspace")
require("keys.keybinds")
