#!/usr/bin/gnuplot -persist
set terminal pngcairo  transparent enhanced font "arial,10" fontscale 1.0 size 600, 400 
set output '/home/denis/CEO2/plp147/gnu/matrix/img/ppm48.png'
unset border
set style data parallelaxes
set xtics  norangelimit  font "/:Bold,13"
set xtics   ()
unset ytics
unset paxis 1 tics
unset paxis 2 tics
unset paxis 3 tics
unset paxis 4 tics
unset paxis 5 tics
unset paxis 6 tics
unset paxis 7 tics
set title "Parallel Axis Plot" 
set title  font ",15" textcolor lt -1 norotate
set xrange [ 0.500000 : 7.50000 ] noreverse nowriteback
set x2range [ * : * ] noreverse writeback
set yrange [ * : * ] noreverse writeback
set y2range [ * : * ] noreverse writeback
set zrange [ * : * ] noreverse writeback
set cbrange [ * : * ] noreverse writeback
set rrange [ * : * ] noreverse writeback
set paxis 1 range [ * : * ]  noextend
set paxis 2 range [ * : * ]  noextend
set paxis 3 range [ * : * ]  noextend
set paxis 4 range [ * : * ]  noextend
set paxis 5 range [ * : * ]  noextend
set paxis 6 range [ * : * ]  noextend
set paxis 7 range [ * : * ]  noextend
set bmargin  4
set palette defined ( 0 0 0 0.5451, 1 0.7529 0.251 0 )
unset colorbox
NO_ANIMATION = 1
save_encoding = "utf8"
a = 12.0
b = 34.0
## Last datafile plotted: "+"
plot sample [x=1:20] '+' using (rand(0)):0 lc palette title "random",     '' u ($1) title "x",     '' u (-$1) title "-x",     '' u (a*$1) title "a*x",     '' u (a*$1+b) title "a*x+b",     '' u (exp($1)) title "e^x",     '' u (1/$1) title "1/x"
