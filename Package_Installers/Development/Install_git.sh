#!/bin/bash

clear

# Verifica se o número de argumentos é correto
if [ "$#" -ne 2 ]; then
    echo "Erro: Número incorreto de argumentos."
    exit 1
fi

# Obtém os valores dos argumentos
sleep="$1"
fileName="$2"

# Variáveis úteis
packageVersionName="git" # Nome do arquivo na instalação para procurar a versão no pacote
       packageName="Git" # Apenas o nome do pacote
        characters="───" # Arquivo você coloca os (─), a mesma quantidade de caracteres do packageName=""

# Start of commands

# Verificar se o está instalado
if ! command -v ${packageVersionName} &> /dev/null; then
    clear
    echo "╭${characters}────────────────────────────────────╮"
    echo "│ ${packageName} não está instalado! Instalando... │"
    echo "╰${characters}────────────────────────────────────╯"

    sudo apt update
    sudo apt install git

    clear
    echo "╭${characters}─────────────────────────╮"
    echo "│ ${packageName} instalado com sucesso! │"
    echo "╰${characters}─────────────────────────╯"
else
    clear
    echo "╭${characters}───────────────────────────────────────────────╮"
    echo "│ ${packageName} já está instalado! Ignorando a instalação... │"
    echo "╰${characters}───────────────────────────────────────────────╯"
fi

# End of commands

sleep ${sleep}
cd ../..
./${fileName}