set grid
set term png
set key outside box
plot "ppm4.dat" using 1:2 with lines title "predator", "ppm4.dat" using 1:3 with lines title "prey"
set output "ppm4_pop.png"
reset

set grid
set term png
set key outside box
plot "ppm4.dat" using 2:3 with lines notitle 
set output "ppm4_ham.png"
reset

set grid
set term png
set key outside box
plot "ppm4.dat" using 1:4 with lines title "Predator", "ppm4.dat" using 1:5 with lines title "Prey"
set output "ppm4_abb.png"
reset

set grid
set term png
set key outside box
splot "ppm4.dat" using 1:2:3 with lines 
set output "ppm4_3D.png"
reset
