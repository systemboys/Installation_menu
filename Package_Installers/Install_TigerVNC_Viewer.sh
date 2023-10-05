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
packageName="TigerVNC Viewer" # Apenas o nome do pacote
 characters="───────────────" # Arquivo você coloca os (─), a mesma quantidade de caracteres do packageName=""

# Start of commands
# Verificar se o Flatpak está instalado
if ! command -v flatpak &> /dev/null; then
    echo "Flatpak não está instalado. Instalando..."
    sudo apt install flatpak
else
    echo "Flatpak já está instalado. Ignorando a instalação."
fi
# Instalar TigerVNC
sudo apt update
flatpak --user update org.tigervnc.vncviewer

clear
echo "╭${characters}─────────────────────────╮"
echo "│ ${packageName} instalado com sucesso! │"
echo "╰${characters}─────────────────────────╯"
# End of commands

sleep ${sleep}
cd ..
./${fileName}