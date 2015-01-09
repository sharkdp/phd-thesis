#!/usr/bin/gnuplot

set terminal cairolatex pdf standalone color size 5,6.5 font 'Verdana,20' linewidth 3
set termoption dashed

load '~/mm/packages/gnuplot-mm/header.gp'

set format '$%g$'

set output '/home/shark/PhD/projects/polar_molecules/paper/fig3/fig3b/fig3b.tex'




unset colorbox
set pm3d at s flush center ftriangles scansforward 
unset surface
set ticslevel 0
unset xtics
unset ytics
zmin=-7.4
set zrange [zmin:8.4]
set style arrow 1 nohead lt 1 lw 3 lc rgb '#000000'
set style arrow 2 nohead front lt 1 lw 3 lc rgb '#000000'
zlevel=0

gamp='0,0,zlevel'
kp1='2.418,0,zlevel'
kp2='1.209,2.094,zlevel'
kp3='-1.209,2.094,zlevel'
kp4='-2.418,0,zlevel'
kp5='-1.209,-2.094,zlevel'
kp6='1.209,-2.094,zlevel'
mp='1.813,1.047,zlevel'


BLUE="set palette defined (0 '#ffffff', 4 '#ffffff', 10 '#0066ff')"
RED="set palette defined (0 '#ffffff', 4 '#ffffff', 10 '#ff0072')"

#set palette defined (0 '#e70e56', 1.3 '#ffc2dc',  1.5 '#ffffff', 1.55 '#cadfff',  10 '#0066ff')
#set palette defined (0 '#0066ff', 1.1 '#cadfff',  1.25 '#ffffff', 1.32 '#ffc2dc',  10 '#e70e56')
set palette defined (0 '#0066ff', 0.1 '#cadfff', 0.6 '#666666',  1.25 '#ffffff', 1.32 '#aaaaaa', 8.2 '#444444', 8.3 '#ffc2dc',  10 '#e70e56')
set cbrange [-5.3:9.3]

set border 16

set view 90, 0

view3d=0

if (view3d) {
    set arrow from @kp1 to @kp2 as 2
    set arrow from @kp2 to @kp3 as 1
    set arrow from @kp3 to @kp4 as 1
    set arrow from @kp4 to @kp5 as 1
    set arrow from @kp5 to @kp6 as 2
    set arrow from @kp6 to @kp1 as 2

    set label 'K' at @kp2 front point pointtype 7 offset 0.3,0
    set label 'M' at @mp front point pointtype 7 offset 0,-1
    #set label '$\Gamma$' at @gamp front point pointtype 7 offset 0,-1

    set view 80, 35
}

chernLabel=1

if (chernLabel) {
    set label '$C=-1$' at .8,0,-6.4 front
    set label '$C=0$' at 1.1,0,-3.8 front
    set label '$C=0$' at 1.1,0,2.0 front
    set label '$C=+1$' at .8,0,+8.9 front
}

set label '$E_{\mathbf{k}}/\bar{t}$' at -2.4,0,8.9
set label '(b)' at screen .13,0.8 front

splot '/home/shark/PhD/projects/polar_molecules/paper/fig3/fig3b/fig3b_1.csv' not, '/home/shark/PhD/projects/polar_molecules/paper/fig3/fig3b/fig3b_2.csv' not, '/home/shark/PhD/projects/polar_molecules/paper/fig3/fig3b/fig3b_3.csv' not, '/home/shark/PhD/projects/polar_molecules/paper/fig3/fig3b/fig3b_4.csv' not
#splot '/home/shark/PhD/projects/polar_molecules/paper/fig3/fig3b/fig3b_1.csv' w l not, '/home/shark/PhD/projects/polar_molecules/paper/fig3/fig3b/fig3b_2.csv' w l not, '/home/shark/PhD/projects/polar_molecules/paper/fig3/fig3b/fig3b_3.csv' w l  not, '/home/shark/PhD/projects/polar_molecules/paper/fig3/fig3b/fig3b_4.csv' w l not


