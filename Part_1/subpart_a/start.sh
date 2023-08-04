#!/bin/sh

# Exécuter le script script_a.py pour copier les fichiers de SRC vers DST
python script_a.py

# Copier les fichiers de DST vers le dossier "dst" du conteneur container_dst
cp -r "$DST/." "/dst"