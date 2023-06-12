#!/usr/bin/gnuplot -persist
set terminal pngcairo  transparent enhanced font "arial,10" fontscale 1.0 size 600, 400 
set output '/home/denis/CEO2/plp147/gnu/matrix/img/ppm88.png'
unset border
set dummy t, y
set angles degrees
set grid polar 15.000000
set grid noxtics nomxtics noytics nomytics noztics nomztics rtics nomrtics \
 nox2tics nomx2tics noy2tics nomy2tics nocbtics nomcbtics
set grid layerdefault   lt 0 linecolor -1 linewidth 0.500,  lt 0 linecolor -1 linewidth 0.500
set raxis
set key fixed right top vertical Right noreverse enhanced autotitle box lt black linewidth 1.000 dashtype solid
set key noinvert samplen 0.75 spacing 1 width 0 height 0 
set key opaque
set polar
set view  equal xy
set size ratio 1 1,1
set style data impulses
unset xtics
unset ytics
set rtics axis in scale 0.5,0 nomirror rotate by -270  offset character 0, 0.7, 0 autojustify
set rtics  norangelimit logscale 
set rtics   (2.00000, 5.00000, 10.0000, 15.0000)
set title "log scale polar axis, trange in degrees" 
set trange [ 90.0000 : 360.000 ] noreverse nowriteback
set xrange [ -1.57978 : 1.57978 ] noreverse nowriteback
set x2range [ * : * ] noreverse writeback
set yrange [ -1.57978 : 1.57978 ] noreverse nowriteback
set y2range [ * : * ] noreverse writeback
set zrange [ * : * ] noreverse writeback
set cbrange [ * : * ] noreverse writeback
set rrange [ 0.500000 : 19.0000 ] noreverse nowriteback
set logscale r 10
$DATA << EOD
0   1.3 0.2
30  0.9 0.1
60  0.7 0.1
90  1.0 0.3
120 1.1 0.1
150 0.5 0.1
180 1.2 0.2
EOD
lstv(t,r) = sin(t)/(1+r)
tu(t,r) = (cos(t) +r)/(1+r)
cu(t,x) = 1 + cos(t)/x
cv(t,x) = (1+ sin(t))/x
NO_ANIMATION = 1
## Last datafile plotted: "silver.dat"
plot $DATA with yerrorbars lw 1.5 title "polar error bars"