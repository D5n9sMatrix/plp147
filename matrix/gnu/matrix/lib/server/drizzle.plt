#!/usr/bin/gnuplot -persist
set terminal pngcairo  transparent enhanced font "arial,10" fontscale 1.0 size 600, 400 
set output '/home/denis/CEO2/plp147/gnu/matrix/img/ppm73.png'
set dummy u, v
set format x "%3.2f" 
set format y "%3.2f" 
set format z "%3.2f" 
unset key
set parametric
set samples 50, 50
set style data lines
set style function dots
set title "Lattice test for random numbers" 
set xlabel "rand(n) ->" 
set xlabel  font "" textcolor lt -1 rotate parallel
set xrange [ 0.00000 : 1.00000 ] noreverse nowriteback
set x2range [ * : * ] noreverse writeback
set ylabel "rand(n + 1) ->" 
set ylabel  offset character 0, -1, 0 font "" textcolor lt -1 rotate parallel
set yrange [ 0.00000 : 1.00000 ] noreverse nowriteback
set y2range [ * : * ] noreverse writeback
set zlabel "rand(n + 2) ->" 
set zlabel  offset character 0, -1, 0 font "" textcolor lt -1 rotate parallel
set zrange [ 0.00000 : 1.00000 ] noreverse nowriteback
set cbrange [ * : * ] noreverse writeback
set rrange [ * : * ] noreverse writeback
NO_ANIMATION = 1
splot rand(0), rand(0), rand(0)
