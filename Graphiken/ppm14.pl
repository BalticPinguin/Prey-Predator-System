set grid
set term png
set key outside box
set output "ppm14_pop.png"
plot "ppm14.dat" using 1:2 with lines title "predator", "ppm14.dat" using 1:3 with lines title "prey"
reset

set grid
set term png
set key outside box
set output "ppm14_ham.png"
plot "ppm14.dat" using 2:3 with lines notitle 
reset

set grid
set term png
set key outside box
set output "ppm14_abb.png"
plot "ppm14.dat" using 1:4 with lines title "Predator", "ppm14.dat" using 1:5 with lines title "Prey"
set term png
reset
