#!/usr/bin/gnuplot -persist
set terminal pngcairo  transparent enhanced font "arial,10" fontscale 1.0 size 600, 400 
set output '/home/denis/CEO2/plp147/gnu/matrix/img/ppm52.png'
set border 4095 front lt black linewidth 1.000 dashtype solid
set style fill  transparent solid 0.50 border
unset key
set view 60, 60, 1.1, 0.6
set samples 40, 40
set isosamples 40, 40
set style data lines
set xyplane relative 0
set xtics border in scale 1,0.5 mirror norotate  offset character 0, -0.5, 0 autojustify
set xtics  norangelimit 2
set ytics border in scale 1,0.5 mirror norotate  offset character 0, -0.5, 0 autojustify
set ytics  norangelimit 2
set ztics  norangelimit 5
set title "set pm3d clip z (new default)" 
set xrange [ -1.00000 : 5.00000 ] noreverse nowriteback
set x2range [ * : * ] noreverse writeback
set yrange [ -3.00000 : 3.00000 ] noreverse nowriteback
set y2range [ * : * ] noreverse writeback
set zrange [ -10.0000 : 10.0000 ] noreverse nowriteback
set cbrange [ * : * ] noreverse writeback
set rrange [ * : * ] noreverse writeback
set bmargin  6
set pm3d depthorder 
set pm3d interpolate 1,1 flush begin noftriangles border linewidth 0.100 dashtype solid corners2color mean
set pm3d lighting primary 0.5 specular 0.2 spec2 0
unset colorbox
f(x,y) = x**2 + y**2 * (1 - x)**3
NO_ANIMATION = 1
splot f(x,y) with pm3d fc "cyan"
