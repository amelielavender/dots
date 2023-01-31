#!/bin/env bash

time=$(date +%F_%H_%M_%S)

# take screenshot of selection, or window copy it to file and clipboard
Sel () {
  if  maim -q -s --bordersize=9999 --color=0,0,0,100 /tmp/selcap.png ; then
    xclip -selection clipboard -t image/png /tmp/selcap.png
    mv /tmp/selcap.png ~/Pictures/Screenshots/Screenshot_$time.png && dunstify -a maim "screenshot saved"
  else
    dunstify -a maim "screenshot cancelled"
  fi
}

# take screenshot of desktop, copy it to file and clipboard
# my main monitor is 4k so change the geometry as needed
Desktop () {
  if maim -q -g 3840x2160-0+0 /tmp/desktop.png ; then
    xclip -selection clipboard -t image/png /tmp/desktop.png
    mv /tmp/desktop.png ~/Pictures/Screenshots/Desktop_$time.png && dunstify -a maim "desktop captured"
  else
    dunstify -a maim "an error occurred"
  fi
}

# based on original script by github.com/SPDUK
recordSel () {
  if pidof ffmpeg ; then
    killall ffmpeg
    dunstify -a ffmpeg "stopped recording"
  else
    slop=$(slop --bordersize=9999 --color=0,0,0,100 -f "%x %y %w %h")
    read -r X Y W H < <(echo $slop)
    width=${#W}
    if [ $width -gt 0 ] ; then
      dunstify -a ffmpeg "started recording"
      ffmpeg -f x11grab -s "$W"x"$H" -framerate 60 -thread_queue_size 512 -i $DISPLAY.0+$X,$Y -vcodec libx264 -qp 18 -preset ultrafast ~/Videos/Screencasts/Recording_$time.mp4
    fi
  fi
}


while getopts ":sdr" opts; do
  case $opts in
    s)
      Sel
      ;;
    d)
      Desktop
      ;;
    r)
      recordSel
      ;;
    \?)
      echo '    -s capture window or selection'
      echo '    -d capture desktop'
      echo '    -r record window or selection'
      exit
      ;;
  esac
done
