#! /bin/bash
./compile.sh
./ppm>daten.dat
gnuplot plots.pl
#rm daten.dat
