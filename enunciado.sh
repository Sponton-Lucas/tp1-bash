#!/bin/bash

#   TP
#Se necesita realizar un script que permita mediante un menú realizar distintas operaciones sobre un sistema Linux o MacOS.
#Este script utilizará un parámetro optativo y una variable de ambiente llamada FILENAME para guardar el nombre de un archivo.
#Para esto se debe crear un menúcon las siguientes opciones.
#Se debe tener la carpeta donde esté el script y los archivos subidos a un repositorio de github.
#Un repositorio por grupo y debe ser público.

#1) Crear entorno.
#Consiste en la creación de un directorio dentro del "home" que se llame "EPNro1", dentro de este directorio deberán existir dos carpetas,
# una llamada "entrada", otra "salida" y una última llamada "procesado".


#2) Correr proceso.
# Se debe correr un proceso en background que ejecute un script llamado "consolidar.sh" que se encuentra en el directorio EPNro1, este script  
# debe tomar cada archivo que ingresa en la carpeta "entrada" y adjuntar toda su información al final del archivo FILENAME.txt (donde 
# FILENAME es una variable de entorno, previamente definida) que se encuentra en la carpeta "salida". Luego de esa operación el archivo
# original se debe mover a la carpeta "procesado".


#3) Si existe el archivo FILENAME.txt en la carpeta salida, mostrar por pantalla el listado de alumnos ordenados por número de padrón.

#4) Si existe el archivo FILENAME.txt en la carpeta salida, mostrar por pantalla las 10 notas más altas del listado.

#5) Solicitar al usuario un nro de padrón, y mostrar por pantalla, los datos del mismo provenientes del archivo FILENAME.txt de la carpeta salida.

#6) Salir

#parámetro optativo -d) Si el usuario corre el script con el parámetro optativo -d se borrará todo el entorno creado en la carpeta EPNro1 y se matarán los procesos creados en background.
#Los archivos que ingresan a la carpeta entrada pueden tener cualquier nombre, pero su extensión debe ser txt

