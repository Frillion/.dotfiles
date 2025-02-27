#!/usr/bin/bash

if [[ $# -eq 1 ]]; then
    selected=$1
else
    selected=$(find ~/.dotfiles ~/.dotfiles/*/.config ~/Projects/exercises ~/Projects/personal ~/Projects/work -mindepth 1 -maxdepth 1 -type d | fzf)
fi

if [[ -z $selected ]]; then
    exit 0
fi

selected_name=$(basename $selected | tr . _)
tmux_id=$(pgrep tmux)

if [[ -z $TMUX ]] && [[ -z tmux_id ]]; then
    tmux new-session -s $selected_name -c $selected
    exit 0
fi  

if ! tmux has-session -t=$selected_name 2> /dev/null; then
    tmux new-session -ds $selected_name -c $selected
fi


tmux switch-client -t $selected_name
