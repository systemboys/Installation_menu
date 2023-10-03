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

# Verificar se o AnyDesk está instalado
if ! command -v anydesk &> /dev/null; then
    clear
    echo "╭───────────────────────────────────────────╮"
    echo "│ AnyDesk não está instalado! Instalando... │"
    echo "╰───────────────────────────────────────────╯"

    # Adicionar a chave GPG
    wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | apt-key add -

    # Adicionar o repositório
    echo "deb http://deb.anydesk.com/ all main" > /etc/apt/sources.list.d/anydesk-stable.list

    # Atualizar os pacotes
    sudo apt update

    # Instalar o AnyDesk
    sudo apt install anydesk

    clear
    echo "╭────────────────────────────────╮"
    echo "│ AnyDesk instalado com sucesso! │"
    echo "╰────────────────────────────────╯"
else
    clear
    echo "╭──────────────────────────────────────────────────────╮"
    echo "│ AnyDesk já está instalado! Ignorando a instalação... │"
    echo "╰──────────────────────────────────────────────────────╯"
fi

# End of commands

sleep ${sleep}
cd ..
./${fileName}