set terminal png size 1300, 1000
set output "test2.png"
set termoptions font ",12"
set multiplot
set size 0.5,0.5
set origin 0.0,0.0
set title "Zetientwicklung der Populationen"
plot "daten.dat" using 1:2 with lines t 'Raeuber', "daten.dat" using 1:3 with lines t 'Beute'
set origin 0.5,0.0
set title 'Zeitentwicklung der Fehler'
plot "daten.dat" using 1:4 with lines t "Raeuber", "daten.dat" using 1:5 with lines t 'Beute'
set origin 0.0,0.5 
set title 'Phasenentwicklung'
plot "daten.dat" using 2:3 with lines 
reset
