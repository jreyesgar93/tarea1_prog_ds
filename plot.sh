

set terminal png
set datafile separator " "
set terminal png size 1500, 400
set title "Número de observaciones por mes"
set ylabel "observaciones"
set xlabel "fecha"
set xdata time

set timefmt "%m/%y"
set format x"%m/%y"

plot 'data4plot.txt' using 1:2 with lines

set output "plot.png"

