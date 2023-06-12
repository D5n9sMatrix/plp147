#!/usr/bin/gnuplot -persist
set terminal pngcairo  transparent enhanced font "arial,10" fontscale 1.0 size 600, 400 
set output '/home/denis/CEO2/plp147/gnu/matrix/img/ppm60.png'
unset border
set dummy t, y
set ttics format "%gÂ°"
set grid polar 1.047198
set grid noxtics nomxtics noytics nomytics noztics nomztics rtics nomrtics \
 nox2tics nomx2tics noy2tics nomy2tics nocbtics nomcbtics
set grid layerdefault   lt 0 linecolor 0 linewidth 0.500,  lt 0 linecolor 0 linewidth 0.500
set raxis
unset key
set polar
set size ratio 1 1,1
set style data lines
set mttics 3.000000
unset xtics
unset ytics
set ttics axis in scale 1,0.5 nomirror norotate  autojustify
set ttics  norangelimit 0.00000,30 font ":Italic"
set ttics add  ("Ï€/2" 90.0000, "Ï€" 180.000, "3Ï€/2" 270.000)
set title "Angle labels (ttics) for polar plots" 
set title  offset character 0, 1, 0 font "" textcolor lt -1 norotate
set xrange [ -6.10000 : 6.10000 ] noreverse nowriteback
set x2range [ * : * ] noreverse writeback
set yrange [ -6.10000 : 6.10000 ] noreverse nowriteback
set y2range [ * : * ] noreverse writeback
set zrange [ * : * ] noreverse writeback
set cbrange [ * : * ] noreverse writeback
set rrange [ 0.00000 : 6.10000 ] noreverse nowriteback
NO_ANIMATION = 1
plot t lt 3 lw 2, -t lt 4 lw 2
