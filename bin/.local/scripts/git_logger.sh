#!/bin/bash

if [[ -z $1 ]]; then
    selection=$(find $HOME -type d  | grep .*\.git/ -o  | uniq | xargs dirname | fzf)
else
    selection=$1
fi

if [[ -z $selection ]]; then
    exit 0
fi

tmux neww -c $selection bash -c "git log --oneline --graph"
