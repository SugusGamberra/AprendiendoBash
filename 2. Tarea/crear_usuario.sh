#!/bin/bash
# 13. Gestión de Usuarios
#Escribe un script que cree un usuario en el sistema.
#Enunciado:
#● Crea un archivo llamado crear_usuario.sh.
#● Pide al usuario un nombre para el nuevo usuario.
#● Usa el comando sudo useradd para crear el usuario.
#● Muestra un mensaje: "Usuario [nombre] creado exitosamente".

echo "Introduzca un nombre para el nuevo usuario a crear en el sistema"
read nuevoUser

#voy a crear la logica para comprobar q si no existe el usuario pues lo crea, si existe pues que no lo cree
if id "$nuevoUser" &>/dev/null; then
	echo "El usuario $nuevoUser ya existe en el sistema!"
else
	echo "Creando usuario $nuevoUser ..."
	sudo useradd -m "$nuevoUser"
	# esto es para saber si salio todo bien o no
	if [ $? -eq 0 ]; then
		echo "Usuario $nuevoUser creado exitosamente"
	else
		echo "Hubo un error al crear al usuario."
	fi
fi
