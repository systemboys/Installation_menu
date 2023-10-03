#!/bin/bash

# Verifica se o número de argumentos é correto
if [ "$#" -ne 2 ]; then
    echo "Erro: Número incorreto de argumentos."
    exit 1
fi

# Obtém os valores dos argumentos
sleep="$1"
fileName="$2"

# Variáveis úteis
packageVersionName="microsoft-edge-stable" # Nome do arquivo na instalação para procurar a versão no pacote
       packageName="Microsoft Edge" # Apenas o nome do pacote
        characters="──────────────" # Arquivo você coloca os (─), a mesma quantidade de caracteres do packageName=""

# Start of commands

# Verificar se o está instalado
if ! command -v ${packageVersionName} &> /dev/null; then
    clear
    echo "╭${characters}────────────────────────────────────╮"
    echo "│ ${packageName} não está instalado! Instalando... │"
    echo "╰${characters}────────────────────────────────────╯"

    # Adicionar o Repositóro
    curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
    sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
    sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/edge stable main" > /etc/apt/sources.list.d/microsoft-edge-stable.list'

    # Atualizar a Lista de Pacotes
    sudo apt update

    # Instalar o Microsoft Edge
    sudo apt install microsoft-edge-stable

    # Resolver dependências quebradas
    if ! command -v microsoft-edge-stable &> /dev/null; then
        apt-get install -f
    fi

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