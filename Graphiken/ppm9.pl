
set grid
set term png
set key outside box
set output "ppm9_pop.png"
plot "ppm9.dat" using 1:2 with lines title "predator", "ppm9.dat" using 1:3 with lines title "prey"
reset

set grid
set term png
set key outside box
set output "ppm9_ham.png"
plot "ppm9.dat" using 2:3 with lines notitle 
reset

set grid
set term png
set key outside box
set output "ppm9_abb.png"
plot "ppm9.dat" using 1:4 with lines title "Predator", "ppm9.dat" using 1:5 with lines title "Prey"
set term png
reset

set grid
set term png
set key outside box
set output "ppm9_3D.png"
splot "ppm9.dat" using 1:2:3 with lines 
replot 
reset
