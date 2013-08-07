set grid
set term png
set key outside box
set output "ppm10_pop.png"
plot "ppm10.dat" using 1:2 with lines title "Predator", "ppm10.dat" using 1:3 with lines title "Prey"
reset

set grid
set term png
set key outside box
set output "ppm10_ham.png"
plot "ppm10.dat" using 2:3 with lines notitle 
reset

set grid
set term png
set key outside box
set output "ppm10_abb.png"
plot "ppm10.dat" using 1:4 with lines title "Predator", "ppm10.dat" using 1:5 with lines title "Prey"
set term png
reset
