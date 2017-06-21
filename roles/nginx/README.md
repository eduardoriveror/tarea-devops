README: Rol NGINX

Rol para instalar nginx en el servidor de web, con la finalidad de usarlo como proxy reverso de toda la arquitectura de la aplicacion PHP

Arquitectura ejemplo:

[NGINX:80] ---- [APACHE:8080 | PHP | FPM:Unix-Socket] ---- [REDIS:6379]

En primer lugar instala el servidor web NGINX, luego borra el archivo virtualhost por defecto, para copiar un nuevo template, que se completa con las variables declaradas en el archivo principal de variables. Este template se copia en el directorio sites-enabled para publicar el sitio.