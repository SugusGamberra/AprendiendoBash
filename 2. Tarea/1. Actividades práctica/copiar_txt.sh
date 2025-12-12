#!/bin/bash
#7. Copia de Archivos
#Crea un script que copie todos los archivos .txt de un directorio a otro.
#Enunciado:
#● Crea un archivo llamado copiar_txt.sh.
#● Usa el comando cp para copiar archivos de /home/usuario/origen a /home/usuario/destino.
#● Muestra un mensaje al final: "Archivos copiados exitosamente".

# voy a pedir el nombre de usuario para que lo puedas probar profe :3 siga las instrucciones ò.ó
echo "Introduzca su nombre de usuario tal cual lo tiene en el pc para poder acceder a la ruta origen y destino:"
read usuario

# creo variables para usar la variable usuario y que sea mas facil usarlo todo despues :3
origen="/mnt/c/Users/$usuario/Documents/origen"
destino="/mnt/c/Users/$usuario/Documents/destino"

# x si no existen las carpetas las creamos :D
mkdir -p "$origen"
mkdir -p "$destino"

#para evitar errores, voy a hacer un condicional, si hay archivos en origen maravillosos y si no se avisa de q no hay, necesitamos antes contar si hay archivos o no e ignorar errores si no hay archivos

cantidad=$(ls "$origen"/*.txt 2>/dev/null | wc -l)

if [ $cantidad -gt 0 ]; then
	echo "Se han encontrado $cantidad archivos"
	cp "$origen"/*.txt "$destino/"
	echo "COpiando archivos desde $origen hacia $destino"
	echo "Archivos copiados exitosamente"
else
	echo "No se encontraron archivos txt. Saliendo del script..."
fi
