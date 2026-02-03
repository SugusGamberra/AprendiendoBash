#!/bin/bash

# Vamos a crear un dado, es un script muy ligero
# Generamos un numero aleatorio, con el 6 indicamos que hay 6 opciones desde el 0
# Para que empiece desde el 1 en vez desde el 0, le damos el contador +1

numero=$((RANDOM % 6 +1))

echo "El resultado de tu tirada de dado es $numero"
