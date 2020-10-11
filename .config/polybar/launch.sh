
#!/bin/bash

# Terminate already running bar instances
pkill polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x "polybar --config="${HOME}/.config/polybar/top/top" top" && "polybar --config="${HOME}/.config/polybar/bottom/bottom" bottom" >/dev/null; do sleep 1; done

# Launch Polybar, using default config location ~/.config/polybar/config
for bar in $HOME/.config/polybar/bars/*
  do
  bar=${bar##*/}
  bar=${bar%%.*}
  polybar $bar -c /home/$USER/.config/polybar/config &
done

echo "Polybar launched..."
