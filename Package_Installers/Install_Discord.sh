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
packageVersionName="discord" # Nome do arquivo na instalação para procurar a versão no pacote
       packageName="Discord" # Apenas o nome do pacote
        characters="───────" # Arquivo você coloca os (─), a mesma quantidade de caracteres do packageName=""

# Start of commands

# Verificar se o está instalado
if ! command -v ${packageVersionName} &> /dev/null; then
    clear
    echo "╭${characters}────────────────────────────────────╮"
    echo "│ ${packageName} não está instalado! Instalando... │"
    echo "╰${characters}────────────────────────────────────╯"

    sudo wget -O /usr/share/keyrings/discord-archive-keyring.gpg https://discord.com/api/download/keyring
    echo 'deb [signed-by=/usr/share/keyrings/discord-archive-keyring.gpg] https://packages.discord.com/debian/ stable main' | sudo tee /etc/apt/sources.list.d/discord.list
    sudo apt update
    sudo apt install discord

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
cd ..
./${fileName}