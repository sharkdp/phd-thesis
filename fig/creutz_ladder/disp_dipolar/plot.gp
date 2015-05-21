#!/usr/bin/gnuplot

set terminal cairolatex pdf standalone color size 4.5,3 font 'Verdana,20' linewidth 3
set termoption dashed

load '~/mm/packages/gnuplot-mm/header.gp'

set format '$%g$'

set output '/home/shark/Dropbox/PhD/thesis/fig/creutz_ladder/disp_dipolar/disp_dipolar.tex'




set xrange [-pi:pi];
#set yrange [-2.5:2.5];

set xtics ('$-\pi/a$' -pi, '$0$' 0, '$\pi/a$' pi);

set style line 71 linecolor rgb '#008033' linewidth 2;
set style line 72 linecolor rgb '#0088aa' linewidth 2;
set style line 73 linecolor rgb '#008033' dashtype (20,8) linewidth 2;
set style line 74 linecolor rgb '#0088aa' dashtype (20,8) linewidth 2;

set tmargin 1.3;
set rmargin 1.5;

set label '$k$' at graph 1.02, 0.04;
set label '$E_\pm(k)/w$' at graph 0.01, 1.08;

plot '/home/shark/Dropbox/PhD/thesis/fig/creutz_ladder/disp_dipolar/disp_dipolar_1.csv' w l ls 71 not, \
     '/home/shark/Dropbox/PhD/thesis/fig/creutz_ladder/disp_dipolar/disp_dipolar_2.csv' w l ls 72 not, \
     '/home/shark/Dropbox/PhD/thesis/fig/creutz_ladder/disp_dipolar/disp_dipolar_3.csv' w l ls 73 not, \
     '/home/shark/Dropbox/PhD/thesis/fig/creutz_ladder/disp_dipolar/disp_dipolar_4.csv' w l ls 74 not, \


