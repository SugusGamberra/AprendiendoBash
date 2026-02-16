#!/bin/bash

archivo="passwords.txt"

while true; do
	echo "=== Generador de Contraseñas ==="
	echo "1. Generar contraseña"
	echo "2. Salir"

	read -p "Seleccione una opción: " opcion

	case $opcion in
		1)
		# Pedirle la longitud d la contraseña al usuario
		read -p "Ingrese la longitud de la contraseña (entre 8 y 32 caracteres)" longitud
		if [[ ! $longitud =~ ^[0-9]+$ ]] || [[ $longitud -lt 8 ]] || [[ $longitud -gt 32 ]]; then
			echo "Error, introduzca un número entre 8 y 32."
			continue
		fi

		# Preguntar al user si quiere meter mayusculas, numeros y caracteres especiales
		read -rp "¿Quieres mayúsculas? (s/n)" mayusculas
		read -rp "¿Quieres números? (s/n)" numeros
		read -rp "¿Quieres caracteres especiales? (s/n)" especiales

		if [[ $mayusculas != "s" && $numeros != "s" && $especiales != "s" ]]; then
			echo "Error, debes seleccionar al menos una opción de las dadas"
			continue
		fi

		caracteres+="abcdefghijklmnñopqrstuvwxyz"

		if [[ $mayusculas == "s" ]]; then
			caracteres+="ABCDEFGHIJKLMNÑOPQRSTUVWXYZ"
		fi

		if [[ $numeros == "s" ]]; then
			caracteres+="0123456789"
		fi

		if [[ $especiales == "s" ]]; then
			caracteres+="!ñ@#$%^&*()_+"
		fi

		# bucle for para generar contraseña
		password=""

		for ((i=0; i < longitud; i++)); do
			rand=$((RANDOM % ${#caracteres}))
			password+="${caracteres:$rand:1}"
		done

		echo "Contraseña generada: $password"
		echo "$password" >> $archivo
		# > significa guardar como y sobreescribe lo que habia antes
		# >> significa guardar como al final del archivo sin sobreescribir

		;;
		
		2)
		# este es solo salir
		echo "Saliendo del script..."
		exit 0
		;;

		*)
		echo "Error, opción no válida."
		;;
	esac
done
