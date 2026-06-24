#grim -l 0 -g "$(slurp)" - | wl-copy 
geom=$(slurp)
sleep 0.1
grim -l 0 -g "$geom" - | wl-copy
notify-send "Screenshot saved!" "Copied to clipboard"


