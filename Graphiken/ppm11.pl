set grid
set term png
set key outside box
set output "ppm11pop.png"
plot "ppm11.dat" using 1:2 with lines title "Predator", "ppm11.dat" using 1:3 with lines title "Prey"
reset

set grid
set term png
set key outside box
set output "ppm11ham.png"
plot "ppm11.dat" using 2:3 with lines notitle 
reset

set grid
set term png
set key outside box
set output "ppm11abb.png"
plot "ppm11.dat" using 1:4 with lines title "Predator", "ppm11.dat" using 1:5 with lines title "Prey"
set term png
reset

set grid
set term png
set key outside box
set output "ppm113D.png"
splot "ppm11.dat" using 1:2:3 with lines 
replot 
reset
