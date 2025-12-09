# 😶‍🌫️ `cd` (Change Directory)

Para moverte por el **filesystem** de Linux usarás **rutas** para llegar a tu destino. La herramienta principal es `cd`!! Entender como se usa es **fundamental** para trabajar en la terminal! Para ello debemos entender que existen 2 tipos de rutas:

- **Ruta absoluta**: Es la ruta que empieza desde el root directory `/`, el nivel mas alto en el _filesystem_! Cualquier ruta que comience con eso es una ruta absoluta.
- **Ruta relativa**: Esta es relativa a donde tú estás ahora mismo en tu filesystem. Si estas metido en `/home/matemáticas` y quieres acceder al subdirectorio de `geografía`, no necesitas darle la ruta completa, tan solo escribe `geografía/` ;P

Vamos a usar el comando cd para que cambies de directorio! El concepto este es universal, da igual si es en windows `cd command cmd` o en Linux! Escribe en tu terminal:

```bash
#sustituye user por tu usuario y Pictures por una carpeta que conozcas que se situa ahí en home!!
cd /home/user/Pictures
```

> 💡 Si esa ruta existe, te lleva a ella, en caso contrario, te dira que no existe y ya! Si te sabes la ruta de algún lado al que quieras moverte pues ya sabes, ponlo ahi ;D 

Si ya estas dentro de dicha ruta y quieres moverte a una ruta relativa tan solo escribe:

```bash
# Sustituye carpeta por el nombre de una carpeta que esté dentro de esa carpeta!
cd carpeta
```

Como navegar por estas rutas puede ser (y es) un _coñazo_, existen **shortcuts** para moverte rapidin:

- `.`: El directorio en el que estas ahora
- `..`: Te mueve un nivel arribita del directorio que contiene tu directorio actual
- `~`: Te lleva al home
- `-`: Te lleva al directorio que estabas antes!

> 🫦 **Tip**: Si quieres, crea de forma manual una carpeta que se llame `carpeta` en `/home` y dentro de ella crea una carpeta que se llame `hola` para probar todos estos comandos y practicar!