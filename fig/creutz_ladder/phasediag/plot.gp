#!/usr/bin/gnuplot

set terminal cairolatex pdf standalone color size 8,4 font 'Verdana,20' linewidth 3
set termoption dashed

load '~/mm/packages/gnuplot-mm/header.gp'

set format '$%g$'

set output '/home/shark/t/fig/creutz_ladder/phasediag/phasediag.tex'




set yrange [-5:5];
set style fill solid .5 noborder;

set xrange [0:1.5708];

set xtics ('$0$' 0, '$\pi/4$' 0.7854, '$\pi/2$' 1.5708);

set label '$\nu_+ = 1$' at .8, 3.5 front;
set label '$\nu_- = 1$' at .8, -3.5 front;
set label '$\nu_+ = \nu_- = 1$' at .9, 0 front;

set tmargin 1.4;

set label '$\delta$' at graph 1.03, .03;
set label '$t/w$' at graph .03, 1.07;

#plot '/home/shark/t/fig/creutz_ladder/phasediag/phasediag_2.csv' u 1:2:(0) w filledcu @BLACK not, \
     '/home/shark/t/fig/creutz_ladder/phasediag/phasediag_4.csv' u 1:(0):2 w filledcu @BLACK not, \
     '/home/shark/t/fig/creutz_ladder/phasediag/phasediag_1.csv' u 1:(0):2 w filledcu @DBLACK not, \
     '/home/shark/t/fig/creutz_ladder/phasediag/phasediag_3.csv' u 1:2:(0) w filledcu @DBLACK not

plot '/home/shark/t/fig/creutz_ladder/phasediag/phasediag_2.csv' w l @BLACK not, \
     '/home/shark/t/fig/creutz_ladder/phasediag/phasediag_4.csv' w l @BLACK not, \
     '/home/shark/t/fig/creutz_ladder/phasediag/phasediag_1.csv' w l @GRAY not, \
     '/home/shark/t/fig/creutz_ladder/phasediag/phasediag_3.csv' w l @GRAY not
     


