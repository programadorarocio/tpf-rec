#!/bin/bash

echo "Bienvenido al sistema de gestión."

# Menú principal
while true; do
    echo "Seleccione una opción:"
    echo "1. Procesar archivos"
    echo "2. Monitoreo del sistema"
    echo "3. Analizador de textos"
    echo "4. Salir"

    read -rp "Opción: " option

    case $option in
        1)
            echo "Seleccionó Procesar archivos."
            echo "Qué acción desea realizar?"
            echo "1. Descarga"
            echo "2. Clasificación"
            echo "3. Archivo comprimido"
            read -rp "Opción: " action

            case $action in
                1)
                   /home/rocio/tpf-rec/Modulo_Generador/generador.sh
                    ;;
                2)
                    ./clasificador_archivos.sh
                    ;;
                3)
                    ./compresor.sh
                    ;;
                *)
                    echo "Opción no válida."
                    ;;
            esac
            ;;
        2)
            echo "Seleccionó Monitoreo del sistema."
            ./monitor.sh
            ;;
        3)
            echo "Seleccionó Analizador de textos."
            ./analizador_textos.sh
            ;;
        4)
            echo "Saliendo del programa."
            exit 0
            ;;
        *)
            echo "Opción no válida. Por favor, seleccione una opción válida."
            ;;
    esac
done
