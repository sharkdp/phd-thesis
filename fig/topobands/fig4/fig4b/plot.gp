#!/usr/bin/gnuplot

set terminal cairolatex pdf standalone color size 4.5,2.7 font 'Verdana,20' linewidth 3
set termoption dashed

load '~/mm/packages/gnuplot-mm/header.gp'

set format '$%g$'

set output '/home/shark/pp/fig4/fig4b/fig4b.tex'


set logscale y2;

set xrange [0:30];
set format y2 '$10^{%T}$';
unset ytics
set y2tics ('$1$' 1, '$10^{-3}$' 1e-3, '$10^{-6}$' 1e-6, '$10^{-9}$' 1e-9, '$10^{-12}$' 1e-12);
#set yrange [1e-11:1];
set y2range [1e-11:1];
set xtics 0, 5, 30 nomirror;

set tmargin 2;
set rmargin 5.9;
set lmargin 3;
set label '$|\psi_+(y)|^2+|\psi_-(y)|^2$' at screen .23, 0.72;
set label '$y/a$' at screen .89, 0.105 front;

set label '(b)' at screen 0.001, .77 front;

set linestyle 2 lc rgb '#e70e56' lw 3 pt 5 ps .8;
set linestyle 3 lc rgb '#0066ff' lw 3 pt 7 ps .8;


plot '/home/shark/pp/fig4/fig4b/fig4b_1.csv' every ::0::15 axes x1y2 w lp ls 3 not, '/home/shark/pp/fig4/fig4b/fig4b_2.csv' using ($0+15):1 every ::15::31 axes x1y2 w lp ls 2 not

