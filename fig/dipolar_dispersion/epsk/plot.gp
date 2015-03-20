#!/usr/bin/gnuplot

set terminal cairolatex pdf standalone color size 5,3 font 'Verdana,20' linewidth 4
set termoption dashed

load '~/mm/packages/gnuplot-mm/header.gp'

set format '$%g$'

set output '/home/shark/t/fig/dipolar_dispersion/epsk/epsk.tex'


set xrange [-4.44288:6.28319];
#set rmargin 4; set tmargin 1.5;
set yrange[-3.5:10];
#set label '{\small (a)}' at graph -0.13,1.05;
set label '$\epsilon^0_{\mathbf{k}}$' at graph 0.25,0.7;
set label '$\big|\epsilon^2_{\mathbf{k}}\big|$' at graph 0.82,0.55;
set ytics ('$\epsilon^0_K$' -2.65, '$0$' 0, '$\epsilon^0_\Gamma$' 9.03);
set grid
set xtics ('$\Gamma$' 0, '$\text{X}$' 3.14159, '$\text{M}$' -4.44288, '$\text{M}$' 6.28319) scale 0;


plot '/home/shark/t/fig/dipolar_dispersion/epsk/epsk_1.csv' w l @BLUE not, '/home/shark/t/fig/dipolar_dispersion/epsk/epsk_2.csv' w l @RED not

