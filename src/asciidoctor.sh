#!/bin/sh
#
SCRIPT=$(readlink -f "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
echo $SCRIPTPATH
cd $SCRIPTPATH
echo "Working on 15-078..."
echo "Genering Table of Figures..."
./generate_tof.rb 15-078/OGC_15-078.adoc > 15-078/pre_0_tof.adoc
echo "Genering HTML..."
asciidoctor -a allow-uri-read -o ../dist/15-078/15-078.html 15-078/OGC_15-078.adoc
echo "Genering PDF..."
asciidoctor-pdf -a allow-uri-read -o ../dist/15-078/15-078.pdf 15-078/OGC_15-078.adoc
echo "Done."
