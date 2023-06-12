#!/usr/bin/gnuplot -persist
set terminal pngcairo  transparent enhanced font "arial,10" fontscale 1.0 size 600, 400 
set output '/home/denis/CEO2/plp147/gnu/matrix/img/ppm86.png'
set clip points
set dummy t, y
unset key
set parametric
set size ratio 1 1,1
set style data lines
set xtics axis in scale 1,0.5 nomirror norotate  autojustify
set ytics axis in scale 1,0.5 nomirror norotate  autojustify
set title "Primitive Smith Chart" 
set timestamp "%a %d %b %Y" 
set trange [ -3.14159 : 3.14159 ] noreverse nowriteback
set xlabel "Impedance or Admittance Coordinates" 
set xrange [ -1.00000 : 1.00000 ] noreverse nowriteback
set x2range [ * : * ] noreverse writeback
set yrange [ -1.00000 : 1.00000 ] noreverse nowriteback
set y2range [ * : * ] noreverse writeback
set zrange [ * : * ] noreverse writeback
set cbrange [ * : * ] noreverse writeback
set rrange [ 0.00000 : 10.0000 ] noreverse nowriteback
tv(t,r) = sin(t)/(1+r)
tu(t,r) = (cos(t) +r)/(1+r)
cu(t,x) = 1 + cos(t)/x
cv(t,x) = (1+ sin(t))/x
NO_ANIMATION = 1
plot cu(t,.1),cv(t,.1),cu(t,.1),-cv(t,.1),cu(t,1),cv(t,1),cu(t,1),-cv(t,1),cu(t,10),cv(t,10),cu(t,10),-cv(t,10),tu(t,.1),tv(t,.1),tu(t,.5),tv(t,.5),tu(t,1),tv(t,1),tu(t,5),tv(t,5),tu(t,10),tv(t,10),cu(t,.5),cv(t,.5),cu(t,.5),-cv(t,.5),tu(t,0),tv(t,0)
