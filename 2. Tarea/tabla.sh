#!/bin/bash
#12. Generar Tablas de Multiplicar
#Escribe un script que genere la tabla de multiplicar de un número dado.
#Enunciado:
#● Crea un archivo llamado tabla.sh.
#● Pide al usuario un número.
#● Usa un bucle for para mostrar la tabla de multiplicar desde 1 hasta 10.

echo "Por favor, introduzca un número entero"
read numero

for i in {1..10}
do
	resultado=$((numero * i))
	echo "$numero x $i = $resultado"
done
