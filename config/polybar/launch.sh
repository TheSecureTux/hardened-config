#!/usr/bin/bash

# More info : https://github.com/jaagr/polybar/wiki

# Install the following applications for polybar and icons in polybar if you are on ArcoLinuxD
# awesome-terminal-fonts
# Tip : There are other interesting fonts that provide icons like nerd-fonts-complete

# Terminate already running bar instances
killall  polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

desktop=$(echo $DESKTOP_SESSION)
count=$(xrandr --query | grep " connected" | cut -d" " -f1 | wc -l)

#export MONITOR=$(xrandr --query | grep " connected" | cut -d" " -f1|grep H)
#export MONITOR2=$(xrandr --query | grep " connected" | cut -d" " -f1|grep V) 
for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
	if [ $m == 'HDMI-A-0' ] 
	then		
		MONITOR=$m polybar --reload mainbar-i3 -c ~/.config/polybar/config &	
	elif [ $m == 'DVI-D-0' ]
		MONITOR=$m polybar --reload mainbar-i3-extra -c ~/.config/polybar/config &
	fi
done
else 
	    polybar --reload mainbar-i3 -c ~/.config/polybar/config &
fi
;;


   
