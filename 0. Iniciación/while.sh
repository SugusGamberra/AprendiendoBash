#!/bin/bash
#Creamos un bucle while!!
contador=1
while [ $contador -le 10 ]
do
	echo "El contador continua en: $contador"
	contador=$((contador + 1))
done
