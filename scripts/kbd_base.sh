xset r rate 300 40
xset s off
xset -dpms

# Changing the Mouse Speed
# For more info, check [this answer](https://unix.stackexchange.com/a/177640/364698).
xinput set-prop 13 "Coordinate Transformation Matrix" 0.70 0 0 0 0.7 0 0 0 1

imwheel

setxkbmap us
setxkbmap -option caps:escape
numlockx off
