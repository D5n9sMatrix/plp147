#!/usr/bin/gnuplot -persist
set terminal pngcairo  transparent enhanced font "arial,10" fontscale 1.0 size 600, 400 
set output '/home/denis/CEO2/plp147/gnu/matrix/img/ppm84.png'
unset border
set style fill   solid 0.50 border
set dummy t, y
set grid polar 0.523599
set grid noxtics nomxtics noytics nomytics noztics nomztics rtics nomrtics \
 nox2tics nomx2tics noy2tics nomy2tics nocbtics nomcbtics
set grid layerdefault   lt 0 linecolor 0 linewidth 0.500,  lt 0 linecolor 0 linewidth 0.500
set raxis
set key title "bounding radius 2.5" center
set key outside right top vertical Right noreverse enhanced autotitle nobox
set key noinvert samplen 0.7 spacing 1 width 0 height 0 
set polar
set size ratio 1 1,1
unset xtics
unset ytics
set xrange [ -3.90000 : 3.90000 ] noreverse nowriteback
set x2range [ * : * ] noreverse writeback
set yrange [ -3.90000 : 3.90000 ] noreverse nowriteback
set y2range [ * : * ] noreverse writeback
set zrange [ * : * ] noreverse writeback
set cbrange [ * : * ] noreverse writeback
set rrange [ 0.100000 : 4.00000 ] noreverse nowriteback
butterfly(x)=exp(cos(x))-2*cos(4*x)+sin(x/12)**5
NO_ANIMATION = 1
plot 3.+sin(t)*cos(5*t) with filledcurve above r=2.5 notitle,     3.+sin(t)*cos(5*t) with line
