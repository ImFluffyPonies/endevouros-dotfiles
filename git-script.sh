#!/bin/bash

git add git-script.sh
git add dunst/
git add i3/
git add kitty/
git add nvim/
git add picom/
git add polybar/
git add rofi/
git add tmux/tmux.conf
git add waybar/
git add wofi/
git add hypr/
git add zed/settings.json

echo "Enter commit message: "
read commit_message

git commit -m "$commit_message"

git push origin main

echo "Done!"
