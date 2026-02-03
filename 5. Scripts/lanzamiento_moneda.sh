#!/bin/bash

# En este caso no es necesario poner +1
# Como es una moneda y tenemos cara o cruz nos da igual en que número empiece
numero=$((RANDOM % 2))

# Condicional para ver si es cara o cruz
if [ $numero -eq 0 ]; then
echo "Cara"
else
echo "Cruz"
fi
