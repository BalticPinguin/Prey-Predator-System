set grid
set term png
set key outside box
set output "ppm12pop.png"
plot "ppm12.dat" using 1:2 with lines title "Predator", "ppm12.dat" using 1:3 with lines title "Prey"
reset

set grid
set term png
set key outside box
set output "ppm12ham.png"
plot "ppm12.dat" using 2:3 with lines notitle 
reset

set grid
set term png
set key outside box
set output "ppm12abb.png"
plot "ppm12.dat" using 1:4 with lines title "Predator", "ppm12.dat" using 1:5 with lines title "Prey"
set term png
reset

set grid
set term png
set key outside box
set output "ppm123D.png"
splot "ppm12.dat" using 1:2:3 with lines 
replot 
reset
