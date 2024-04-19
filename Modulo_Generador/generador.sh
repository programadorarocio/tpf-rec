#!/bin/bash


# Función para generar un archivo de texto aleatorio
generate_text() {
    base64 /dev/urandom | head -c 500 > "$1"
}

# Función para generar un archivo de sonido aleatorio
generate_sound() {
    ffmpeg -f lavfi -i "anoisesrc=a=0.1:c=white:duration=5" "$1"
}

# Función para generar una imagen aleatoria
generate_image() {
    convert -size 100x100 xc: +noise Random "$1"
}

# Función para calcular el hash y renombrar el archivo
calculate_hash_and_rename() {
    hash=$(sha256sum "$1" | cut -d ' ' -f1)
    mv "$1" "app/outputs/$hash"
}


# Crear carpeta outputs si no existe
mkdir -p "app/outputs/"

# Generar archivo aleatorio
case $((RANDOM % 3)) in
    0) generate_text "temp.txt" ;;
    1) generate_sound "temp.wav" ;;
    2) generate_image "temp.png" ;;
esac

# Calcular hash y renombrar archivo
calculate_hash_and_rename "temp."*


echo "Archivo generado"
