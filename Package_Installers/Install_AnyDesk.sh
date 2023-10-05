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
packageVersionName="anydesk" # Nome do arquivo na instalação para procurar a versão no pacote
       packageName="AnyDesk" # Apenas o nome do pacote
        characters="───────" # Arquivo você coloca os (─), a mesma quantidade de caracteres do packageName=""

# Start of commands

# Verificar se o está instalado
if ! command -v ${packageVersionName} &> /dev/null; then
    clear
    echo "╭${characters}────────────────────────────────────╮"
    echo "│ ${packageName} não está instalado! Instalando... │"
    echo "╰${characters}────────────────────────────────────╯"

    # Adicionar a chave GPG
    wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | apt-key add -

    # Adicionar o repositório
    echo "deb http://deb.anydesk.com/ all main" > /etc/apt/sources.list.d/anydesk-stable.list

    # Atualizar os pacotes
    sudo apt update

    # Instalar o AnyDesk
    sudo apt install anydesk

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