#!/usr/bin/gnuplot -persist
set terminal pngcairo  transparent enhanced font "arial,10" fontscale 1.0 size 600, 400 
set output '/home/denis/CEO2/plp147/gnu/matrix/img/ppm79.png'
set key fixed right top vertical Right noreverse enhanced autotitle box lt black linewidth 1.000 dashtype solid
set view 70, 10, 1, 1
set hidden3d back offset 1 trianglepattern 3 undefined 1 altdiagonal bentover
set style data lines
set xyplane relative 0
set title "Notice that sampling rate can change" 
set xrange [ -3.00000 : 6.00000 ] noreverse nowriteback
set x2range [ * : * ] noreverse writeback
set yrange [ -3.00000 : 6.00000 ] noreverse nowriteback
set y2range [ * : * ] noreverse writeback
set zrange [ * : * ] noreverse writeback
set cbrange [ * : * ] noreverse writeback
set rrange [ * : * ] noreverse writeback
NO_ANIMATION = 1
## Last datafile plotted: "binary3"
plot [][-2:2] sin(x), x, x-(x**3)/6