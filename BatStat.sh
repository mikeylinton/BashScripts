upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep -o "percentage:          *[0-9][0-9][0-9]%" | grep -o [0-9][0-9][0-9]%
upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep -o "percentage:          *[0-9][0-9]%" | grep -o [0-9][0-9]%
upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep -o "percentage:          *[0-9]%" | grep -o [0-9]%
