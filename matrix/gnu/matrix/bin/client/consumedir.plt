#!/usr/bin/gnuplot -persist
set terminal pngcairo  transparent enhanced font "arial,10" fontscale 1.0 size 600, 400 
set output '/home/denis/CEO2/plp147/gnu/matrix/img/ppm53.png'
set dummy t, y
set key fixed right top vertical Right noreverse enhanced autotitle box lt black linewidth 1.000 dashtype solid
set samples 50, 50
set style data lines
set xrange [ 0.00000 : 13.0000 ] noreverse nowriteback
set x2range [ * : * ] noreverse writeback
set yrange [ * : * ] noreverse writeback
set y2range [ * : * ] noreverse writeback
set zrange [ * : * ] noreverse writeback
set cbrange [ * : * ] noreverse writeback
set rrange [ * : * ] noreverse writeback
damp(t) = exp(-s*wn*t)/sqrt(1.0-s*s)
per(t) = sin(wn*sqrt(1.0-s**2)*t - atan(-sqrt(1.0-s**2)/s))
c(t) = 1-damp(t)*per(t)
NO_ANIMATION = 1
s = 2.0
wn = 1.0
plot s=.1,c(t),s=.3,c(t),s=.5,c(t),s=.7,c(t),s=.9,c(t),s=1.0,c(t),s=1.5,c(t),s=2.0,c(t)
