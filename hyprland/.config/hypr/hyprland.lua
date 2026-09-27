TERMINAL = "kitty"
RUN_MENU = "rofi -show drun"
BROWSER = "firefox"
STATUS_BAR_GAP = 30

hl.on("hyprland.start",function ()
    hl.exec_cmd("waybar & hyprpaper")
end)

hl.on("config.reloaded",function ()
    hl.exec_cmd("waybar & hyprpaper")
end)

hl.config({
    decoration = {
        screen_shader = "./greyscale.frag"
    },
    misc = {
        disable_hyprland_logo = true,
        disable_splash_rendering = true,
        force_default_wallpaper = 0 
    }
})

require("screen.windows")
require("screen.monitors")
require("events.workspace")
require("keys.keybinds")
