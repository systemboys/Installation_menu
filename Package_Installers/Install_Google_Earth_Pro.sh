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
packageVersionName="google-earth-pro-stable" # Nome do arquivo na instalação para procurar a versão no pacote
       packageName="Google Earth Pro" # Apenas o nome do pacote
        characters="────────────────" # Arquivo você coloca os (─), a mesma quantidade de caracteres do packageName=""

# Start of commands

# Verificar se o está instalado
if dpkg -1 | grep -q ${packageVersionName}; then
    clear
    echo "╭${characters}────────────────────────────────────╮"
    echo "│ ${packageName} não está instalado! Instalando... │"
    echo "╰${characters}────────────────────────────────────╯"

    # Baixar o pacote
    wget https://dl.google.com/dl/earth/client/current/google-earth-pro-stable_current_amd64.deb

    # Instalar o pacote
    sudo dpkg -i google-earth-pro-stable_current_amd64.deb

    # Dar permissões e apagar o arquivo
    chmod 777 google-earth-pro-stable_current_amd64.deb && rm -r google-earth-pro-stable_current_amd64.deb

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