#!/bin/bash

jugadas_totales=0
victorias=0
derrotas=0
empates=0

echo "Bienvenido al juego de piedra, papel o tijeras!"
echo "Escribe piedra, papel o tijera o salir: "

while true; do
	read -p "Tu jugada(piedra/papel/tijera/salir): " eleccion_usuario
	eleccion_usuario=${eleccion_usuario,,}

	case $eleccion_usuario in
		piedra|papel|tijera)
		numero=$(( RANDOM % 3))
			case $numero in
				0) eleccion_maquina="piedra" ;;
				1) eleccion_maquina="papel" ;;
				2) eleccion_maquina="tijera" ;;
			esac
			echo "La máquina juega $eleccion_maquina"

			jugadas_totales=$((jugadas_totales +1))

			if [[ $eleccion_maquina == $eleccion_usuario ]]; then
				echo "Has empatado!"
				empates=$((empates +1))
			else
				case $eleccion_usuario-$eleccion_maquina in
					tijera-papel|papel-piedra|piedra-tijera)
						echo "Has ganado la ronda!"
						victorias=$((victorias +1))
						;;
					*)
						echo "Has perdido la ronda..."
						derrotas=$((derrotas +1))
						;;
				esac
			fi
			;;

			salir)
				echo "Saliendo del juego..."
				break
				;;

			*)
				echo "Error, seleccione una opción válida"
				continue
				;;
			esac
		done

echo "===Resumen de las partidas==="
echo "Partidas jugadas: $jugadas_totales"
echo "Victorias: $victorias"
echo "Empates: $empates"
echo "Derrotas: $derrotas"
				
