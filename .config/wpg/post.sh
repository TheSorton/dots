
#!/bin/sh

# Symlink termite config
ln -sf ~/.config/wpg/templates/alacritty.yml ~/.config/alacritty/alacritty.yml

# Symlink dunst config
ln -sf ~/.config/wpg/templates/dunstrc ~/.config/dunst/dunstrc

# Restart dunst with the new color scheme
pkill dunst
dunst &
notify-send "Reloaded"
