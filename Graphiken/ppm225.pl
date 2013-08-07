set grid
set term png
set key outside box
set output "ppm225_pop.png"
plot "ppm225.dat" using 1:2 with lines title "predator", "ppm225.dat" using 1:3 with lines title "prey"
reset

set grid
set term png
set key outside box
set output "ppm225_ham.png"
plot "ppm225.dat" using 2:3 with lines notitle 
reset

set grid
set term png
set key outside box
set output "ppm225_abb.png"
plot "ppm225.dat" using 1:4 with lines title "Predator", "ppm225.dat" using 1:5 with lines title "Prey"
set term png
reset
