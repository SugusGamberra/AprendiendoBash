#!/bin/bash
#4. Pedir Datos al Usuario
#Escribe un script que pida al usuario su nombre y luego lo salude.
#Enunciado:
#● Crea un archivo llamado saludo_usuario.sh.
#● Usa el comando read para pedir el nombre al usuario.
#● Saluda al usuario con "Hola, [nombre]".

echo "Introduce tu nombre a continuación y pulsa enter:"
read nombre
echo "Hola, $nombre"
