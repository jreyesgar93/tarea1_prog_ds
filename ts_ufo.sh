
#!/bin/bash

cat todos.psv |awk -F "|" '{print $2}' | cut -d ' ' -f 1 |cut -d '/' -f1,3| uniq -c| head -n 609| awk -F " " '{print $2,$1}' > data4plot.txt


gnuplot plot.sh>ts_ufo_plot.png
