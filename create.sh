#! /bin/bash

#BORRAR CARPETA
rm -rf webapp

#CREAR ESTRUCTURA
mkdir webapp
cd webapp
mkdir css
mkdir js
mkdir docs
cd docs
mkdir text
mkdir python
cd ..
mkdir img

#CREAR ARCHIVOS
for file in index.html style.css app.js main.py
do
    touch ./"${file}"
done

#DESCARGAR IMAGEN
curl -o meme.jpg "https://pm1.aminoapps.com/7021/417429318f6b29b6bc737fb95ba1ddafc9ba2decr1-720-642v2_hq.jpg"

#CREAR ARCHIVOS TXT DEPENDIENDO DE LA CANTIDAD QUE INTRODUZCA
read -p "Introduce la cantidad de archivos a crear:" numfiles
for x in $( seq 1 $numfiles )
do
    echo "Archivo ${x}" > "file${x}.txt"
done

#MOVER LOS ARCHIVOS
mv style.css css
mv file*.txt docs
mv main.py docs
mv app.js js
cd docs
mv file*.txt text
mv main.py python
cd ..
mv meme.jpg img