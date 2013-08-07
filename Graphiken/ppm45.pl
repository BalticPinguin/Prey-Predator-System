set grid
set term png
set key outside box
set output "ppm45pop.png"
plot "ppm45.dat" using 1:2 with lines title "Predator", "ppm45.dat" using 1:3 with lines title "Prey"
reset

set grid
set term png
set nokey
set output "ppm45ham.png"
plot "ppm45.dat" using 2:3 with lines notitle 
reset

set grid
set term png
set key outside box
set output "ppm45abb.png"
plot "ppm45.dat" using 1:4 with lines title "Predator", "ppm45.dat" using 1:5 with lines title "Prey"
replot
reset

