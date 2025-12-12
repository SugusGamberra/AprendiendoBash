#!/bin/bash
# 11. Copia de Seguridad
#Escribe un script que realice una copia de seguridad de una carpeta.
#Enunciado:
#● Crea un archivo llamado backup.sh.
#● Define una variable origen con el directorio que quieres copiar.
#● Define una variable destino con la carpeta donde guardarás la copia.
#● Usa el comando cp -r para copiar el contenido del directorio.

# hare como en el ejercicio 7, le pido al user su nombre para q vaya a la ruta correcta
echo "INtroduzca su nombre de usuario tal y como aparece en windows"
read usuario

#ahora hare tb un read para que el user me diga cual es la carpeta origen
echo "Introduzca el nombre de la carpeta origen de tus Documentos"
read carpetaOrigen

origen="/mnt/c/Users/$usuario/Documents/$carpetaOrigen"
destino="/mnt/c/Users/$usuario/Documents/Backup"

# e igual que en el 7 le meto la logica, si existe la carpeta origen, crea la carpeta de destino y copia ahi todo el contenido
# y si no pues mandamos aviso al usuario y listo

if [ -d "$origen" ]; then
	echo "Iniciando copia de seguridad..."
	mkdir -p "$destino"
	cp -r "$origen/." "$destino/"
	echo "Copia completada en $destino"
else
	echo "La carpeta $carpetaOrigen no existe en tus documentos."
fi
