#!/bin/bash

# Vamos a hacer un menú con diferentes opciones para el usuario
# Veremos códigos nuevos
# Solo el user decide cuándo salir del menú, por ello necesito un bucle

while true; do

echo "Menú de opciones"
echo "1. Mostrar la fecha actual"
echo "2. Mostrar qué usuarios hay en el sistema"
echo "3. Qué espacio hay en el disco"
echo "4. Salir del menú"

# -p me permite meter un texto al usuario a la vez que capturo la info de la variable
read -p "Elige una opción: " opcion

case $opcion in

# Botones interactivos
1)
# con clear limpiamos la pantalla
clear
date
;;
# ;; cierra boton que se ha abierto
# Metemos comandos linux para ver por pantalla
2)
clear
w
;;
3)
clear
df -h
;;
# exit 0 se usa cuando quiero salir del sistema pero funciono todo bien
# exit 1 se usa cuando quiero salir del sistema pero ha habido un error
# usamos el 1  por ejemplo en un condicional que no cierra
4)
clear
echo "Saliendo del sistema..."
exit 0
;;

# boton de escape por si el usuario pulsa lo que no debe pulsar
*)
echo "Opción no válida, por favor lee bien y pon un número del 1 al 4"
;;

esac

done
