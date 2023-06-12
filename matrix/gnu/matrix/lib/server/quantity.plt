#!/usr/bin/gnuplot -persist
set terminal pngcairo  transparent enhanced font "arial,10" fontscale 1.0 size 600, 400 
set output '/home/denis/CEO2/plp147/gnu/matrix/img/ppm80.png'
set style data lines
set title "Monotonic cubic splines" 
set xrange [ 233.000 : 388.000 ] noreverse nowriteback
set x2range [ * : * ] noreverse writeback
set yrange [ 1.75000 : 32.0000 ] noreverse nowriteback
set y2range [ * : * ] noreverse writeback
set zrange [ * : * ] noreverse writeback
set cbrange [ * : * ] noreverse writeback
set rrange [ * : * ] noreverse writeback
NO_ANIMATION = 1
## Last datafile plotted: "silver.dat"
plot [][-2:2] sin(x), x, x-(x**3)/6