# tpf-rec
Trabajo Práctico de Entorno de Programación 2023

Este proyecto va a generar archivos aleatorios de texto, imágenes y sonido.
En generar hacemos:
$ cd tpf-rec/Modulo_Generador/
$ docker build -t imagen-generador .
$ docker run -it -v ./outputs-gen/:/app/outputs/ imagen-generador

Tambien podemos poner la ruta del host /home/rocio/tpf-rec/Modulo_Generar/
En usuario hacemos:

$ cd tpf-rec/Modulo_Usuario/
$ docker build -t imagen-usuario .
$ docker run -it -v ./outputs-gen/:/opt/

