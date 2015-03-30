#!/usr/bin/gnuplot

set terminal cairolatex pdf standalone color size 5,3 font 'Verdana,20' linewidth 4
set termoption dashed

load '~/mm/packages/gnuplot-mm/header.gp'

set format '$%g$'

set output '/home/shark/PhD/thesis/fig/topological_bands/fig2/fig2b/fig2b.tex'


set style line 1 lc rgb '#0066ff' lt 2 lw 1;
set style line 2 lc rgb '#e70e56' lt 2 lw 1;
set style line 3 lc rgb '#0066ff' lt 1 lw 2;
set style line 4 lc rgb '#e70e56' lt 1 lw 2;
set xrange [-4.44288:6.28319];
set rmargin 4;
set yrange[-5:9.5];
#set label '$k a$' at graph 1.02,0.03;
#set label '{\small (b)}' at graph -0.13,1.05;
set label '$E_{\mathbf{k}}/V$' at graph 0.05,0.9;
set grid xtics;
set xtics ('$\Gamma$' 0, '$\text{X}$' 3.14159, '$\text{M}$' -4.44288, '$\text{M}$' 6.28319) scale 0;


plot '/home/shark/PhD/thesis/fig/topological_bands/fig2/fig2b/fig2b_1.csv' w l ls 1 not, '/home/shark/PhD/thesis/fig/topological_bands/fig2/fig2b/fig2b_2.csv' w l ls 2 not, '/home/shark/PhD/thesis/fig/topological_bands/fig2/fig2b/fig2b_3.csv' w l ls 3 not, '/home/shark/PhD/thesis/fig/topological_bands/fig2/fig2b/fig2b_4.csv' w l ls 4 not

