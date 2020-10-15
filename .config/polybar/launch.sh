
#!/bin/bash

# Terminate already running bar instances
pkill polybar

# Launch Polybar, using default config location ~/.config/polybar/config
for bar in $HOME/.config/polybar/bars/*
  do
  bar=${bar##*/}
  bar=${bar%%.*}
  polybar $bar -c /home/$USER/.config/polybar/config & >/dev/null
done

echo "Polybar launched..."
