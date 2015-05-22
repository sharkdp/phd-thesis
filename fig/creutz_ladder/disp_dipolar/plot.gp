#!/usr/bin/gnuplot

set terminal cairolatex pdf standalone color size 4.5,5 font 'Verdana,20' linewidth 3
set termoption dashed

load '~/mm/packages/gnuplot-mm/header.gp'

set format '$%g$'

set output '/home/shark/Dropbox/PhD/thesis/fig/creutz_ladder/disp_dipolar/disp_dipolar.tex'




set xrange [-pi:pi+1];
set yrange [-5:5.5];

set xtics ('$-\pi/a$' -pi, '$0$' 0, '$\pi/a$' pi);
set ytics -6,2,6;

set style line 71 linecolor rgb '#008033' linewidth 2;
set style line 72 linecolor rgb '#0088aa' linewidth 2;
set style line 73 linecolor rgb '#008033' dashtype (20,8) linewidth 2;
set style line 74 linecolor rgb '#0088aa' dashtype (20,8) linewidth 2;

set tmargin 1.3;
set rmargin 1.5;

set label '$k$' at graph 1.02, 0.04;
set label '$E_\pm(k)/w$' at graph 0.01, 1.04;

plot '/home/shark/Dropbox/PhD/thesis/fig/creutz_ladder/disp_dipolar/disp_dipolar_1.csv' w l ls 71 not, \
     '/home/shark/Dropbox/PhD/thesis/fig/creutz_ladder/disp_dipolar/disp_dipolar_2.csv' w l ls 71 not, \
     '/home/shark/Dropbox/PhD/thesis/fig/creutz_ladder/disp_dipolar/disp_dipolar_3.csv' w l ls 72 not, \
     '/home/shark/Dropbox/PhD/thesis/fig/creutz_ladder/disp_dipolar/disp_dipolar_4.csv' w l ls 72 not, \
     "/home/shark/PhD/projects/polar_molecules/dipolar-systems/ladder/energies.csv" u (pi+.5+$2):1 w p lw 1 lc rgb '#000000' pt 2 not


