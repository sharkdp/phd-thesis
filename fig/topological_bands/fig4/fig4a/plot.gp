#!/usr/bin/gnuplot

set terminal cairolatex pdf standalone color size 5,6 font 'Verdana,20' linewidth 3
set termoption dashed

load '~/mm/packages/gnuplot-mm/header.gp'

set format '$%g$'

set output '/home/shark/pp/fig4/fig4a/fig4a.tex'


set linestyle 1 lc rgb '#666666' lw 1;
set linestyle 2 lc rgb '#e70e56' lw 3;
set linestyle 3 lc rgb '#0066ff' lw 3;

set xtics ('$-\pi/a$' -pi, '$0$' 0, '$\pi/a$' pi);

set tmargin 1.4;

set label '$k_x$' at screen 0.94, 0.11 front;
set label '$E(k_x)/V$' at screen 0.15, 0.89 front;

set label '(a)' at screen 0.04, 0.92 front;

#set arrow from .7, .3 to 1.07, 0.766 head front;
#set arrow from -.7, -.3 to -1.07, -0.784 head front;
set arrow from 2.3, -0.1 to 1.6, -0.266 head front;
set arrow from 2.3, 0.1 to 1.6, 0.236 head front;

set xrange [-pi:pi];
set yrange [-4.5:5.5];


plot '/home/shark/pp/fig4/fig4a/fig4a_3.csv' w l ls 1 not, '/home/shark/pp/fig4/fig4a/fig4a_4.csv' w l ls 1 not, '/home/shark/pp/fig4/fig4a/fig4a_5.csv' w l ls 1 not, '/home/shark/pp/fig4/fig4a/fig4a_6.csv' w l ls 1 not, '/home/shark/pp/fig4/fig4a/fig4a_7.csv' w l ls 1 not, '/home/shark/pp/fig4/fig4a/fig4a_8.csv' w l ls 1 not, '/home/shark/pp/fig4/fig4a/fig4a_9.csv' w l ls 1 not, '/home/shark/pp/fig4/fig4a/fig4a_10.csv' w l ls 1 not, '/home/shark/pp/fig4/fig4a/fig4a_11.csv' w l ls 1 not, '/home/shark/pp/fig4/fig4a/fig4a_12.csv' w l ls 1 not, '/home/shark/pp/fig4/fig4a/fig4a_13.csv' w l ls 1 not, '/home/shark/pp/fig4/fig4a/fig4a_14.csv' w l ls 1 not, '/home/shark/pp/fig4/fig4a/fig4a_15.csv' w l ls 1 not, '/home/shark/pp/fig4/fig4a/fig4a_16.csv' w l ls 1 not, '/home/shark/pp/fig4/fig4a/fig4a_17.csv' w l ls 1 not, '/home/shark/pp/fig4/fig4a/fig4a_18.csv' w l ls 1 not, '/home/shark/pp/fig4/fig4a/fig4a_19.csv' w l ls 1 not, '/home/shark/pp/fig4/fig4a/fig4a_20.csv' w l ls 1 not, '/home/shark/pp/fig4/fig4a/fig4a_21.csv' w l ls 1 not, '/home/shark/pp/fig4/fig4a/fig4a_22.csv' w l ls 1 not, '/home/shark/pp/fig4/fig4a/fig4a_23.csv' w l ls 1 not, '/home/shark/pp/fig4/fig4a/fig4a_24.csv' w l ls 1 not, '/home/shark/pp/fig4/fig4a/fig4a_25.csv' w l ls 1 not, '/home/shark/pp/fig4/fig4a/fig4a_26.csv' w l ls 1 not, '/home/shark/pp/fig4/fig4a/fig4a_27.csv' w l ls 1 not, '/home/shark/pp/fig4/fig4a/fig4a_28.csv' w l ls 1 not, '/home/shark/pp/fig4/fig4a/fig4a_29.csv' w l ls 1 not, '/home/shark/pp/fig4/fig4a/fig4a_30.csv' w l ls 1 not, '/home/shark/pp/fig4/fig4a/fig4a_31.csv' w l ls 1 not, '/home/shark/pp/fig4/fig4a/fig4a_32.csv' w l ls 1 not, '/home/shark/pp/fig4/fig4a/fig4a_33.csv' w l ls 1 not, '/home/shark/pp/fig4/fig4a/fig4a_34.csv' w l ls 1 not, '/home/shark/pp/fig4/fig4a/fig4a_35.csv' w l ls 1 not, '/home/shark/pp/fig4/fig4a/fig4a_36.csv' w l ls 1 not, '/home/shark/pp/fig4/fig4a/fig4a_37.csv' w l ls 1 not, '/home/shark/pp/fig4/fig4a/fig4a_38.csv' w l ls 1 not, '/home/shark/pp/fig4/fig4a/fig4a_39.csv' w l ls 1 not, '/home/shark/pp/fig4/fig4a/fig4a_40.csv' w l ls 1 not, '/home/shark/pp/fig4/fig4a/fig4a_41.csv' w l ls 1 not, '/home/shark/pp/fig4/fig4a/fig4a_42.csv' w l ls 1 not, '/home/shark/pp/fig4/fig4a/fig4a_43.csv' w l ls 1 not, '/home/shark/pp/fig4/fig4a/fig4a_44.csv' w l ls 1 not, '/home/shark/pp/fig4/fig4a/fig4a_45.csv' w l ls 1 not, '/home/shark/pp/fig4/fig4a/fig4a_46.csv' w l ls 1 not, '/home/shark/pp/fig4/fig4a/fig4a_47.csv' w l ls 1 not, '/home/shark/pp/fig4/fig4a/fig4a_48.csv' w l ls 1 not, '/home/shark/pp/fig4/fig4a/fig4a_49.csv' w l ls 1 not, '/home/shark/pp/fig4/fig4a/fig4a_50.csv' w l ls 1 not, '/home/shark/pp/fig4/fig4a/fig4a_51.csv' w l ls 1 not, '/home/shark/pp/fig4/fig4a/fig4a_52.csv' w l ls 1 not, '/home/shark/pp/fig4/fig4a/fig4a_53.csv' w l ls 1 not, '/home/shark/pp/fig4/fig4a/fig4a_54.csv' w l ls 1 not, '/home/shark/pp/fig4/fig4a/fig4a_55.csv' w l ls 1 not, '/home/shark/pp/fig4/fig4a/fig4a_56.csv' w l ls 1 not, '/home/shark/pp/fig4/fig4a/fig4a_57.csv' w l ls 1 not, '/home/shark/pp/fig4/fig4a/fig4a_58.csv' w l ls 1 not, '/home/shark/pp/fig4/fig4a/fig4a_59.csv' w l ls 1 not, '/home/shark/pp/fig4/fig4a/fig4a_60.csv' w l ls 1 not, '/home/shark/pp/fig4/fig4a/fig4a_61.csv' w l ls 1 not, '/home/shark/pp/fig4/fig4a/fig4a_62.csv' w l ls 1 not,  '/home/shark/pp/fig4/fig4a/fig4a_1.csv' w l ls 2 not, '/home/shark/pp/fig4/fig4a/fig4a_2.csv' w l ls 3 not

