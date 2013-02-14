set grid
set term png
set key outside box
set output "ppm42pop.png"
plot "ppm42.dat" using 1:2 with lines title "predator", "ppm42.dat" using 1:3 with lines title "prey"
reset

set grid
set term png
set key outside box
set output "ppm42ham.png"
plot "ppm42.dat" using 2:3 with lines notitle 
reset

set grid
set term png
set key outside box
set output "ppm42abb.png"
plot "ppm42.dat" using 1:4 with lines title "Predator", "ppm42.dat" using 1:5 with lines title "Prey"
set term png
reset
