#!/bin/bash
#3. Operaciones Matemáticas
#Escribe un script que sume dos números y muestre el resultado.
#Enunciado:
#● Crea un archivo llamado suma.sh.
#● Declara dos variables: num1=5 y num2=10.
#● Calcula la suma de num1 y num2 y guarda el resultado en una nueva variable llamada resultado.
#● Muestra "La suma es: [resultado]"

num1=5
num2=10

resultado=$((num1 + num2))

echo "La suma de $num1 + $num2 = $resultado"
