#!/usr/gnuplot -persist
set terminal pngcairo  transparent enhanced font "arial,8" fontscale 1.0 size 610, 480 
set output '/home/denis/CEO2/plp147/gnu/matrix/img/ppm76.png'
set dummy wnt, y
set grid nopolar
set grid xtics nomxtics ytics nomytics noztics nomztics nortics nomrtics \
 nox2tics nomx2tics noy2tics nomy2tics nocbtics nomcbtics
set grid layerdefault   lt 0 linecolor 0 linewidth 0.500,  lt 0 linecolor 0 linewidth 0.500
unset key
set label 1 "" at 0.140000, 17.0000, 0.00000 left norotate back nopoint
set samples 250, 250
set size ratio 0 0.5,0.5
set origin 0.5,0
set mxtics 10.000000
set mytics 5.000000
set xtics  norangelimit 0.00000,5,20.0000
set ytics  norangelimit -1.00000,0.5,1.00000
set title "Second Order System - Unit Impulse Response" 
set xlabel "Normalized Time (wnt)" 
set xrange [ 0.00000 : 20.0000 ] noreverse nowriteback
set x2range [ * : * ] noreverse writeback
set ylabel "Amplitude y(wnt)" 
set ylabel  offset character 1, 0, 0 font "" textcolor lt -1 rotate
set yrange [ -1.00000 : 1.00000 ] noreverse nowriteback
set y2range [ * : * ] noreverse writeback
set zrange [ * : * ] noreverse writeback
set cbrange [ * : * ] noreverse writeback
set rrange [ * : * ] noreverse writeback
mag(w) = -10*log10( (1-w**2)**2 + 4*(zeta*w)**2)
tmp(w) = (-180/pi)*atan( 2*zeta*w/(1-w**2) )
tmp1(w)= w<1?tmp(w):(tmp(w)-180)
phi(w)=zeta==1?(-2*(180/pi)*atan(w)):tmp1(w)
wdwn(zeta)=sqrt(1-zeta**2)
shift(zeta) = atan(wdwn(zeta)/zeta)
alpha(zeta)=zeta>1?sqrt(zeta**2-1.0):0
tau1(zeta)=1/(zeta-alpha(zeta))
tau2(zeta)=1/(zeta+alpha(zeta))
c1(zeta)=(zeta + alpha(zeta))/(2*alpha(zeta))
c2(zeta)=c1(zeta)-1
y1(wnt)=zeta==1?1 - exp(-wnt)*(wnt + 1):0
y2(wnt)=zeta<1?(1 - (exp(-zeta*wnt)/wdwn(zeta))*sin(wdwn(zeta)*wnt + shift(zeta))):y1(wnt)
y(wnt)=exp(-zeta*wnt) * sin(wdwn(zeta)*wnt) / wdwn(zeta)
NO_ANIMATION = 1
zeta = 2
plot   zeta=.1,y(wnt),   zeta=.2,y(wnt),   zeta=.3,y(wnt),   zeta=.4,y(wnt),   zeta=.5,y(wnt),   zeta=.707,y(wnt),   zeta=1,y(wnt),   zeta=2,y(wnt)
