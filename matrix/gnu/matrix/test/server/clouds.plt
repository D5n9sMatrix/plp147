#!/usr/bin/gnuplot -persist
set terminal pngcairo  transparent enhanced font "arial,10" fontscale 1.0 size 600, 400 
set output '/home/denis/CEO2/plp147/gnu/matrix/img/ppm85.png'
set clip points
unset border
set dummy t, y
set angles degrees
set grid polar 15.000000
set grid noxtics nomxtics noytics nomytics noztics nomztics rtics nomrtics \
 nox2tics nomx2tics noy2tics nomy2tics nocbtics nomcbtics
set grid layerdefault   lt 0 linecolor -1 linewidth 0.500,  lt 0 linecolor -1 linewidth 0.500
set raxis
unset key
set polar
set size ratio 1 1,1
set style data lines
unset xtics
set ytics axis in scale 1,0.5 nomirror norotate  autojustify
set title "Antenna Pattern" 
set timestamp "%a %d %b %Y" 
set xlabel "Azimuth" 
set xrange [ -220.000 : 220.000 ] noreverse nowriteback
set x2range [ * : * ] noreverse writeback
set ylabel "dBSM" 
set yrange [ -220.000 : 220.000 ] noreverse nowriteback
set y2range [ * : * ] noreverse writeback
set zrange [ * : * ] noreverse writeback
set cbrange [ * : * ] noreverse writeback
set rrange [ -200.000 : 60.0000 ] noreverse nowriteback
tv(t,r) = sin(t)/(1+r)
tu(t,r) = (cos(t) +r)/(1+r)
cu(t,x) = 1 + cos(t)/x
cv(t,x) = (1+ sin(t))/x
NO_ANIMATION = 1
## Last datafile plotted: "-"
plot "/home/denis/CEO2/plp147/gnu/matrix/bin/data/replace1.txt" using 1:5,"/home/denis/CEO2/plp147/gnu/matrix/bin/data/replace2.txt"
