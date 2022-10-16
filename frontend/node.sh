#!/bin/bash
if [ $(ls | wc -l) -eq 0 ];then 
    echo "Clonando repositorio"
    cd ..
    rm -rf frontend/
    git clone git@gitlab.com:paginaprincipal1/frontend.git
    cd frontend
fi

if [ ! -d "node_modules" ];then 
    echo "Instalar librerias Javscript"
    npm i
fi
npm run serve
