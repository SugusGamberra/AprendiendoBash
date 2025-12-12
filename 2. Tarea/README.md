# Ejercicio Bash Scripting en Linux 1

> 🗒️ Los enunciados tambien se encuentran dentro de cada `archivo.sh`
> 👩🏻‍💻 De aquellos ejercicios pues que se me han hecho divertidos y mi cabeza ha querido hacer mas cositas tienen una breve explicación dentro :3
> 📊 Se incluiran en los apuntes mejor explicado si quereis :3

## 1. Hola Mundo

Escribe un script que muestre el texto "`Hola Mundo`" en la terminal.

### Enunciado:

● Crea un archivo llamado `hola_mundo.sh`.

● Escribe un script que imprima "`Hola Mundo`" cuando se ejecute.

● Asegúrate de darle permisos de ejecución al script.(`chmod +x nombre_script.sh`)

---

## 2. Variables Básicas

Crea un script que almacene tu nombre en una variable y lo muestre en la terminal.

● Crea un archivo llamado `mi_nombre.sh`.

● Declara una variable llamada `nombre` y asígnale tu nombre.

● Usa el comando echo para mostrar `"Mi nombre es: [nombre]"`.

● Dale `permisos de ejecución` y pruébalo.

---

## 3. Operaciones Matemáticas

Escribe un script que sume dos números y muestre el resultado.

### Enunciado:

● Crea un archivo llamado `suma.sh`.

● Declara dos variables: `num1=5` y `num2=10`.

● Calcula la suma de `num1` y `num2` y guarda el resultado en una nueva variable llamada `resultado`.

● Muestra `"La suma es: [resultado]"`.

---

## 4. Pedir Datos al Usuario

Escribe un script que pida al usuario su nombre y luego lo salude.

### Enunciado:

● Crea un archivo llamado `saludo_usuario.sh`.

● Usa el comando `read` para pedir el nombre al usuario.

● Saluda al usuario con `"Hola, [nombre]"`.


---

## 5. Control de Flujo con if

Escribe un script que determine si un número es positivo o negativo.

### Enunciado:

● Crea un archivo llamado `positivo_negativo.sh`.

● Pide al usuario que introduzca un número.

● Usa un condicional `if` para verificar si el número es mayor o igual a 0:
  - Si es **positivo**, muestra: `"El número es positivo"`
  - Si es **negativo**, muestra: `"El número es negativo"`.

---

## 6. Bucle for

Escribe un script que muestre los números del 1 al 10.

### Enunciado:

● Crea un archivo llamado `bucle_for.sh`.

● Usa un bucle `for` para imprimir cada número del **1 al 10** en una línea separada.

---

## 7. Copia de Archivos

Crea un script que copie todos los archivos **.txt** de un directorio a otro.

### Enunciado:

● Crea un archivo llamado `copiar_txt.sh`.

● Usa el comando `cp` para copiar archivos de `/home/usuario/origen` a `/home/usuario/destino`.

● Muestra un mensaje al final: `"Archivos copiados exitosamente"`.

---

## 8. Contador con while

Escribe un script que cuente de **1 a 5** y muestre cada número.

### Enunciado:

● Crea un archivo llamado `bucle_while.sh`.

● Declara una variable `contador=1`.

● Usa un bucle `while` para mostrar el valor de contador mientras sea **menor o igual a 5**.

● **Incrementa** el valor de contador en cada iteración.

---

## 9. Crear Archivos y Directorios

Escribe un script que cree 5 directorios y dentro de cada uno un archivo vacío.

### Enunciado:

● Crea un archivo llamado `crear_estructura.sh`.

● Usa un bucle `for` para crear directorios `dir1`, `dir2`, ..., `dir5`.

● Dentro de cada directorio, crea un archivo `archivo.txt`.

---

## 10. Mostrar Información del Sistema

Escribe un script que muestre:

● El **nombre del sistema operativo**.

● El **espacio disponible en disco**.

● El **uso de memoria**.

### Enunciado:

● Crea un archivo llamado `info_sistema.sh`.

● Usa los comandos `uname`, `df -h`, y `free -h`.

● **Muestra los resultados con mensajes descriptivos**.

---

## 11. Copia de Seguridad

Escribe un script que realice una copia de seguridad de una carpeta.

### Enunciado:

● Crea un archivo llamado `backup.sh`.

● Define una **variable origen** con el directorio que quieres copiar.

● Define una **variable destino** con la carpeta donde guardarás la copia.

● Usa el comando `cp -r` para copiar el contenido del directorio.

---

## 12. Generar Tablas de Multiplicar

Escribe un script que genere la **tabla de multiplicar** de un número dado.

### Enunciado:

● Crea un archivo llamado `tabla.sh`

● Pide al usuario un número.

● Usa un bucle `for` para mostrar la tabla de multiplicar desde *1 hasta 10*.

---

## 13. Gestión de Usuarios

Escribe un script que cree un usuario en el sistema.

### Enunciado:

● Crea un archivo llamado `crear_usuario.sh`.

● Pide al usuario un **nombre** para el nuevo usuario.

● Usa el comando `sudo useradd` para crear el usuario.

● Muestra un mensaje: `"Usuario [nombre] creado exitosamente"`

---

## 14. Monitorizar Procesos

Escribe un script que muestre los *procesos que más memoria están consumiendo*.

### Enunciado:

● Crea un archivo llamado `procesos.sh`.

● Usa el comando `ps aux --sort=-%mem | head -n 10` para listar los procesos.

● Muestra la salida con un encabezado: `"Procesos más pesados"`.

---

## 15. Cálculo de Factorial

Escribe un script que calcule el **factorial** de un número.

### Enunciado:

● Crea un archivo llamado `factorial.sh`.

● Pide al usuario un número.

● Usa un bucle `while` o `for` para calcular el factorial del número. 

● Muestra el `resultado`.