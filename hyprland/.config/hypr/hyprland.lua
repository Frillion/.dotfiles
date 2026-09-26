TERMINAL = "kitty"
RUN_MENU = "rofi -show drun"
BROWSER = "firefox"
STATUS_BAR_GAP = 30

hl.dispatch(hl.dsp.exec_cmd("waybar"))

require("screen.windows")
require("screen.monitors")
require("keys.keybinds")
