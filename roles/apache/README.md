README: Rol Apache

Rol para instalar apache en el servidor de aplicacion PHP, con la finalidad de presentar el proyecto y usar como proxy reverso el servidor nginx

Arquitectura ejemplo:

[NGINX:80] ---- [APACHE:8080 | PHP | FPM:Unix-Socket] ---- [REDIS:6379]

En primera instancia, este rol instala el servidor web Apache con sus dependencias, ademas instala redis-cli, herramienta necesaria para poder conectarse remotamente a un servidor redis

Luego, le da permisos al usuario www-data para poder accesar al directorio donde se descargo previamente el repositorio

Ademas, borra el archivo virtualhost por defecto, para copiar un template nuevo completado con las variables definidas en el archivo principal de variables. y lo copia en el directorio sites-enabled para publicarlo

Se modifica tambien el puerto por defecto de operacion de apache, para que funcione con el puerto 8080, y asi no generar conflictos con el servidor de proxy reverso



