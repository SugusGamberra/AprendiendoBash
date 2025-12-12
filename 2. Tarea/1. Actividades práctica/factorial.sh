#!/bin/bash
#15. Cálculo de Factorial
#Escribe un script que calcule el factorial de un número.
#Enunciado:
#● Crea un archivo llamado factorial.sh.
#● Pide al usuario un numero
#● Usa un bucle while o for para calcular el facotrial del numeroç
#● Muestra el resultado

echo " -- CALCULO FACTORIALES --"
echo "Atencion: los factoriales crecen exponencialmente muy rapido."
echo "Para cuidar su ordenadorcito y la salud mental de todos vamos a limitarlo al numero 20"
echo "Ahora si..."
echo "Inserte un numero del 1 al 20 para hacer el calculo factorial:"
read numero

limite=20

#hacemos la logica, comprobamos primero si es negativo o mayor que el limite
if [ "$numero" -lt 0 ]; then
	echo "No se puede calcular numeros negativos"
elif [ "$numero" -gt "$limite" ]; then
	echo "El número $numero es demasiado grande..."
	echo "Para evitar errores de calculos y dolores de cabeza el limite es $limite"
else
	contador=1
	resultado=1

	while [ $contador -le $numero ]
	do
		resultado=$((resultado * contador))
		contador=$((contador + 1))
	done
	echo "El factorial de $numero es: $resultado"
fi
