set grid

plot "ppm1.dat" using 1:2 title "Predator" with lines, "ppm1.dat" using 1:3 title "Prey" with lines
set term png
set output "ppm1.png"
replot
reset


set grid

set xlabel "Predators"
set ylabel "Prey"
set term png
set output "ppm1b.png"
plot "ppm1.dat" using 2:3 notitle with lines

