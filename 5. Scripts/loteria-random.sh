#!/bin/bash

echo "Bienvenido a la loteria de navidad (random)"

numero_ganador=$((RANDOM % 20 + 1))

# -r entiende la respuesta del usuario independientemente de mayuso minus
read -p "Introduzca un número del 1 al 20: " numero

if [[ $numero -ge 1 && $numero -le 20 ]]; then
	if [ $numero -eq $numero_ganador ]; then
		echo "Has ganado la loteria! :D"
	else
		echo "No has ganado :("
	fi
else
	echo "Numero no valido"
fi
