set grid
set key outside box
plot "ppm2.dat" using 1:2 title "Predator" with lines , "ppm2.dat" using 1:3 title "Prey" with lines
set term png
set output "ppm2_timepop.png"
replot 
reset

set grid
set key outside box
plot "ppm2.dat" using 1:4 title "Predator" with lines , "ppm2.dat" using 1:5 title "Prey" with lines
set term png
set output "ppm2_timeabb.png"
replot 
reset

set grid
set key outside box
set ylabel "Predator"
set xlabel "Prey"
plot "ppm2.dat" using 2:3 notitle with lines
set output "ppm2_hampop.png"
replot 
reset
