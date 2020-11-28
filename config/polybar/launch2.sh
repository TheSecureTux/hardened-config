#if secondary monitor is connected, if so, add a specific bar and move tray to it
    # Else, keep tray on main monitor
    # see https://github.com/polybar/polybar/issues/763

    killall -q polybar

    # Wait until the processes have been shut down
    while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR1=$m polybar --reload  mainbar-i3 &
    MONITOR2=$m polybar --reload mainbar-i3-extra & 
  done
#else
#  polybar --reload mainbar-i3-extra &
fi
