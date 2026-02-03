# 💻 SCRIPTS

> Esta carpeta se va a ir llenando de scripts que vayamos haciendo en clases 🫦🫦

---

## 🗺️ Mapa del contenido en [Scripts](../5.%20Scripts/)

| Archivo | Contenido | Estado |
| :--- | :--- | :---: |
| [`dado.sh`](./dado.sh) | Script para lanzar números aleatorios con límite de valores | ✅ |
| [`menu_bucle.sh`](./menu_bucle.sh) | Ejemplo de menú en bucle interactivo | ✅ |
| [`lanzamiento_moneda.sh`](./lanzamiento_moneda.sh) | Lanzamiento de dos opciones sin el `+1` | ✅ |
| [`moneda_trucada.sh`](./moneda_trucada.sh) | Lanzamiento de moneda trucado interferiendo en la probabilidad | ✅ |
| [`loteria-trucada.sh`](./loteria-trucada.sh) | Script donde trucamos una "lotería" para establecer el número ganador, el 2º puesto y en caso de "perder" con el uso de `read -p`, condicionales, variables, etc | ✅ |
| [`loteria-random.sh`](./loteria-random.sh) | Script donde pedimos a un usuario que introduzca un número con `read -p` y mediante el uso de `RANDOM` y condiconales comprueba si el número introducido es el ganador y coincide con el generado por `RANDOM` | ✅ |
| [`app-banco.sh`](./app-banco.sh) | Script donde creamos una app para un banco y declaramos funciones para usar en un menú donde el usuario puede elegir qué hacer | ✅ |
| [`encriptador-passwords.sh`]() | Script para encriptar contraseñas | ⌛ En proceso |

---

> Esto seguirá creciendo a medida que el wapote de nuestro profe nos de mas contenido 🙂‍↕️
> Scripts hechos con café y pasión 🫦

---

## 🎲 Ejemplos de scripts en Bash

### 🎲 [Dado](./dado.sh)

- `RANDOM`: Genera números aleatorios
- `% 6`: Limita valores
- `+1`: Hace que empiece el conteo en 1

### 📋 [Menú interactivo](./menu_bucle.sh)

- `while true` mantiene el menú activo todo el rato
- `case` funciona como un `switch`
- Ideal para scripts **administrativos**, el código que hemos visto es muy típico en `sysadmin`!!

### 🪙 [Lanzamiento de moneda](./lanzamiento_moneda.sh)

Usamos también `RANDOM` pero **sin** el `+1`.

### 🪙 [Moneda truncada](./moneda_trucada.sh)

Aquí vemos que podemos interferir en la probabilidad de un resultado. Indicamos en `RANDOM` que alberga un total de 100 opciones y que empiece en `+1`, y en el condicional indicamos el "porcentaje".

### 💸 [Lotería trucada](./loteria-trucada.sh)

Con el uso de condicionales establecemos valores predefinidos para sabotear el resultado, siendo en nuestro conocimiento predecible los números ganadores.

### 💶 [Lotería random](./loteria-random.sh)

Con el uso de una variable que albergue `RANDOM` aleatorizamos el premio y limitamos los valores del 1 al 20.

### 🏧 [App cajero de banco](./app-banco.sh)

Creamos funciones que alberguen cada cálculo necesario para la interactividad del menú interactivo para que el usuario pueda ver su saldo y trabajar con él.