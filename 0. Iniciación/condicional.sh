#!/bin/bash
#Condicional según la edad de un usuario

edad=32

if [ $edad -ge 18 ]; then
	echo "Eres mayor de edad."
else
	echo "Eres menor de edad."
fi
