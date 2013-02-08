set grid
set key outside box
plot "ppm4.dat" using 1:2 title "Predator" with lines , "ppm4.dat" using 1:3 title "Prey" with lines
set term png
set output "ppm4_timepop.png"
replot 
reset

set grid
set key outside box
plot "ppm4.dat" using 1:5 title "Prey" with lines, "ppm4.dat" using 1:4 title "Predator" with line
set term png
set output "ppm4_timeabb.png"
replot 
reset

set grid
set key outside box
set xlabel "Predator"
set ylabel "Prey"
plot "ppm4.dat" using 2:3 notitle with lines
set term png
set output "ppm4_hampop.png"
replot 
reset

set grid
set key outside box
set ylabel "Predator"
set xlabel "Prey"
set ylabel "Time"
splot "ppm4.dat" notitle with lines
set term png
set output "ppm4_ham3D.png"
replot 
reset
