#!/bin/bash



echo "Ingresa el nombre de la variable";
read input;

export FILENAME=$input

#1) 
verdadero=1;
while [ $verdadero -eq 1 ]
    do
    echo "Menu"
    echo "Elija una opción"

    echo "1) Crear entorno."
    echo "2) Correr proceso."
    echo "3) Mostrar orden padrón ordenado."
    echo "4) Mostrar notas más altas."
    echo "5) Mostrar con padrón."
    echo "6) Salir."

    read opcion
    case $opcion in
        1)

            mkdir EPNro1
            cp consolidar.sh EPNro1/
            cd EPNro1

            mkdir entrada salida procesado
            cd ..
            cp alumnos.txt alumnos2.txt alumnos3.txt EPNro1/entrada/;;

        2) cd EPNro1
            sh consolidar.sh;;

        6) verdadero=2;;
            
    esac

done