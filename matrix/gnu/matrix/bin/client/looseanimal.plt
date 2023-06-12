#!/usr/bin/gnuplot -persist
set terminal pngcairo  transparent enhanced font "arial,10" fontscale 1.0 size 600, 400 
set output '/home/denis/CEO2/plp147/gnu/matrix/img/ppm49.png'
set key title "hidden3d firstline sorted" center
set key outside right top vertical Right noreverse enhanced autotitle nobox
set view 67, 180, 1.42, 1.05
set contour base
set hidden3d back offset -1 trianglepattern 3 undefined 1 altdiagonal bentover
set cntrparam firstlinetype 101 sorted
set style data lines
unset xtics
unset ytics
unset ztics
set xrange [ 1.00000 : 7.60000 ] noreverse nowriteback
set x2range [ * : * ] noreverse writeback
set yrange [ 1.00000 : 7.60000 ] noreverse nowriteback
set y2range [ * : * ] noreverse writeback
set zrange [ * : * ] noreverse writeback
set cbrange [ * : * ] noreverse writeback
set rrange [ * : * ] noreverse writeback
NO_ANIMATION = 1
splot x*y lw 2
