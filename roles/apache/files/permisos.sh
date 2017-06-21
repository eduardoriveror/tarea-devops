#!/bin/bash
# Script para otorgar permisos a usuario www-data sobre directorios de usuario ubuntu

#gpasswd -a www-data ubuntu
chown -R :www-data /home/ubuntu/frontend
chmod -R g+x /home/ubuntu/frontend