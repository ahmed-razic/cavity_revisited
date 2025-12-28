#GNUPLOT script for printing dummy data

#Terminal 0
set terminal qt 0
set grid xtics
set grid ytics
set key right
set xlabel "Time"
set ylabel "p"
set title "p over time"
set logscale y
plot "logs/p_0" using 1:2 with lines, "logs/pFinalRes_0" using 1:2 with lines


#Terminal 1
set terminal qt 1
set grid xtics
set grid ytics
set key bottom right
set xlabel "Time (s)"
set ylabel "Courant number"
set title "Convergation - Courant number"
plot "logs/CourantMax_0" using 1:2 with lines


#Terminal 2
set terminal qt 2
set grid xtics
set grid ytics
set key right
set xlabel "Time (s)"
set ylabel "Ux and Uy"
set title "Speed Ux and Uy over time"
set logscale y
plot "logs/Ux_0" using 1:2 with lines, "logs/Uy_0" using 1:2 with lines


print "Plotting with GNUPLOT"
print "Press ENTER or CTRL+C to exit"
pause -1

#EOF