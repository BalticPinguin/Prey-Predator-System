set grid
set term png
set key outside box
set output "ppm8_pop.png"
plot "ppm8.dat" using 1:2 with lines title "predator", "ppm8.dat" using 1:3 with lines title "prey"
reset

set grid
set term png
set key outside box
set output "ppm8_ham.png"
plot "ppm8.dat" using 2:3 with lines notitle 
reset

set grid
set term png
set key outside box
set output "ppm8_abb.png"
plot "ppm8.dat" using 1:4 with lines title "Predator", "ppm8.dat" using 1:5 with lines title "Prey"
set term png
reset

set grid
set term png
set key outside box
set output "ppm8_3D.png"
splot "ppm8.dat" using 1:2:3 with lines 
replot 
reset
