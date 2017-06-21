#!/bin/bash

# WGET a la url 10.127.0.10 para determinar si da status 200
wget -q --spider 10.127.0.10

# Si el comando retorna estatus 0, la pagina esta arriba
if [ "$?" = 0 ]; then 
echo "Pagina Arriba"

# Si el comando retorna estatus diferente de 0, la pagina esta caida
else  
echo "Pagina Caida"
fi

