#!/usr/bin/gnuplot -persist
set terminal pngcairo  background "#ffffff" enhanced font "arial,9" fontscale 1.0 size 610, 320 
set output '/home/denis/CEO2/plp147/gnu/matrix/img/ppm58.png'
set format y "%5.1fe" 
set format x2 "%.1f Ã…" 
set key outside right top vertical Left noreverse enhanced autotitle nobox
set offsets 0, 0, 1, 0
set style data lines
set xtics border in scale 1,0.5 nomirror norotate  autojustify
set x2tics border in scale 1,0.5 nomirror norotate  autojustify
set x2tics  norangelimit 0.1
set title " Anomalous scattering factors " 
set xlabel "X-ray energy in eV" 
set x2label "X-ray wavelength in Ã…" 
set xrange [ 9000.00 : 14400.0 ] noreverse nowriteback
set x2range [ 1.37756 : 0.860972 ] noreverse nowriteback
set yrange [ * : * ] noreverse writeback
set y2range [ * : * ] noreverse writeback
set zrange [ * : * ] noreverse writeback
set cbrange [ * : * ] noreverse writeback
set rrange [ * : * ] noreverse writeback
set link x2 via 12398./x inverse 12398./x 
set bmargin  5
set tmargin  6
NO_ANIMATION = 1
Brdata = "< GET http://skuld.bmsc.washington.edu/scatter/data/Br.dat"
Tadata = "< GET http://skuld.bmsc.washington.edu/scatter/data/Ta.dat"
## Last datafile plotted: "< GET http://skuld.bmsc.washington.edu/scatter/data/Ta.dat"
plot Brdata volatile using 1:3 title 'Br f"'  lt 1 lw 3, '' volatile using 1:2 title "Br f'"  lt 1 lw 1, Tadata volatile using 1:3 title 'Ta f"' lt 2 lw 3, '' volatile using 1:2 title "Ta f'"  lt 2 lw 1
