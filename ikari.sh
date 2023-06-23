#!/bin/bash

# Archivos de configuracion para Debian con bspwm

#Crear los directorios de usuario
xdg-user-dirs-update

# Descargar archvios de mi repo en una carpeta generica

mkdir mio
cd mio
git clone https://github.com/ikarisnavy/miconfig.git

cd miconfig

cp -r .config/ /home/ikari

#Restaurar el bashrc

cd ~/.config
cp .bashrc /home/ikari

# Dar perimisos a los scripts

chmod +x ~/.config/bspwm/bspwmrc
chmod +x ~/.config/sxhkd/sxhkdrc
