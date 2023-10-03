#!/bin/bash

# Verifica se o número de argumentos é correto
if [ "$#" -ne 2 ]; then
    echo "Erro: Número incorreto de argumentos."
    exit 1
fi

# Obtém os valores dos argumentos
sleep="$1"
fileName="$2"

# Start of commands

# Verificar se o Microsoft Edge está instalado
if ! command -v microsoft-edge &> /dev/null; then
    clear
    echo "╭──────────────────────────────────────────────────╮"
    echo "│ Microsoft Edge não está instalado! Instalando... │"
    echo "╰──────────────────────────────────────────────────╯"

    # Your installation command...

    clear
    echo "╭───────────────────────────────────────╮"
    echo "│ Microsoft Edge instalado com sucesso! │"
    echo "╰───────────────────────────────────────╯"
else
    clear
    echo "╭─────────────────────────────────────────────────────────────╮"
    echo "│ Microsoft Edge já está instalado! Ignorando a instalação... │"
    echo "╰─────────────────────────────────────────────────────────────╯"
fi

# End of commands

sleep ${sleep}
cd ..
./${fileName}