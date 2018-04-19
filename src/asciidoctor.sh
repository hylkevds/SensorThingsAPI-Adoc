#!/bin/sh
#
echo "Working on 15-078..."
echo "Genering Table of Figures..."
./generate_tof.rb 15-078/OGC_15-078.adoc > 15-078/pre_0_tof.adoc
echo "Genering HTML..."
asciidoctor -a allow-uri-read 15-078/OGC_15-078.adoc -o ../dist/15-078/15-078r6.html
echo "Genering PDF..."
asciidoctor-pdf -a allow-uri-read 15-078/OGC_15-078.adoc -o ../dist/15-078/15-078r6.pdf
echo "Done."
