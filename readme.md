# welcome plp147
Description: Changes the provision of Complementary Law No. 123, of 2006, which "Establishes the National Statute of Microenterprises and Small Businesses" (expands the representation of Microenterprises in the Managing Committee of Simples National).
```gnuplot
#!/usr/bin/gnuplot -persist
set terminal pngcairo  transparent enhanced font "arial,10" fontscale 1.0 size 600, 400 
set output '/home/denis/CEO2/plp147/gnu/matrix/img/ppm56.png'
set contour base
set cntrparam levels 6
set cntrparam levels incremental -20,5
set style data lines
set title "9 incremental contours starting at -20, stepping by 5" 
set xrange [ * : * ] noreverse writeback
set x2range [ * : * ] noreverse writeback
set yrange [ * : * ] noreverse writeback
set y2range [ * : * ] noreverse writeback
set zrange [ * : * ] noreverse writeback
set cbrange [ * : * ] noreverse writeback
set rrange [ * : * ] noreverse writeback
NO_ANIMATION = 1
splot x*y
```