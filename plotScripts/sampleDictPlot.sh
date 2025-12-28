#!/bin/bash/

#Terminal 0
set terminal qt 0
set grid xtics
set grid ytics
set key right
set xlabel "x-centerline"
set ylabel "Ux"
set title "Ux over time in x-axis direction"
plot "postProcessing/sampleDict/50/lineX.xy" using 1:2 with linespoints pointtype 3

#Terminal 1
set terminal qt 1
set grid xtics
set grid ytics
set key right
set xlabel "Uy"
set ylabel "y-centerline"
set title "Uy over time in y-axis direction"
plot "postProcessing/sampleDict/50/lineX.xy" using 2:1 with linespoints pointtype 4

print "Plotting with GNUPLOT"
print "Press ENTER or CTRL+C to exit"
pause -1

#EOF