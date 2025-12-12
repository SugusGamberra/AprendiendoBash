#!/bin/bash
#este porque si, ya que hemos creado un user pos ahora tenemos la opcion de borrarlo :3

echo "Introduzca el nombre del usuario que quieres eliminar"
read usuario

#compruebo que existe el user, si existe pues preguntar si estas seguro de borrarlo y que al darle a si lo borre y si le das no que la operacion se cancele
# dentro de la opcion afirmativa que si se ha borrado avisar de q se borro, y si no avisar de que no
# si no existe el usuario pues que lo avise y ya

if id "$usuario" &>/dev/null; then
	echo "Vas a borrar al usuario $usuario y TODOs sus archivos..."
	echo "Estas seguro? (s/n)"
	read confirmacion

	if [ "$confirmacion" == "s" ]; then
		sudo userdel -r "$usuario"
		if [ $? -eq 0 ]; then
			echo "Usuario $usuario borrado completamente"
		else
			echo "Hubo un error al borrar, puede que $usuario este en uso, cierre todo e intentelo de nuevo"
		fi
	else
		echo "Operacion cancelada. No se han hecho cambios sobre $usuario"
	fi
else
	echo "Usuario $usuario no existe"
fi
