#!/bin/bash

for i in $(ls entrada);
do 
    cat entrada/$i >> salida/$FILENAME.txt;
    mv entrada/$i procesado/;
done