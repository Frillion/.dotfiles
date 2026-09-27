selection=$(hyprctl workspaces -j | jq -r '.[].["id"]' | rofi -dmenu -p "Search:")

if [[ -z $selection ]]; then
    exit 0
fi

echo $selection
hyprctl dispatch "hl.dsp.focus({workspace = $selection})"
