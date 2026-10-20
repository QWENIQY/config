exec setxkbmap gb
xrandr --fb 9600x2160 \
	--output HDMI-0 --primary --mode 3840x2160 --rate 143.86 --pos 0x0 \
	--output DP-0 --mode 3840x2160 --rate 60 --pos 3840x0 \
	--output DP-3 --mode 1920x1080 --rate 60 --pos 7680x0

exec i3lock -i /home/lkc/wallpaper.jpeg
