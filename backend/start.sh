#!/bin/bash

if [ $(ls | wc -l) -eq 0 ];then 
    echo "Clonando repositorio"
    cd ..
    rm -rf api-rest/
    git clone git@gitlab.com:paginaprincipal1/backend.git
    cd api-rest
fi

chmod +x app.py

if [ -z $(python -c 'import Flask') ];then
    echo "Desplegando librerias..."
    pip install -r requirements.txt
else
    echo "Librerias Flask"
fi

python app.py
