#!/bin/bash
if [ $(ls | wc -l) -eq 0 ];then 
    echo "Clonando repositorio"
    cd ..
    rm -rf backen/
    git clone https://github.com/hcanulMpal/backend.git
    cd backend
fi

chmod +x app.py

if [ -z $(python3 -c 'import Flask') ];then
    echo "Actualizando pip-python..."
    pip3 install --upgrade pip
    echo "Desplegando librerias..."
    pip3 install -r requirements.txt
else
    echo "Librerias Flask"
fi

python3 app.py
