set grid
set key outside box
plot "ppm1.dat" using 1:2 title "Predator" with lines , "ppm1.dat" using 1:3 title "Prey" with lines
set term png
set output "ppm1_timepop.png"
replot 
reset

set grid
set key outside box
plot "ppm1.dat" using 1:4 title "Predator" with lines , "ppm1.dat" using 1:5 title "Prey" with lines
set term png
set output "ppm1_timeabb.png"
replot 
reset

set grid
set key outside box
set ylabel "Predator"
set xlabel "Prey"
plot "ppm1.dat" using 2:3 notitle with lines
set output "ppm1_hampop.png"
replot 
reset
