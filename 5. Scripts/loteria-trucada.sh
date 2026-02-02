#!/bin/bash

echo "Bienvenido a la lotería de navidad"

echo "Por favor, elija un número del 1 al 20"

read -p "Introduzca un numero: "  numero

if [[ $numero -ge 1 && $numero -le 20 ]]; then
	if [ $numero -eq 8 ]; then
		echo "Has ganado el premio gordo :D"
	elif [ $numero -eq 3 ]; then
		echo "Has ganado el segundo premio ;3"
	else
		echo "No ha habido premio :("
	fi
else
	echo "Número invalido"
fi
