#!/usr/bin/gnuplot

set terminal cairolatex pdf standalone color size 6,5 font 'Verdana,20' linewidth 3
set termoption dashed

load '~/mm/packages/gnuplot-mm/header.gp'

set format '$%g$'

set output '/home/shark/t/fig/creutz_ladder/scaling/scaling.tex'




#set yrange [-5:5];
set xrange [2:55];
#set xtics ('$0$' 0, '$\pi/4$' 0.7854, '$\pi/2$' 1.5708);

d=1.0
b=-0.6
c=0.8
e=0.001

f(x)=d*exp(b*x)
g(x)=c/x**3
h(x)=e
fit [x=20:] f(x) '/home/shark/t/fig/creutz_ladder/scaling/scaling_2.csv' using 1:2:($2) via b,d
fit [x=20:] g(x) '/home/shark/t/fig/creutz_ladder/scaling/scaling_1.csv' via c
fit [x=20:] h(x) '/home/shark/t/fig/creutz_ladder/scaling/scaling_3.csv' via e

set tmargin 1.4;

set key at graph 0.75, 0.25

set ytics 10**(-15), 1000, 1;
set format y '$10^{%T}$'

set style line 71 linecolor rgb '#008033' linewidth 2 ps 0.8 pt 7;
set style line 72 linecolor rgb '#0088aa' linewidth 2 ps 0.8 pt 13
set style line 73 linecolor rgb '#444444' linewidth 2 ps 0.8 pt 9

set label '$L$' at graph 1.03, .03;
set label '$\Delta E/w$' at graph .03, 1.04;

#set logscale x;
set logscale y;

plot g(x) w l ls 71 not, \
     f(x) w l ls 72 not, \
     h(x) w l ls 73 not, \
     '/home/shark/t/fig/creutz_ladder/scaling/scaling_1.csv' every 2 w p ls 71 t '$R_c=\infty$', \
     '/home/shark/t/fig/creutz_ladder/scaling/scaling_2.csv' every 2 w p ls 72 t '$R_c=5 a$', \
     '/home/shark/t/fig/creutz_ladder/scaling/scaling_3.csv' every 2 w p ls 73 t '$R_c=\infty, \text{disorder}$
  
     


