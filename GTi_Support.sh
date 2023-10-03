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

echo -e "╭─────────────────────────────────────────────────────────────────────────╮"
echo -e "│${fundoRoxo}${italico}${brancoNegrito}       Menu de Instalação Linux: Simplificando a Gestão de Pacotes       ${reset}│ ${roxo}░▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓${reset}${vermelho}▒▓▓▓${reset}"
echo -e "│ Explore nosso menu intuitivo no terminal Linux para instalar pacotes    │"
echo -e "│ com facilidade. Uma abordagem simplificada para gerenciar seu sistema,  │ ${amarelo}░▒▓▓▓      ░▒▓▓▓ ░▒▓▓▓${reset}"
echo -e "│ tornando a instalação de software uma tarefa rápida e direta.           │ ${amarelo}░▒▓▓▓░▒▓▓▓ ░▒▓▓▓ ░▒▓▓▓${reset}"
echo -e "│${fundoAmarelo}     ${negrito}${italico}GLOBAL TEC Informática - A Tecnologia da Informação é o Futuro      ${reset}│ ${amarelo}░▒▓▓▓▓▓▓▓▓ ░▒▓▓▓ ░▒▓▓▓${reset}"
echo -e "╰─────────────────────────────────────────────────────────────────────────╯ ${verde}GLOBAL TEC Informática${reset}"
echo -e "╭┤${fundoVermelho}${negrito}${italico} Menu ${reset}├────────────────────────────────┬┤${fundoVermelho}${negrito}${italico} Linux ${reset}├───────────────────────╮    ${verde}A Tecnologia da${reset}"
echo -e "│ ${ciano}0 ► Recarregar menu${reset} ░ ${amarelo}q ► Sair do Menu${reset} │ ${vermelho}r ► Reiniciar${reset} ░ ${vermelho}s ► Desligar${reset}   │ ${verde}informação é o Futuro.${reset}"
echo -e "│ ${verde}udm ► Atualiza menu${reset} ░ ${vermelho}dm ► Delete Menu${reset} │ ${verde}udl ► Update${reset}  ░ ${verde}ugl ► Upgrade${reset}  │    ${verde}www.gti1.com.br${reset}"
echo -e "╰────────────────────────────────────────┴────────────────────────────────╯"
echo -e "${verde}╭┤${fundoAzul}${negrito}${italico} Internet ${reset}${verde}├─────────────────────────────────────────────────────────────────────────────────────╮"
echo -e "│ i1 ► AnyDesk          ░ i2 ► Microsoft Edge ░ i3 ► Google Chrome    ░ i4 ► Google Earth Pro     │"
echo -e "│ i5 ► Skype para Linux ░ i6 ► Remmina        ░ i7 ► Opera            ░ i8 ► FileZilla            │"
echo -e "│ i9 ► Discord          ░ i20 ► Moz. Firefox  ░ i21 ► Visua. TigerVNC ░                           │"
echo -e "╰─────────────────────────────────────────────────────────────────────────────────────────────────╯${reset}"
echo -e "${amarelo}╭┤${fundoPreto}${negrito}${italico} Desenvolvimento ${reset}${amarelo}├──────────────────────────────────────────────────────────────────────────────╮"
echo -e "│*d1 ► Beekeeper Studio ░*d2 ► Insommina        ░*d3 ► Visual Studio Code ░*d4 ► NodeJS           │"
echo -e "│*d5 ► Docker Conteiner ░ d6 ► Git              ░                         ░                       │"
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
    udm) # Atualizar o menu
        clear
        echo -e "${vermelho}╭───────────────────────╮${reset}"
        echo -e "${vermelho}│ ${piscando}${negrito}Atualizando o Menu...${reset} ${vermelho}│${reset}"
        echo -e "${vermelho}╰───────────────────────╯${reset}"
        sleep ${sleep}
        # Verificar se o Git está instalado
        if ! command -v git &> /dev/null; then
            echo "Git não está instalado. Instalando..."
            sudo apt install git
        else
            echo "Git já está instalado. Ignorando a instalação."
        fi
        cd ..
        rm -rf Installation_menu
        git clone https://github.com/systemboys/Installation_menu.git
        cd Installation_menu
        chmod +x GTi_Support.sh
        ./GTi_Support.sh
        ;;
    dm) # Deletar o menu
        clear
        cd ..
        echo -e "${vermelho}╭─────────────────────╮${reset}"
        echo -e "${vermelho}│ ${piscando}${negrito}Deletando o Menu...${reset} ${vermelho}│${reset}"
        echo -e "${vermelho}╰─────────────────────╯${reset}"
        sleep ${sleep}
        rm -rf Installation_menu && clear
        echo -e "${verde}╭────────────────────────────╮${reset}"
        echo -e "${verde}│ ${piscando}${negrito}Menu deletado com sucesso!${reset} ${verde}│${reset}"
        echo -e "${verde}╰────────────────────────────╯${reset}"
        ;;
    udl) # Update (atualizar pacotes do Linux)
        clear
        # Start of commands
        echo -e "${amarelo}╭───────────────────────────────╮${reset}"
        echo -e "${amarelo}│ ${piscando}${negrito}Atualizando os pacotes Linux!${reset} ${amarelo}│${reset}"
        echo -e "${amarelo}╰───────────────────────────────╯${reset}"
        sleep ${sleep}
        apt update
        clear
        # End of commands
        echo -e "${verde}╭────────────────────────────────────────╮${reset}"
        echo -e "${verde}│ ${negrito}Pacotes Linux atualizados com sucesso!${reset} ${verde}│${reset}"
        echo -e "${verde}╰────────────────────────────────────────╯${reset}"
        sleep ${sleep}
        ./${fileName}
        ;;
    ugl) # Upgrade (atualizar o Kernel do Linux)
        clear
        # Start of commands
        echo -e "${amarelo}╭────────────────────────────────╮${reset}"
        echo -e "${amarelo}│ ${piscando}${negrito}Atualizando o Kernel do Linux!${reset} ${amarelo}│${reset}"
        echo -e "${amarelo}╰────────────────────────────────╯${reset}"
        sleep ${sleep}
        apt update && apt upgrade -y
        clear
        # End of commands
        echo -e "${verde}╭──────────────────────────────────────────╮${reset}"
        echo -e "${verde}│ ${negrito}Kernel do Linux atualizados com sucesso!${reset} ${verde}│${reset}"
        echo -e "${verde}╰──────────────────────────────────────────╯${reset}"
        sleep ${sleep}
        ./${fileName}
        ;;
    0) # Recarregar menu
        clear
        ./${fileName}
        ;;
    # Internet
    i1) # AnyDesk
        cd Package_Installers/
        ./Install_AnyDesk.sh "$sleep" "$fileName"
        ;;
    i2) # Microsoft Edge
        cd Package_Installers/
        ./Install_Microsoft_Edge.sh "$sleep" "$fileName"
        ;;
    i3) # Google Chrome
        cd Package_Installers/
        ./Install_Google_Chrome.sh "$sleep" "$fileName"
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
    # Desenvolvimento
    d6) # Git
        clear
        # Start of commands
        # Verificar se o Git está instalado
        if ! command -v git &> /dev/null; then
            echo -e "${negrito}${amarelo}╭───────────────────────────────────────╮"
            echo -e "│ Git não está instalado! Instalando... │"
            echo -e "╰───────────────────────────────────────╯${reset}"
            sleep ${sleep}
            sudo apt update
            sudo apt install git
            clear
            echo -e "${negrito}${verde}╭───────────────────────────╮"
            echo -e "│ Git instalado com sucesso │"
            echo -e "╰───────────────────────────╯${reset}"
            sleep ${sleep}
        else
            echo -e "${negrito}${ciano}╭────────────────────────────────────────────────╮"
            echo -e "│ Git já está instalado. Ignorando a instalação. │"
            echo -e "╰────────────────────────────────────────────────╯${reset}"
            sleep ${sleep}
        fi
        # End of commands
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
