#!/bin/bash

clear

# Variáveis úteis
sleep='3'
fileName=$(basename "$0")
# Defição dos códigos de escape ANSI para as cores
# Texto Regular
reset='\033[0m' # Resetar a formatação para a cor padrão
preto='\033[0;30m'
vermelho='\033[0;31m'
verde='\033[0;32m'
amarelo='\033[0;33m'
azul='\033[0;34m'
roxo='\033[0;35m'
ciano='\033[0;36m'
branco='\033[0;37m'
# Texto Negrito
pretoNegrito='\033[1;30m'
vermelhoNegrito='\033[1;31m'
verdeNegrito='\033[1;32m'
amareloNegrito='\033[1;33m'
azulNegrito='\033[1;34m'
roxoNegrito='\033[1;35m'
cianoNegrito='\033[1;36m'
brancoNegrito='\033[1;37m'
# Fundo
fundoPreto='\033[40m'
fundoVermelho='\033[41m'
fundoVerde='\033[42m'
fundoAmarelo='\033[43m'
fundoAzul='\033[44m'
fundoRoxo='\033[45m'
fundoCiano='\033[46m'
fundoBranco='\033[47m'
# Estilos de Texto
negrito='\033[1m'
faintFraco='\033[2m'
italico='\033[3m'
sublinhado='\033[4m'
piscando='\033[5m'
invertido='\033[7m'
escondido='\033[8m'

echo -e "╭─────────────────────────────────────────────────────────────────────────╮ ${roxo}░▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓${reset}${vermelho}▒▓▓▓${reset}"
echo -e "│${fundoRoxo}${italico}${brancoNegrito}       Menu de Instalação Linux: Simplificando a Gestão de Pacotes       ${reset}│"
echo -e "│ Explore nosso menu intuitivo no terminal Linux para instalar pacotes    │ ${amarelo}░▒▓▓▓      ░▒▓▓▓ ░▒▓▓▓${reset}"
echo -e "│ com facilidade. Uma abordagem simplificada para gerenciar seu sistema,  │ ${amarelo}░▒▓▓▓░▒▓▓▓ ░▒▓▓▓ ░▒▓▓▓${reset}"
echo -e "│ tornando a instalação de software uma tarefa rápida e direta.           │ ${amarelo}░▒▓▓▓▓▓▓▓▓ ░▒▓▓▓ ░▒▓▓▓${reset}"
echo -e "│${fundoAmarelo}     ${negrito}${italico}GLOBAL TEC Informática - A Tecnologia da Informação é o Futuro      ${reset}│ ${verde}GLOBAL TEC Informática${reset}"
echo -e "╰─────────────────────────────────────────────────────────────────────────╯    ${verde}A Tecnologia da${reset}"
echo -e "╭─────────────────┤${fundoVermelho}${negrito}${italico} Menu ${reset}├───────────────┬───────────┤${fundoVermelho}${negrito}${italico} Linux ${reset}├────────────╮ ${verde}informação é o Futuro.${reset}"
echo -e "│ 0 ► Recarregar menu │ q ► Sair do Menu │ ${vermelho}r ► Reiniciar${reset} │ ${vermelho}s ► Desligar${reset}   │    ${verde}www.gti1.com.br${reset}"
echo -e "╰─────────────────────┴──────────────────┴───────────────┴────────────────╯"
echo -e "${verde}╭┤${fundoAzul}${negrito}${italico} Internet ${reset}${verde}├─────────────────────────────────────────────────────────────────────────────────────╮"
echo -e "│ i1 ► AnyDesk          ░ i2 ► Microsoft Edge ░ i3 ► Google Chrome    ░ i4 ► Google Earth Pro     │"
echo -e "│ i5 ► Skype para Linux ░ i6 ► Remmina        ░ i7 ► Opera            ░ i8 ► FileZilla            │"
echo -e "│ i9 ► Discord          ░ i20 ► Moz. Firefox  ░ i21 ► Visua. TigerVNC ░                           │"
echo -e "╰─────────────────────────────────────────────────────────────────────────────────────────────────╯${reset}"
echo -e "${amarelo}╭┤${fundoPreto}${negrito}${italico} Desenvolvimento ${reset}${amarelo}├──────────────────────────────────────────────────────────────────────────────╮"
echo -e "│*d1 ► Beekeeper Studio ░*d2 ► Insommina        ░*d3 ► Visual Studio Code ░*d4 ► NodeJS           │"
echo -e "│*d5 ► Docker Conteiner ░*d6 ► Git              ░                         ░                       │"
echo -e "╰─────────────────────────────────────────────────────────────────────────────────────────────────╯${reset}"

read -p "${fileName}: Digite uma opção: " option

case $option in
    # Menu o Linux
    q) # Sair do menu
        clear
        echo "╭────────────────────╮"
        echo "│ Você saiu do menu! │"
        echo "╰────────────────────╯"
        exit 0
        ;;
    r) # Reiniciar o Linux
        clear
        echo -e "${vermelho}╭────────────────────────╮${reset}"
        echo -e "${vermelho}│ ${piscando}${negrito}Reiniciando o Linux...${reset} ${vermelho}│${reset}"
        echo -e "${vermelho}╰────────────────────────╯${reset}"
        sleep ${sleep}
        sudo reboot
        ;;
    s) # Desligar o Linux
        clear
        echo -e "${vermelho}╭───────────────────────╮${reset}"
        echo -e "${vermelho}│ ${piscando}${negrito}Desligando o Linux...${reset} ${vermelho}│${reset}"
        echo -e "${vermelho}╰───────────────────────╯${reset}"
        sleep ${sleep}
        sudo poweroff
        ;;
    0) # Recarregar menu
        clear
        ./${fileName}
        ;;
    # Internet
    i1) # AnyDesk
        clear
        # Start of commands
        # Adicionar a chave GPG
        wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | apt-key add -

        # Adicionar o repositório
        echo "deb http://deb.anydesk.com/ all main" > /etc/apt/sources.list.d/anydesk-stable.list

        # Atualizar os pacotes
        sudo apt update

        # Instalar o AnyDesk
        sudo apt install anydesk -y

        # Verificar se o AnyDesk está instalado
        if ! command -v anydesk &> /dev/null; then
            echo "╭───────────────────────────────────────────────────────╮"
            echo "│ ️️⚠️  Ocorreu algum problema, AnyDesk não foi instalado! │"
            echo "╰───────────────────────────────────────────────────────╯"
        else
            echo -e "${negrito}${verde}╭────────────────────────────────╮"
            echo -e "│ ${italico}AnyDesk instalado com sucesso! │"
            echo -e "╰────────────────────────────────╯${reset}"
        fi
        # End of commands
        #echo -e "${negrito}${verde}╭────────────────────────────────╮"
        #echo -e "│ ${italico}AnyDesk instalado com sucesso! │"
        #echo -e "╰────────────────────────────────╯${reset}"
        sleep ${sleep}
        ./${fileName}
        ;;
    i2) # Microsoft Edge
        clear
        # Start of commands
        # Adicionar o Repositóro
        curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
        sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
        sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/edge stable main" > /etc/apt/sources.list.d/microsoft-edge-stable.list'

        # Atualizar a Lista de Pacotes
        sudo apt update

        # Instalar o Microsoft Edge
        sudo apt install microsoft-edge-stable -y

        # Resolver dependências quebradas
        if ! command -v microsoft-edge-stable &> /dev/null; then
            apt-get install -f
        fi

        # Verificar se o Microsoft Edge para Linux está instalado
        if ! command -v microsoft-edge-stable &> /dev/null; then
            echo "╭─────────────────────────────────────────────────────────────────────────╮"
            echo "│ ️️⚠️  Houve algum problema, O Microsoft Edge para Linux não foi instalado! │"
            echo "╰─────────────────────────────────────────────────────────────────────────╯"
        else
            echo -e "${negrito}${verde}╭───────────────────────────────────────╮"
            echo -e "│ ${italico}Microsoft Edge instalado com sucesso! │"
            echo -e "╰───────────────────────────────────────╯${reset}"
            microsoft-edge-stable --version
        fi
        # End of commands
        #echo -e "${negrito}${verde}╭───────────────────────────────────────╮"
        #echo -e "│ ${italico}Microsoft Edge instalado com sucesso! │"
        #echo -e "╰───────────────────────────────────────╯${reset}"
        sleep ${sleep}
        ./${fileName}
        ;;
    i3) # Google Chrome
        clear
        # Start of commands
        # Fazer download do pacote
        wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

        # Instalar o pacote
        sudo dpkg -i google-chrome-stable_current_amd64.deb

        # Dar permissões e deletar o arquivo
        chmod 777 google-chrome-stable_current_amd64.deb && rm -r google-chrome-stable_current_amd64.deb

        # Verificar se o Google Chrome foi instalado
        if ! command -v google-chrome-stable &> /dev/null; then
            echo "╭─────────────────────────────────────────────────────────────╮"
            echo "│ ️️⚠️  Ocorreu algum problema, Google Chrome não foi instalado! │"
            echo "╰─────────────────────────────────────────────────────────────╯"
        else
            echo -e "${negrito}${verde}╭───────────────────────────────────────╮"
            echo -e "│ ${italico}Microsoft Edge instalado com sucesso! │"
            echo -e "╰───────────────────────────────────────╯${reset}"
            # Verificar versão do Google chrome
            google-chrome-stable --version
        fi
        # End of commands
        #echo -e "${negrito}${verde}╭───────────────────────────────────────╮"
        #echo -e "│ ${italico}Microsoft Edge instalado com sucesso! │"
        #echo -e "╰───────────────────────────────────────╯${reset}"
        sleep ${sleep}
        ./${fileName}
        ;;
    i4) # Google Earth Pro
        clear
        # Start of commands
        # Baixar o pacote
        wget https://dl.google.com/dl/earth/client/current/google-earth-pro-stable_current_amd64.deb

        # Instalar o pacote
        sudo dpkg -i google-earth-pro-stable_current_amd64.deb

        # Dar permissões e apagar o arquivo
        chmod 777 google-earth-pro-stable_current_amd64.deb && rm -r google-earth-pro-stable_current_amd64.deb

        # Verificar se o Google Chrome foi instalado
        if dpkg -1 | grep -q "google-earth-pro"; then
            echo "╭────────────────────────────────────────────────────────────────╮"
            echo "│ ️️⚠️  Ocorreu algum problema, Google Earth Pro não foi instalado! │"
            echo "╰────────────────────────────────────────────────────────────────╯"
        else
            echo -e "${negrito}${verde}╭─────────────────────────────────────────╮"
            echo -e "│ ${italico}Google Earth Pro instalado com sucesso! │"
            echo -e "╰─────────────────────────────────────────╯${reset}"
        fi
        # End of commands
        #echo -e "${negrito}${verde}╭─────────────────────────────────────────╮"
        #echo -e "│ ${italico}Google Earth Pro instalado com sucesso! │"
        #echo -e "╰─────────────────────────────────────────╯${reset}"
        sleep ${sleep}
        ./${fileName}
        ;;
    i5) # Skype para Linux
        clear
        # Start of commands
        # Atualizar os pacotes
        apt update

        # Instalar o pacote SkypeForLinux
        apt install skypeforlinux

        # Verificar se o Skype for Linux está instalado
        if ! command -v skypeforlinux &> /dev/null; then
            echo "╭────────────────────────────────────────────────────────────────╮"
            echo "│ ️️⚠️  Ocorreu algum problema, Skype para Linux não foi instalado! │"
            echo "╰────────────────────────────────────────────────────────────────╯"
        else
            echo -e "${negrito}${verde}╭─────────────────────────────────────────╮"
            echo -e "│ ${italico}Skype para Linux instalado com sucesso! │"
            echo -e "╰─────────────────────────────────────────╯${reset}"
        fi
        # End of commands
        #echo -e "${negrito}${verde}╭─────────────────────────────────────────╮"
        #echo -e "│ ${italico}Skype para Linux instalado com sucesso! │"
        #echo -e "╰─────────────────────────────────────────╯${reset}"
        sleep ${sleep}
        ./${fileName}
        ;;
    i6) # Remmina
        clear
        # Start of commands
        # Verificar se o Remmina está instalado
        if ! command -v remmina &> /dev/null; then
            echo "Remmina não está instalado. Instalando..."
            sudo apt-get update
            sudo apt-get install remmina remmina-plugin-rdp remmina-plugin-secret remmina-plugin-spice remmina-plugin-vnc
            sudo dnf install remmina remmina-plugins-rdp remmina-plugins-secret remmina-plugins-spice remmina-plugins-vnc
            echo -e "${negrito}${verde}╭────────────────────────────────╮"
            echo -e "│ ${italico}Remmina instalado com sucesso! │"
            echo -e "╰────────────────────────────────╯${reset}"
        else
            echo -e "${negrito}${verde}╭────────────────────────────╮"
            echo -e "│ ${italico} Remmina já está instalado! │"
            echo -e "╰────────────────────────────╯${reset}"
        fi
        # End of commands
        #echo -e "${negrito}${verde}╭────────────────────────────╮"
        #echo -e "│ ${italico} Remmina já está instalado! │"
        #echo -e "╰────────────────────────────╯${reset}"
        sleep ${sleep}
        ./${fileName}
        ;;
    i7) # Opera
        clear
        # Start of commands
        # Verificar se o Opera está instalado
        if ! command -v opera &> /dev/null; then
            echo "Opera não está instalado. Instalando..."
            sudo apt-get update
            sudo apt-get install apt-transport-https
            wget -qO- https://deb.opera.com/archive.key | sudo gpg --dearmor -o /usr/share/keyrings/com.opera-archive-keyring.gpg
            echo "deb [signed-by=/usr/share/keyrings/com.opera-archive-keyring.gpg] https://deb.opera.com/opera-stable/ stable non-free" | sudo tee /etc/apt/sources.list.d/opera.list
            sudo apt-get update
            sudo apt-get install opera-stable
            echo -e "${negrito}${verde}╭──────────────────────────────╮"
            echo -e "│ ${italico}Opera instalado com sucesso! │"
            echo -e "╰──────────────────────────────╯${reset}"
        else
            echo -e "${negrito}${verde}╭──────────────────────────╮"
            echo -e "│ ${italico}Opera já está instalado! │"
            echo -e "╰──────────────────────────╯${reset}"
        fi
        # End of commands
        #echo -e "${negrito}${verde}╭──────────────────────────╮"
        #echo -e "│ ${italico}Opera já está instalado! │"
        #echo -e "╰──────────────────────────╯${reset}"
        sleep ${sleep}
        ./${fileName}
        ;;
    i8) # FileZilla
        clear
        # Start of commands
        # Verificar se o FileZilla está instalado
        if ! command -v filezilla &> /dev/null; then
            echo "FileZilla não está instalado. Instalando..."
            sudo apt-get update
            sudo apt-get install filezilla
            echo -e "${negrito}${verde}╭──────────────────────────────────╮"
            echo -e "│ ${italico}FileZilla instalado com sucesso! │"
            echo -e "╰──────────────────────────────────╯${reset}"
        else
            echo -e "${negrito}${verde}╭──────────────────────────────╮"
            echo -e "│ ${italico}FileZilla já está instalado! │"
            echo -e "╰──────────────────────────────╯${reset}"
        fi
        # End of commands
        #echo -e "${negrito}${verde}╭──────────────────────────────╮"
        #echo -e "│ ${italico}FileZilla já está instalado! │"
        #echo -e "╰──────────────────────────────╯${reset}"
        sleep ${sleep}
        ./${fileName}
        ;;
    i9) # Discord
        clear
        # Start of commands
        # Verificar se o Discord está instalado
        if ! dpkg -l | grep -q discord; then
            echo "Discord não está instalado. Instalando..."
            sudo wget -O /usr/share/keyrings/discord-archive-keyring.gpg https://discord.com/api/download/keyring
            echo 'deb [signed-by=/usr/share/keyrings/discord-archive-keyring.gpg] https://packages.discord.com/debian/ stable main' | sudo tee /etc/apt/sources.list.d/discord.list
            sudo apt update
            sudo apt install discord
            echo -e "${negrito}${verde}╭────────────────────────────────╮"
            echo -e "│ ${italico}Discord instalado com sucesso! │"
            echo -e "╰────────────────────────────────╯${reset}"
        else
            echo -e "${negrito}${verde}╭────────────────────────────╮"
            echo -e "│ ${italico}Discord já está instalado! │"
            echo -e "╰────────────────────────────╯${reset}"
        fi
        # End of commands
        #echo -e "${negrito}${verde}╭────────────────────────────────╮"
        #echo -e "│ ${italico}Remmina instalado com sucesso! │"
        #echo -e "╰────────────────────────────────╯${reset}"
        sleep ${sleep}
        ./${fileName}
        ;;
    i20) # Mozilla Firefox
        clear
        # Start of commands
        sudo apt update
        sudo apt install firefox-esr
        sudo apt install -t buster-backports firefox
        # End of commands
        echo -e "${negrito}${verde}╭────────────────────────────────────────╮"
        echo -e "│ ${italico}Mozilla Firefox instalado com sucesso! │"
        echo -e "╰────────────────────────────────────────╯${reset}"
        sleep ${sleep}
        ./${fileName}
        ;;
    i21) # Visualizador TigerVNC
        clear
        # Start of commands
        sudo apt update
        sudo apt install tigervnc-standalone-server tigervnc-common
        # End of commands
        echo -e "${negrito}${verde}╭──────────────────────────────────────────────╮"
        echo -e "│ ${italico}Visualizador TigerVNC instalado com sucesso! │"
        echo -e "╰──────────────────────────────────────────────╯${reset}"
        sleep ${sleep}
        ./${fileName}
        ;;
    *) # Opção inválida
        clear
        echo -e "${vermelho}╭──────────────────────────────────╮${reset}"
        echo -e "${vermelho}│ ${piscando}${negrito}Opção inválida! Tente novamente.${reset} ${vermelho}│${reset}"
        echo -e "${vermelho}╰──────────────────────────────────╯${reset}"
        sleep ${sleep}
        ./${fileName}
        ;;
esac
