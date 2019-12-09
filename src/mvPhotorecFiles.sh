#!/bin/bash

# Script para mover arquivos recuperados pelo Photorec

echo "Informe onde os arquivos irão:"
read outputDir

echo "Informe o tipo de arquivo:"
read fileType

echo "Informe o número de diretórios"
read numDir

test -d $outputDir || mkdir $outputDir

for i in $(seq 1 $numDir)
do
	mv recup_dir.$i/*.$fileType $outputDir/
done
