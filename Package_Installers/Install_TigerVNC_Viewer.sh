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
packageName="TigerVNC Viewer" # Apenas o nome do pacote
 characters="───────────────" # Arquivo você coloca os (─), a mesma quantidade de caracteres do packageName=""

# Start of commands
sudo apt update
sudo apt install tigervnc-standalone-server tigervnc-common

clear
echo "╭${characters}─────────────────────────╮"
echo "│ ${packageName} instalado com sucesso! │"
echo "╰${characters}─────────────────────────╯"
# End of commands

sleep ${sleep}
cd ..
./${fileName}