#!/bin/bash


### No corre :(
###  No es posible crear los archivos de forma automática, sin embargo esta serie de comandos ejecutados desde la terminal sí imprime los resultados desados.

### Intenté de varias formas alternas pero me fue muy dificil construir un una función que categorizara correctamente entre minutos, segundos y horas
## También intenté crear una función que desplegara los estadísticos simultáneamente sín éxito

### Al final esta fue la solución más limpia 



cat todos.psv| cut -d$'|' -f6|tr -s '[:upper:]' '[:lower:]'| grep -E  -i  "min|hour|sec| hr ">ufo_duration.txt

cat ufo_duration.txt | grep -E -i "min|mins"| awk '{print $1} '| grep  -i '[0-9]\+'| awk '{print $1+1-1}'|sort -n>minutes.txt

cat ufo_duration.txt | grep -E -i "sec"| awk '{print $1} '| grep  -i '[0-9]\+'| awk '{print $1+1-1}'|sort -n| awk '{print $1/60}'>sec.txt
cat ufo_duration.txt | grep -E -i "hour|hr"| awk '{print $1} '| grep  -i '[0-9]\+'| awk '{print $1+1-1}'|sort -n| awk '{print $1*60}'>hrs.txt

cat sec.txt minutes.txt hrs.txt| tail -n  1| awk '{print "máximo" $1}'
cat sec.txt minutes.txt hrs.txt| head -n 1 | awk '{print "mínimo" $1}'
cat sec.txt minutes.txt hrs.txt| awk '{sum1+=$1}END{print "promedio: "sum1/NR " minutos"}'

rm ufo_duration.txt sec.txt hrs.txt minutes.txt 





