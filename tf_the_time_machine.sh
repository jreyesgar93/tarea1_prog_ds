#!/bin/bash
 
curl https://www.gutenberg.org/files/35/35-0.txt| sed '1,/START OF THIS/d'| sed '/END OF THIS/,$d' | tr -s '[:upper:]' '[:lower:]' | tr -d ".," | 
tr " \t" "\n" | sed '/^[[:space:]]*$/d'| sort | uniq -c | sort -n -r|  head -n 10

#Algunos comandos se tomaron de stackoverflow, específicamente  
# tr " \t" "\n" | sed '/^[[:space:]]*$/d'
# El primer comando sustituye espacios por salto de linea y el segundo elimina lineas vacías.
# Además leí alguna documentación y ejemplos de sed para poder eliminar la introduccion y licencias


