#!/bin/bash
# Script para instalar python2.7

apt-get update && apt-get install -y python2.7
sudo ln -s /usr/bin/python2.7 /usr/bin/python

echo "terminado con exito"
