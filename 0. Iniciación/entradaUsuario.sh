#!/bin/bash
#Haremos un condicional también sobre la edad pero esta vez es el usuario quien introduce la edad en consola!

echo "¿Qué edad tienes?"
read edad

if [ $edad -gt 65 ]; then
	echo "Puedes jubilarte"
elif [ $edad -gt 18 ]; then
	echo "Puedes trabajar."
else
	echo "Aún no puedes trabajar y menos jubilarte, pimpollo"
fi
