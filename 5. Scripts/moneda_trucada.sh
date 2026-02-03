#!/bin/bash

# Le meto una probabilidad para que un 70% de cara y el resto cruz
probabilidad_cara=70
probabilidad_cruz=30

# No entiende de porcentajes así que tenemos que explicarle cuál es mayor
numero=$((RANDOM % 100 +1))

if [ $numero -le $probabilidad_cara ]; then
echo "Cara"
else
echo "Cruz"
fi
