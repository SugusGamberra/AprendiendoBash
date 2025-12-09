# 🐧 Inicio

> 🌈Bienvenide a la primera clase de bash!! Veremos todo lo que hemos dado en el resto de lenguajes de forma muy rápida y sencilla!✨
> 💕Espero que lo pases bien 😘

---

## 📚 Qué es y para qué sirve?

**Bash** es el lenguaje de _scripting_ de la **terminal de Linux** (Shell). No es un lenguaje de programación al uso como **JAVA** o **Python**, sino que está orientado a la **automatización de tareas**.

- Te permite crear **flujos de trabajo** que hacen tareas repetitivas automáticamente ahorrándote un montón de tiempo!
- Es una _skill_ muy solicitada en Ciberseguridad para temas de **scripting**, junto a **Python** :P

---

## ⚙️ SETUP: Tu Entorno de Trabajo (WSL en Windows)

Para poder usar **Bash** en Windows se usa **WSL** (Windows Subsystem for Linux) que básicamente es un entorno de Linux dentro de Windows.

### 💻 Setup en CMD/PowerShell

Empecemos por abrir tu CMD o Powershell, hay 2 formas:
1. Pulsando las teclas Win+R, en el popup que te salga escribes `cmd` y aceptas, ya se te abre ahí to wapo to flama.
2. En Inicio escribe cmd o Símbolo del sistema, ese con el iconito de una ventanita negra con letritas blancas, le picas y empieza el tecletecle ;P

Antes de instalarlo veo importante comprobar si lo tienes, tipo si eres un frikazo como yo y has hecho cositas y de repente no te acuerdas o no estás seguro... Escribe lo siguiente en tu CMD

```bash
wsl --list
```

Si al pulsar enter te sale "Ubuntu" o similar, está instalado. En caso contrario te saldrá algo como "subsistema de windows para lunux no está instalado" o "habilita el subsistema para linux de windows". Ahora sí, a tirarnos de cabeza! Aquí están los pasos de instalación:

1. Ejecuta el comando para instalar wsl y te viene con la distribución de linux por defecto, Ubuntu!
```bash
wsl --install
```
2. **Reinicia** el sistema.
3. **Configuración inicial** (Ubuntu): Al abrir tu CMD, verás que arriba de la ventana a la derecha de la pestaña donde estás aparece un `+` y un desplegable `🔽`, clic en el desplegable, debe aparecer Ubuntu (si no, no entres en pánico, que ahora te explico). Al abrir ubuntu te pedirá tu nombre de usuario y una contraseña, tranqui si al escribir la contraseña literal no ves nada, ni los * que se suelen poner, está bien es por seguridad. Repite contraseña y fino!!

Si por lo que sea **NO TE VIENE EL UBUNTU** (sometimes shit happens) es tan sencillo como hacer:

```bash
wsl --install -d Ubuntu
```

Y ya ahí se instala, cierras el cmd, lo vuelves a abrir y en la pestañita verás Ubuntu, ya ahí haces la configuración y listooo!!

#### 📂 Navegación básica por la cmd en Ubuntu

Si quieres abrir un directorio concreto tan solo busca la carpeta donde quieres trabajar, ponte tú, en tus Documentos en windows, lo haces así: 

```bash
cd /mtn/c/Users/tuUsuario/Documents
```

- **mtn**: Tus discos de windows están aquí, por eso lo poenoms así!
- **cd**: Change directory basicamente xd

Trucos útiles de navegación:

- **pwd**: Ver dónde estás ahora
- **ls**: Ver qué hay en la carpeta en la que estás
- **mkdir nombreCarpeta**: Crear una nueva carpeta
- **nano nombreArchivo.extension**: Crear un archivo
- `Tab`: Autocompletar rutas mientras las andas escribiendo :P

Con esto te recomiendo, y así practicas, crear una carpeta para la asignatura de la siguiente forma (enter por cada línea, por si acaso):

```bash
cd /mnt/c/Users/tuNombre/Documents
# Puede ser desktop, documents, donde tu quieras!!
mkdir clasesBash
cd clasesBash
```

### 🖥️ SETUP: Visual Studio Code (VSC)

Este es tu IDE de confianza, si te suena muy a marronazo lo anterior quédate con esto!!!

Te recomiendo organización, créate una carpetita donde vayas a webear con esta asignatura, tipo `clasesBash` y en VSC le das a `File` - `Open folder...` - Seleccionas la carpeta que acabas de crear aka `clasesBash` y listo.

Abre la `Terminal` - `New terminal` y escribe lo siguiente para instalar **wsl** que aquí también se requiere y es importante:

```bash
wsl --install
```

#### 🪟 Extensiones wapas pal Bash

Para que **VSC** te eche una manita con el código instala estas extensiones:

- `bash debug`: Para depurar tus _scripts_ y encontrar fallos.
- `bash IDE`: Te da funcionalidades de IDE como autocompletado y formateo.
- `sheller`: Ayuda extra con la sintaxis de _shell_.
- `Code Runner`: Permite ejecutar tu código directamente con un atajo.
- `WSL`: Esencial!! Te permite trabajar con los archivos de tu entorno WSL/Ubuntu desde VSC!!!

Cuando crees un archivo con extensión .sh asegúrate que VSC reconozca el lenguaje!! Puedes seleccionarlo como `bash` o `shell script`!!

---

## 🗒️ Fundamentos de programación con Bash

Ahora vamos a lo que hemos hecho en clase pero explicado!! Para ver el código pulsa en este enlace para ir a la carpeta con cada cosa por separado que se ha hecho: 💻[INICIACION](../0.%20Iniciación/)

### 👋 Hola Mundo

Para cualquier programa que hagas la **primera línea** debe ser obligatoriamente el **shebang**!! Esto le indica al SO que este _script_ debe ejecutarse usando el intérprete de **bash**!!

```bash
#!/bin/bash
```

Una vez tienes el archivo hay dos formas de ejecutarlo! Primero le das permisos y luego ejecutas (enter por cada línea meloncinnnn):
```bash
sudo chmod +x archivo.sh
./archivo.sh
```

O ejecución directa con bash usando el siguiente comando:
```bash
bash archivo.sh
```

### ⌨️ Variables y entrada de usuario

- **Variables**: Almacenas valores (como una cadena de texto o numero) y luego referenciar ese valor usando el signo `$`.
    - Estructura de una variable:
        - **Nombre**: Cómo la identificas (str_usuario, numero, según prefieras)
        - **Tipos de datos que almacenan**: String, ints, booleans, arrays, listas... Aunque con esto hay truco, ya se verá más adelante ;3
        - **Valor**: Lo que guarda la variable.
- **Entrada del usuario `read`**: Puedes usar el comando `read` para que el usuario introduzca un valor en la consola y almacenarlo directamente en una variable!

### 📎 Condicionales (`if/else`)

Con ellos tomamos decisiones en el _script_ en función de si se cumple una condición o no!

- **Estructura**: Usamos `if`, `then`, `else`(opcional) y cerramos con `fi`.
- **Condiciones**: Para comparar números se usan operadores como `-ge` (_greater or equal_), `-gt` (greather than...), etc.
- **Else if `elif`**: Si tienes varias condiciones puedes usar `elif` (como en python, es el else if de otros lenguajes) para anidar comprobaciones.

### 🔁 Bucles

Los bucles te ayudan a ejecutar un bloque un número determinado de veces:
- **Bucle `for`**: Repite una acción un número de veces conocido o **POR** cada elemento de una lista (rango de números x ejemplo)
- **Bucle `while`**: Repite un bloque de código **MIENTRAS** una condición sea **TRUE**, x ejemplo mientras un contador sea menor o igual (`-le`) a 10.

### 🧮 Operaciones aritméticas

Para hacer **calculos**, como hemos visto en otros lenguajes, los básicos son `+`,`-`,`*` y `/`.

Para recoger varias variables dentro de un paréntesis usamos esta fórmula: `$((variable1 + variabl2))`. Ya dentro de estos paréntesis usas los operadores que mejor te vengan!!

---

> ✨ Y yastaria por hoy!! 
> 🩵 Es un tema bastante chulo y sencillo, espero que te flipe tanto como a mi jijijij