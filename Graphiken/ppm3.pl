set grid
set key outside box
plot "ppm3.dat" using 1:2 title "Predator" with lines , "ppm3.dat" using 1:3 title "Prey" with lines
set term png
set output "ppm3_timepop.png"
replot 
reset

set grid
set key outside box
plot "ppm3.dat" using 1:5 title "Prey" with lines, "ppm3.dat" using 1:4 title "Predator" with line
set term png
set output "ppm3_timeabb.png"
replot 
reset

set grid
set key outside box
set ylabel "Predator"
set xlabel "Prey"
plot "ppm3.dat" using 2:3 notitle with lines
set term png
set output "ppm3_hampop.png"
replot 
reset

set grid
set key outside box
set ylabel "Predator"
set xlabel "Prey"
set ylabel "Time"
splot "ppm3.dat" notitle with lines
set term png
set output "ppm3_ham3D.png"
replot 
reset
