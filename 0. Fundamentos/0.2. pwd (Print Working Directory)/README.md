# 🛫 `pwd` (Print Working Directory)

Un concepto arraigado en _Linux_ es que todo se trata como un archivo. Estos archivos están organizados en una estructura jerárquica conocida como **filesystem**. Entender esta estructura es la **clave** para navegar x tu sistema de forma efectiva!

> 💡 **Para que lo visualices y lo entiendas**: todo empieza desde el _root directory_ que se representa con una `/`, y se ramifica a partir de aquí en subdirectorios que contienen archivos y mas subdirectorios! 

```bash
/
|-- bin
|   |-- file1
|   |-- file2
|-- etc
|   |-- file3
|   `-- directory1
|       |-- file4
|       `-- file5
|-- home
|-- var
```

La localización de **cualquier** archivo o directorio se describe por su **ruta**, que esto es una secuencia de directorios que te llevan desde el _punto de inicio_ al _punto específico de destino_. Por ejemplo, tienes un archivo llamado `pito` en tu directorio de `/home`, y a su vez esta dentro de una carpeta llamada `matematicas` (golosonnn), pues la ruta completa seria `/home/matemáticas/pito.png`

Para navegar a esta dirección en Linux se usa `pwd`. Vamos a usarlo para ver en donde te encuentras ahora mismo! Escribe en tu terminal `pwd` y dale a la tecla `enter`! Veras que te muestra la ruta completa de donde estas ahora ;P

> 🩵 De momento todo muy sencillito, y así seguiremos un buen ratote, pero es importante manejarse con lo básico antes de darle caña a webadas raras!