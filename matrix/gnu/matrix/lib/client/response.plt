#!/usr/bin/gnuplot -persist
set terminal pngcairo  transparent enhanced font "arial,10" fontscale 1.0 size 600, 400 
set output '/home/denis/CEO2/plp147/gnu/matrix/img/ppm51.png'
set border 2 front lt black linewidth 1.000 dashtype solid
set xtics border in scale 0,0 nomirror norotate  autojustify
set xtics  norangelimit 
set xtics   ("A" -1.00000, "B" 0.00000, "C" 1.00000)
set ytics border in scale 1,0.5 nomirror norotate  autojustify
set ytics  rangelimit autofreq 
set title "jitter spread 1.0" 
set xrange [ -1.50000 : 1.40000 ] noreverse nowriteback
set x2range [ * : * ] noreverse writeback
set yrange [ * : * ] noreverse writeback
set y2range [ * : * ] noreverse writeback
set zrange [ * : * ] noreverse writeback
set cbrange [ * : * ] noreverse writeback
set rrange [ * : * ] noreverse writeback
set jitter overlap 1  spread 1  wrap 0
NO_ANIMATION = 1
nsamp = 160
## Last datafile plotted: "$random"
plot sin(x), x, x-(x**3)/6 notitle lc var
