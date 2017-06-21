README: Rol CI

Rol mediante el cual se aprovisiona el servidor PHP con los ajustes necesarios para levantar la aplicacion de tarea

En primera instancia, crea el directorio donde se alojara el proyecto, y fija que el grupo dueño del mismo sea www-data, para que pueda ser ejecutado por el usuario www-data quien es el que ejecuta el servicio web

Luego, para poder clonar el proyecto de github, se instala la herramienta git, con todas sus dependencias. Y se clona el proyecto, en el directorio creado previamente. Este proyecto consta de dos archivos, un index, y un archivo de variables llamados settings.php. Este archivo es modificado con la finalidad de que busque conectar al servidor redis por medio de la Direccion IP 10.127.0.30

Por ultimo, se copia un script basico, que determina si el codigo de respuesta de un llamado wget es correcto o no, determinando si la aplicacion esta arriba o no. 