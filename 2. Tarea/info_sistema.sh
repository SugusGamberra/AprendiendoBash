#!/bin/bash
#10. Mostrar Información del Sistema
#Escribe un script que muestre:
#● El nombre del sistema operativo.
#● El espacio disponible en disco.
#● El uso de memoria.
#Enunciado:
#● Crea un archivo llamado info_sistema.sh.
#● Usa los comandos uname, df -h, y free -h.
#● Muestra los resultados con mensajes descriptivos.

echo "Sistema operativo: "
uname -a

echo "Espacio dispo en el disco:"
df -h

echo "Uso de ram:"
free -h
