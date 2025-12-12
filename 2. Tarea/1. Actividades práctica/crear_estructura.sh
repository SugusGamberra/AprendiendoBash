#!/bin/bash
#9. Crear Archivos y Directorios
#Escribe un script que cree 5 directorios y dentro de cada uno un archivo vacío.
#Enunciado:
#● Crea un archivo llamado crear_estructura.sh.
#● Usa un bucle for para crear directorios dir1, dir2, ..., dir5.
#● Dentro de cada directorio, crea un archivo archivo.txt.

for i in {1..5}
do
	nombreCarpeta="dir$i"
	mkdir "$nombreCarpeta"
	touch "$nombreCarpeta/archivo.txt"
	echo "Creando la carpeta $nombreCarpeta y su correspondiente archivo.txt"
done

echo "Proceso completado. Se han creado 5 carpetas con 5 archivos.txt."
