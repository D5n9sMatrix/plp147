#!/usr/bin/gnuplot persist
set terminal pngcairo  transparent enhanced font "arial,10" fontscale 1.0 size 600, 400 
set output '/home/denis/CEO2/plp147/gnu/matrix/img/ppm74.png'
set dummy u, v
set format x "%3.2f" 
set format y "%3.2f" 
set format z "%3.2f" 
unset key
set parametric
set view 68, 28, 1, 1
set samples 50, 50
set isosamples 30, 30
set contour base
set cntrlabel onecolor format '%8.3g' font '' start 5 interval 20
set hidden3d back offset 1 trianglepattern 3 undefined 1 altdiagonal bentover
set cntrparam levels 1
set cntrparam levels discrete 0.1
set style data lines
set style function dots
set xyplane relative 0
set ztics  norangelimit 0.00000,0.05
set title "50 random samples from a 2D Gaussian PDF with\nunit variance, zero mean and no dependence" 
set urange [ -3.00000 : 3.00000 ] noreverse nowriteback
set vrange [ -3.00000 : 3.00000 ] noreverse nowriteback
set xrange [ -3.00000 : 3.00000 ] noreverse nowriteback
set x2range [ * : * ] noreverse writeback
set yrange [ -3.00000 : 3.00000 ] noreverse nowriteback
set y2range [ * : * ] noreverse writeback
set zrange [ -0.200000 : 0.200000 ] noreverse nowriteback
set cbrange [ * : * ] noreverse writeback
set rrange [ * : * ] noreverse writeback
tstring(n) = sprintf("%d random samples from a 2D Gaussian PDF with\nunit variance, zero mean and no dependence", n)
NO_ANIMATION = 1
nsamp = 50
## Last datafile plotted: "$random"
splot u,v,( 1/(2*pi) * exp(-0.5 * (u**2 + v**2)) ) with line lc rgb "black"
