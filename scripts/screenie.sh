#!/bin/env bash

# take screenshot of selection, or window copy it to file and clipboard
Sel () {
  if  maim -q -s --bordersize=9999 --color=0,0,0,100 /tmp/selcap.png ; then
    xclip -selection clipboard -t image/png /tmp/selcap.png
    mv /tmp/selcap.png ~/Pictures/Screenshots/Screenshot_"$(date +%F_%H_%M_%S)".png && dunstify -a maim "screenshot saved"
  else
    dunstify -a maim "screenshot cancelled"
fi
}

# take screenshot of desktop, copy it to file and clipboard
# my main monitor is 4k so change the geometry as needed
Desktop () {
  if maim -q -g 3840x2160-0+0 /tmp/desktop.png ; then
    xclip -selection clipboard -t image/png /tmp/desktop.png
    mv /tmp/desktop.png ~/Pictures/Screenshots/Desktop_"$(date +%F_%H_%M_%S)".png && dunstify -a maim "desktop captured"
  else
    dunstify -a maim "an error occurred"
fi
}

while getopts ":sd" opts; do
  case $opts in
    s)
      Sel
      ;;
    d)
      Desktop
      ;;
    \?)
      echo '    -s capture selection or selected window'
      echo '    -d capture desktop'
      exit
      ;;
  esac
done
