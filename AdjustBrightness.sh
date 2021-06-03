brightness=$(xrandr --verbose | grep -Eo 'Brightness: ?([0-1]){1}.?([0-9]){1}*' | grep -Eo '?([0-1]){1}.?([0-9]){1}*')
brightness=$brightness | bc
bmax=$(echo $brightness' < 1.0' | bc)
bmin=$(echo $brightness' > 0.0' | bc)
inc=$(echo $brightness' + 0.05' | bc)
dec=$(echo $brightness' - 0.05' | bc)
if [ $1 = '++' ]
then
	if [ $bmax = 1 ]
	then
		xrandr --output eDP-1 --brightness $inc
	fi
elif [ $1 = '--' ]
then
        if [ $bmin = 1 ]
        then
                xrandr --output eDP-1 --brightness $dec
        fi

fi
