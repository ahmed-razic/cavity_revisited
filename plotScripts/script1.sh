#GNUPLOT script for printing dummy data

#Terminal 0
set terminal qt 0
set grid xtics
set grid ytics
set key right
set xlabel "Time"
set ylabel "p"
set title "p over time"
plot "logs/p_0" using 1:2 with linespoints pointtype 1

replot "logs/pFinalRes_0" using 1:2 with linespoints pointtype 2


#Terminal 1
set terminal qt 1
set grid xtics
set grid ytics
set key bottom right
set xlabel "Time (s)"
set ylabel "Courant number"
set title "Convergation - Courant number"
plot "logs/CourantMax_0" using 1:2 with linespoints pointtype 3

#Terminal 2
set terminal qt 2
set grid xtics
set grid ytics
set key right
set xlabel "Time (s)"
set ylabel "Ux and Uy"
set title "Speed Ux and Uy over time"

plot "logs/Ux_0" using 1:2 with linespoints pointtype 4,\
"logs/Uy_0" using 1:2 with linespoints pointtype 5


print "Plotting with GNUPLOT"
print "Press ENTER or CTRL+C to exit"
pause -1

#EOF