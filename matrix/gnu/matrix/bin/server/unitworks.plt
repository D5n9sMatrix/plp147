#!/usr/bin/gnuplot -persist
set terminal pngcairo  transparent enhanced font "arial,10" fontscale 1.0 size 600, 400 
set output '/home/denis/CEO2/plp147/gnu/matrix/img/ppm87.png'
unset border
set dummy t, y
set angles degrees
set grid polar 15.000000
set grid noxtics nomxtics noytics nomytics noztics nomztics rtics nomrtics \
 nox2tics nomx2tics noy2tics nomy2tics nocbtics nomcbtics
set grid layerdefault   lt 0 linecolor -1 linewidth 0.500,  lt 0 linecolor -1 linewidth 0.500
set polar
set size ratio 0.5 1,1
unset xtics
unset ytics
set title "yerrors in polar mode" 
set xrange [ * : * ] noreverse writeback
set x2range [ * : * ] noreverse writeback
set yrange [ 0.00000 : 1.50000 ] noreverse nowriteback
set y2range [ * : * ] noreverse writeback
set zrange [ * : * ] noreverse writeback
set cbrange [ * : * ] noreverse writeback
set rrange [ * : * ] noreverse writeback
$DATA << EOD
0   1.3 0.2
30  0.9 0.1
60  0.7 0.1
90  1.0 0.3
120 1.1 0.1
150 0.5 0.1
180 1.2 0.2
EOD
tv(t,r) = sin(t)/(1+r)
tu(t,r) = (cos(t) +r)/(1+r)
cu(t,x) = 1 + cos(t)/x
cv(t,x) = (1+ sin(t))/x
NO_ANIMATION = 1
## Last datafile plotted: "$DATA"
plot $DATA with yerrorbars lw 1.5 title "polar error bars"
