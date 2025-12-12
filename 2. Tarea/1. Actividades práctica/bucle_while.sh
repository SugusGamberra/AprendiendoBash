#!/bin/bash
#8. Contador con while
#Escribe un script que cuente de 1 a 5 y muestre cada número.
#Enunciado:
#● Crea un archivo llamado bucle_while.sh.
#● Declara una variable contador=1.
#● Usa un bucle while para mostrar el valor de contador mientras sea menor o igual a 5.
#● Incrementa el valor de contador en cada iteración.

contador=1
while [ $contador -le 5 ]
do
	echo "Contador: $contador"
	contador=$((contador + 1))
done
