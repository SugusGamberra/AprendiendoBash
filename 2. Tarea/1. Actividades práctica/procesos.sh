#!/bin/bash
#14. Monitorizar Procesos
#Escribe un script que muestre los procesos que más memoria están consumiendo.
#Enunciado:
#● Crea un archivo llamado procesos.sh.
#● Usa el comando ps aux --sort=-%mem | head -n 10 para listar los procesos.
#● Muestra la salida con un encabezado: "Procesos más pesados".

procesos= ps aux --sort=-%mem | head -n 10
echo "Procesos mas pesados: $procesos"
