#!/bin/bash

# Genero los circuitos del Informe si me ingresan la opción indicada
if [ "$1" == "-c" ] ; then
	 ./Circuitos/compilarCircuitos.sh
fi

nombre="TP2"
# Compilo dos veces para que aparezca el índice
pdflatex $nombre.tex 
pdflatex $nombre.tex

# Borro los archivos auxiliares
rm $nombre.toc $nombre.aux $nombre.log $nombre.out 
