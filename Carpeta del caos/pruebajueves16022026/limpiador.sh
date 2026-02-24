#!/bin/bash
mkdir -p IMGS
mkdir -p DOCS
mkdir -p TXTS
mkdir -p PDFS
mkdir -p VACIOS

count_imgs=0
count_docs=0
count_txts=0
count_pdfs=0
count_vacios=0
    

for archivo in *
do
    echo "=====> $archivo"
    if [[ "$archivo" == *.docx || "$archivo" == *.odt ]]; then
        mv "$archivo" DOCS
        ((count_docs++))
    elif [[ "$archivo" == *.jpg || "$archivo" == *.png || "$archivo" == *.gif ]]; then
        mv "$archivo" IMGS
        ((count_imgs++))
    elif [[ "$archivo" == *.txt ]]; then
        mv "$archivo" TXTS
        ((count_txts++))
    elif [[ "$archivo" == *.pdf ]]; then
        mv "$archivo" PDFS
        ((count_pdfs++))
    elif [[ -d "$archivo" ]]; then
        echo "Skipping directory: $archivo"
    elif [[ "$archivo" == *.sh ]]; then
        echo "No se mueve, es importante"
    elif [[ ! -s "$archivo" ]]; then
        mv "$archivo" VACIOS
        ((count_vacios++))
    fi
    
done

echo
echo "Hay ${count_docs} documentos, hay ${count_imgs} imagenes, hay ${count_txts} archivos de texto, hay ${count_pdfs} pdfs y hay ${count_vacios} elementos vacios"
