# 🐧 Programación en Bash

## 🔁 Alias (atajos de comandos)

Antes de ver los ejemplos y desglosarlos voy a enseñar un **alias** (atajos de comandos) que, si tienes una distro de Linux instalada (dual boot, en tu pc o en vm) para actualizar viene dpm:

1. Editar `bashrc`:

```bash
nano ~/.bashrc
```

2. Añadir al final del archivo lo siguiente:

```bash
alias update='sudo apt update && sudo apt upgrade -y'
```

3. Ctrl + X, Y o S (de Yes o Si), Enter y vuelves a la terminal..
4. Recargas poniendo:

```bash
source ~/.bashrc
```

5. Y ahora puedes escribir update y enter y te lo hace solo. Yo le puse **update** pero tu puedes ponerle **actualizar**, **pene**, lo que te antoje 🫦

---

## 😏 Comandos útiles

### 📁 Copiar archivos

#### 🙂‍↕️ Copiar un archivo concreto

```bash
cp archivo.txt /ruta/destino
```

- **cp**: copy
- Si el archivo ya existe en destino, se **sobrescribe**.
- La ruta puede ser absoluta (`/home/usuario/`) o relativa (`../destino`).

#### 💻 Copiar por extensión

```bash
cp *.txt destino/
```

- `*` es un comodín: significa **“todo”**.
- Copia **todos los .txt** del directorio actual (o de la extensión del archivo que tú pongas).
- Muy usado en scripts para **copias masivas**.

> 💡 Consejo: usa -v para ver qué se copia:

```bash
cp -v *.png destino/
```

---

### 📂 Copiar carpetas completas

```bash
cp -r carpetaOrigen carpetaDestino
```

- `-r`: recursive (entra en subcarpetas).
- Sin `-r`, Linux no copia carpetas.

Opciones útiles:
- `-r` → carpetas
- `-v` → ver proceso
- `-i` → preguntar antes de sobrescribir

Ejemplo seguro:

```bash
cp -rvi proyecto/ backup/
```

---

### 📄 Crear archivos vacíos

```bash
touch archivo.txt
```

Se usa para:

- Preparar scripts (`script.sh`).
- Crear logs.
- Automatización.

También **actualiza la fecha de un archivo si ya existe**.

---

### 🖥️ Información del sistema

#### ♻️ Espacio en disco

```bash
df -h
```

- `df` = disk free
- `-h` = human readable (GB, MB) (si no se pone esto te suelta un chorro de numeros que ni el tato entiende)

#### ☑️ Memoria RAM

```bash
free -h
```

Muy útil para **servidores**.

#### 💍Sistema operativo y kernel

```bash
uname -a
```

Te dice Linux, versión de kernel, arquitectura, etc.

---

### 👤 Gestión de usuarios (requiere sudo)

#### 🪪 Crear usuario

```bash
sudo useradd -m nombre
```

- `-m` crea `/home/nombre`
- Sin `-m`, el usuario no tiene carpeta personal.

#### 🚮 Borrar usuario

```bash
sudo userdel -r nombre
```

- `-r` borra home y archivos.
- Evita dejar basura en el sistema.

#### ✅ Verificar usuario

```bash
id nombre
```

- Muestra UID, GID y grupos.
- Si no existe, da error.

---

### 🔐 Lógica y seguridad en scripts

#### 🔎 Comprobar si existe una carpeta

```bash
if [ -d "carpeta" ]; then
  echo "Existe"
fi
```

#### 🔍 Comprobar si existe un archivo

```bash
if [ -f "archivo.txt" ]; then
  echo "Existe"
fi
```

- `-d` → directory
- `-f` → file

---

### ☠️ Silenciar errores

```bash
comando 2>/dev/null
```

- `2` = canal de errores (stderr)
- `/dev/null` = agujero negro, mete ahí todos los errores y jau

Ejemplo:

```bash
ls carpeta_que_no_existe 2>/dev/null
```

Muy usado en **scripts automáticos.**

---

### ⚠️ Control de overflow

Evita valores peligrosos:

```bash
if [ "$num" -gt 20 ]; then
  echo "Valor demasiado alto"
  exit 1
fi
```

Protege el sistema y el script.

---

### ⚙️ Procesos del sistema

#### 👁️ Ver procesos

```bash
ps aux
```

- `a` → todos los usuarios
- `u` → formato usuario
- `x` → procesos sin terminal

#### 🥂 Ordenar por consumo de RAM

```bash
ps aux --sort=-%mem | head -n 10
```

Muestra los 10 procesos que más memoria usan.

---

### 📜 Ver contenido de archivos

```bash
cat script.sh
```

- Muestra el código directamente.
- Para archivos grandes: `less archivo.txt`

---

## 🔐 [Ciberseguridad básica](./ciber_analisis.sh)

La ciberseguridad no es solo **hackear**, es entender **cómo funciona la red** para poder detectar **vulnerabilidades**, **abusos** o **ataques**.

El script creado es un menú interactivo para que un usuario obtenga info de red sin saber de comandos! Es muy útil para `auditorías básicas`, `administración de sistemas` y como `introducción a la ciberseguridad`.

### ⚰️ Ping y denegación de servicio

```bash
ping google.com
```

Comprueba conectividad a una IP: `ping 8.8.8.8`

`Ping` envía pequeños paquetes `ICMP` a un destino, y con esto se comprueba si un equipo **responde** y **cuánto tarda** en hacerlo.

> **Uso legítimo**: Ver si hay conexión a internet o ver si 2 equipos de una red se ven entre sí.
> **Uso malicioso**: Si se envían **muchísimos `pings` de forma continua** puede saturar el equipo destino, esto es una **denegación de servicio básica** (`DoS`). Por eso muchos servers bloquean **ICMP**!

### 🛜 Tabla ARP y la red local

```bash
arp -a
```

ARP traduce una `IP` a una dirección `MAC` (que esto era el identificador único que tiene tu tarjeta de red). Funciona solo dentro de la red local.

En **ciberseguridad** se usa para ver qué dispositivos hay conectados, detectar dispositivos sospechosos y como base de ataques como **ARP spoofing**.

### 📃 IP del equipo

```bash
ip addr
```

Alternativa antigua:

```bash
ifconfig
```

(requiere `sudo apt install net-tools`).

Con esto mostramos las interfaces de red, la IP privada y la dirección MAC.

### 🌐 DNS

```bash
nslookup iberia.com
```

El sistema pregunta al servidor DNS, obtiene la IP y se conecta a ella.

En **ciberseguridad** es clave porque el DNS puede ser falsificado y muchos ataques pasan por aquí.

### 🎭 Conexiones activas

```bash
ss -tuln
```

Muestra puertos abiertos y servicios escuchando. Muy importante para ver servicios expuestos y detectar vulnerabilidades!

### 📍 Tabla de rutas

```bash
ip route
```

Indica por dónde salen los paquetes y qué puerta de enlace se usa, clave para diagnóstico de problemas de red.

---

> Bash no es solo comandos, es **programación real orientada a sistemas**. Etos scripts se usan tal cual en servers y ciberseguridad.
> Se irá llenando de más explicaciones y scripts a medida que avancemos :3