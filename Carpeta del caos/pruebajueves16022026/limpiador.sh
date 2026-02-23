#!/bin/bash
mkdir -p IMGS
mkdir -p DOCS
mkdir -p TXTS
mkdir -p PDFS
mkdir -p VACIOS

for archivo in *
do
    echo "=====> $archivo"
    if [[  "$archivo" == *.doc ||  "$archivo" == *.odt ]]; then
        mv "$archivo" DOCS
    elif [[ "$archivo" == *.jpg || "$archivo" == *.bmp || "$archivo" == *.gif || "$archivo" == *.png ]]; then
        mv "$archivo" IMGS
    elif [[ "$archivo" == *.txt ]]; then
        mv "$archivo" TXTS
    elif [[ "$archivo" == *.pdf ]]; then
        mv "$archivo" PDFS
    elif [[ -d "$archivo" ]]; then
        echo "Skipping directory: $archivo"
    elif [[  "$archivo" == *.sh ]]; then
        echo "No se mueve, es importante"
    else
        mv "$archivo" VACIOS
    fi

done
