#!/bin/bash

saldo=2000

mostrar_saldo() {
	echo "Tu saldo actual es de $saldo €"
}

depositar() {
	read -p "Ingrese la cantidad a depositar: " cantidad

	if [[ ! $cantidad =~ ^[0-9]+$ ]] || (( cantidad <=  0 )); then
		echo "Error: Introduzca un numero valido"
	else
		saldo=$(( saldo + cantidad ))
		echo "Has depositado $cantidad €. Tu saldo ahora es de $saldo"
	fi
}

retirar() {

	echo "Tu saldo actual es de $saldo €"
	read -p "Ingrese la cantidad de dinero a retirar: " cantidad

	if [[ ! $cantidad =~ ^[0-9]+$ ]] || (( cantidad <= 0 )); then
		echo "Error: Introduzca un numero valido"
	elif (( cantidad > saldo )); then
		echo "Fondos insuficientes"
	else
		saldo=$(( saldo - cantidad ))
		echo "Has retirado $cantidad €. Tu saldo actual es de $saldo"
	fi	
}

# MENU

menu () {
	while true; do
		echo "Bienvenido al cajero robomoney3000"
		echo "1. Consultar saldo"
		echo "2. Hacer un deposito"
		echo "3. Hacer un retiro"
		echo "4. Salir"
		read -p "Seleccione una opcion (1-4): " opcion

			case $opcion in
				1) clear
				 mostrar_saldo 
				 ;;
				2) clear
				 depositar
				  ;;
				3) clear
				 retirar
				  ;;
				4) clear
				 echo "Adios, gracias por darnos tu dinero jeje"
				  sleep 2
				   exit 0
				    ;;
				*) clear
				 echo "Opción no válida, seleccione del 1 al 4 por favor"
				  continue
				   ;;
			esac
	done
	
}

menu
