#!/bin/bash
parametro=$1
if [ "$parametro" == "-d" ]; then
    rm -r /home/EPNro1
    pkill -f consolidar.sh
fi

echo "Ingresa el nombre del archivo";
read input;
echo " ";

export FILENAME=$input

verdadero=1;
while [ $verdadero -eq 1 ]
    do
    echo "----- Menu -----"
    echo "Elija una opción"
    echo "1) Crear entorno."
    echo "2) Correr proceso."
    echo "3) Mostrar alumnos ordenados por número de padrón."
    echo "4) Mostrar 10 alumnos con las notas más altas."
    echo "5) Buscar alumno por número de padrón."
    echo "6) Salir."
    echo " "
    read opcion
    case $opcion in
        1) mkdir  /home/EPNro1  
            cp consolidar.sh /home/EPNro1/
            mkdir /home/EPNro1/entrada /home/EPNro1/salida /home/EPNro1/procesado
            cp *.txt  /home/EPNro1/entrada/
            echo " " ;;

        2) if [ -d /home/EPNro1 ]; then 
                cd /home/EPNro1/
                sh consolidar.sh &
                echo " "
            else 
                echo "Debes crear el entorno con la opcion 1 para correr el proceso."
            fi
            ;;

        3) if [ -d /home/EPNro1 ]; then
                echo " " 
                if [ -f /home/EPNro1/salida/$FILENAME.txt ]; then
                    echo "Padrones ordenados: "
                    sort -n /home/EPNro1/salida/$FILENAME.txt 
                else
                    echo "No existe ningun archivo en la carpeta salida procure haber usado la opción 2."
                fi 
            echo " "
            else
                echo "Debes crear el entorno con la opcion 1 para usar esta opción."
            fi
            ;;
        
        4) if [ -d /home/EPNro1 ]; then
                echo " "
                if [ -f /home/EPNro1/salida/$FILENAME.txt ]; then
                    echo "Alumnos con las 10 notas mas altas: "
                    sort -nrk 5 /home/EPNro1/salida/$FILENAME.txt | head
                else
                    echo "No existe ningun archivo en la carpeta salida procure haber usado la opción 2."
                fi
            else 
                echo "Debes crear el entorno con la opcion 1 para usar esta opción."
            fi
            echo " "
            ;;
        
        5) if [ -d /home/EPNro1 ]; then
                echo " "
                echo "Ingrese un Nro de Padrón: "
                read padron
                re='^[0-9]+$'
                echo "El alumno/a con el número de padrón es: "
                if  [[ $padron =~ $re ]]; then
                    grep -w "^$padron" /home/EPNro1/salida/$FILENAME.txt    
                else 
                    echo "No es válido el padrón ingresado."
                fi
                echo " "
            else
                echo "Debes crear el entorno con la opcion 1 y correr el proceso con la opción 2 para usar esta opción."
            fi 
            ;;
        6) verdadero=2 ;;
        esac
done