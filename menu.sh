#!/bin/bash



echo "Ingresa el nombre del archivo";
read input;
parametro=$2
export FILENAME=$input
if [ $parametro == "-d"]; then
    rm -r /home/EPNro1
fi

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

            mkdir  /home/EPNro1  
            cp consolidar.sh /home/EPNro1/
            mkdir /home/EPNro1/entrada /home/EPNro1/salida /home/EPNro1/procesado

            cp *.txt  /home/EPNro1/entrada/;;

        2) cd /home/EPNro1/
            sh consolidar.sh;;

        3) if [ -f /home/EPNro1/salida/$FILENAME.txt ]; then
            sort -n /home/EPNro1/salida/$FILENAME.txt 
            else
            echo "No existe ningun archivo en la carpeta 'salida'"
            fi 
            ;;
        
        4) if [ -f /home/EPNro1/salida/$FILENAME.txt ]; then
            sort -nrk 5 /home/EPNro1/salida/$FILENAME.txt | head
            else
            echo "No existe ningun archivo en la carpeta 'salida'"
            fi
            ;;
        
        5)echo "Ingrese un Nro de Padrón: "
            read padron
            re='^[0-9]+$'
            if  [[ $padron =~ $re ]]; then
                grep -w "^$padron" /home/EPNro1/salida/$FILENAME.txt    
            else 
            echo "No es válido el padrón ingresado."
            fi
            ;;

        
        6) verdadero=2;;
            
    esac

done