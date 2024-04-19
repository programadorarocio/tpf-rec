#!/bin/bash

# Crear carpetas para clasificar los archivos si no existen
mkdir -p app/outputs/img
mkdir -p app/outputs/snd
mkdir -p app/outputs/txt

# Inicializar contadores para cada tipo de archivo
img_count=1
snd_count=1
txt_count=1

# Función para mover y renombrar archivo
move_and_rename() {
    type=$(file -b --mime-type "$1")
    case "$type" in
        *"image/png") mv "$1" "app/outputs/img/imagen$img_count.png"; ((img_count++)) ;;
        *"audio/"*) mv "$1" "app/outputs/snd/sonido$snd_count.wav"; ((snd_count++)) ;;
        *"text/plain") mv "$1" "app/outputs/txt/texto$txt_count.txt"; ((txt_count++)) ;;
     
    esac
}

# Iterar sobre los archivos en la carpeta de entrada
for file in "/home/rocio/tpf-rec/Modulo_Generador/app/outputs/"*; do
    move_and_rename "$file"

done

# Imprimir si los archivos se clasificaron correctamente o no
if [ $? -eq 0 ]; then
    echo "Los archivos se clasificaron correctamente."
else
    echo "Hubo un error al clasificar los archivos."
fi

