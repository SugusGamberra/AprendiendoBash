#!/bin/bash
#5. Control de Flujo con if
#Escribe un script que determine si un número es positivo o negativo.
#Enunciado:
#● Crea un archivo llamado positivo_negativo.sh.
#● Pide al usuario que introduzca un número.
#● Usa un condicional if para verificar si el número es mayor o igual a 0:
#    ○ Si es positivo, muestra: "El número es positivo".
#    ○ Si es negativo, muestra: "El número es negativo".

echo "Introduzzca un número a continuación:"
read numero

if [ $numero -ge 0 ]; then
	echo "El número es positivo"
else
	echo "El número es negativo"
fi
