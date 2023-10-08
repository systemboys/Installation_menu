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
packageVersionName="typora" # Nome do arquivo na instalação para procurar a versão no pacote
       packageName="Typora" # Apenas o nome do pacote
        characters="──────" # Arquivo você coloca os (─), a mesma quantidade de caracteres do packageName=""

# Start of commands

# Verificar se o está instalado
if ! dpkg -l | grep -q ${packageVersionName}; then
    clear
    echo "╭${characters}────────────────────────────────────╮"
    echo "│ ${packageName} não está instalado! Instalando... │"
    echo "╰${characters}────────────────────────────────────╯"

    # or run:
    # sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA300B7755AFCFAE
    wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -

    # add Typora's repository
    sudo add-apt-repository 'deb https://typora.io/linux ./'
    sudo apt-get update

    # install typora
    sudo apt-get install typora

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