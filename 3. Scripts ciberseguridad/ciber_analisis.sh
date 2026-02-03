#!/bin/bash

# vamos a hacer un menú que, en función de lo que quiera el usuario, sepa
# info de su equipo o sistema linux sin saber ejecutar estos comandos

while true; do

echo "Análisis básico de la red del sistema"
echo "====================================="
echo "Seleccione una opción:"
echo "1. Mostrar configuración de red"
echo "2. Comprobar conectividad de red (ping)"
echo "3. Mostrar la tabla de rutas"
echo "4. Resolver nombres de dominio"
echo "5. Mostrar conexiones activas"
echo "6. Mostrar la dirección MAC"
echo "7. Salir"
echo "======================================"

read -p "Introduce una opción del 1 al 7: " opcion

case $opcion in

1)
echo "Configuración de red: "
ifconfig
;;

2)
read -p "Introduce una IP o dominio a comprobar: " destino
echo "Haciendo un ping a $destino ..."
ping -c 4 "$destino"
;;

3)
echo "La tabla de rutas es: "
ip route
;;

4)
read -p "Introduce el dominio a resolver: " dominio
echo "Resolviendo el $dominio ..."
nslookup "$dominio"
;;

5)
echo "Conexiones activas"
ss -tuln
;;

6)
echo "Dirección MAC de las interfaces de RED"
ip link
;;

7)
echo "Saliendo del sistema..."
exit 0
;;

*)
echo "Opción no válida, introduce un número del 1 al 7"
;;

esac

done
