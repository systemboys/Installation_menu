#!/bin/bash

# GTi_Support.sh - Executa o menu de instalações de pacotes e outros
# comandos Linux.
#
# URL: https://github.com/systemboys/Installation_menu.git
# Autor: Marcos Aurélio R. da Silva <systemboys@hotmail.com>
# Manutenção: Marcos Aurélio R. da Silva <systemboys@hotmail.com>
#
# ---------------------------------------------------------------
# Este programa tem a finadade de agilizar nas instalações de
# pacotes e comandos Linux.
# ---------------------------------------------------------------
# Histórico:
# v1.0 2023-09-30 às 19h30, Marcos Aurélio:
#   - Versão inicial, menu de controle de instalações de pacotes e outros
#     comandos para sistemas Linux.
# v1.1 2023-10-01 às 07h30, Marcos Aurélio:
#   - Testes de instalações de pacotes e alguns comandos Linux.
# v1.2 2023-10-02 às 21h15, Marcos Aurélio:
#   - Alguns ajustes nas linhas de comandos, para melhora o entendimento.
#
# Licença: GPL.

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

# Sair do Menu
exitTheMenu() {
    clear
    echo "╭────────────────────╮"
    echo "│ Você saiu do menu! │"
    echo "╰────────────────────╯"
    exit 0
}
# Desligar Linux
restartLinux() {
    clear
    echo -e "${vermelho}╭────────────────────────╮${reset}"
    echo -e "${vermelho}│ ${piscando}${negrito}Reiniciando o Linux...${reset} ${vermelho}│${reset}"
    echo -e "${vermelho}╰────────────────────────╯${reset}"
    sleep ${sleep}
    sudo reboot
}
# Reiniciar Linux
shutdownLinux() {
    clear
    echo -e "${vermelho}╭───────────────────────╮${reset}"
    echo -e "${vermelho}│ ${piscando}${negrito}Desligando o Linux...${reset} ${vermelho}│${reset}"
    echo -e "${vermelho}╰───────────────────────╯${reset}"
    sleep ${sleep}
    sudo poweroff
}
# Atualizar Menu
updateMenu() {
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
    chmod +x Installation_menu/*
    ./GTi_Support.sh
}
# Deletar Menu
deleteMenu() {
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
}
# Atualizar Pacotes Linux
updateLinuxPackages() {
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
}
# Atualizar Kernel Linux
updateLinuxKernel() {
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
}
# Opção inválida
invalidOption() {
    clear
    echo -e "${vermelho}╭──────────────────────────────────╮${reset}"
    echo -e "${vermelho}│ ${piscando}${negrito}Opção inválida! Tente novamente.${reset} ${vermelho}│${reset}"
    echo -e "${vermelho}╰──────────────────────────────────╯${reset}"
    sleep ${sleep}
    ./${fileName}
}

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
echo -e "│*d5 ► Docker Conteiner ░ d6 ► Git              ░ d7 ► Typora             ░                       │"
echo -e "╰─────────────────────────────────────────────────────────────────────────────────────────────────╯${reset}"

read -p "${fileName}: Digite uma opção: " option

case $option in
    # Menu o Linux
    q) # Sair do menu
        exitTheMenu
        ;;
    r) # Reiniciar o Linux
        restartLinux
        ;;
    s) # Desligar o Linux
        shutdownLinux
        ;;
    udm) # Atualizar o menu
        updateMenu
        ;;
    dm) # Deletar o menu
        deleteMenu
        ;;
    udl) # Update (atualizar pacotes do Linux)
        updateLinuxPackages
        ;;
    ugl) # Upgrade (atualizar o Kernel do Linux)
        updateLinuxKernel
        ;;
    0) # Recarregar menu
        clear
        ./${fileName}
        ;;
    # Internet
    i1) # AnyDesk
        cd Package_Installers/Internet/
        ./Install_AnyDesk.sh "$sleep" "$fileName"
        ;;
    i2) # Microsoft Edge
        cd Package_Installers/Internet/
        ./Install_Microsoft_Edge.sh "$sleep" "$fileName"
        ;;
    i3) # Google Chrome
        cd Package_Installers/Internet/
        ./Install_Google_Chrome.sh "$sleep" "$fileName"
        ;;
    i4) # Google Earth Pro
        cd Package_Installers/Internet/
        ./Install_Google_Earth_Pro.sh "$sleep" "$fileName"
        ;;
    i5) # Skype para Linux
        cd Package_Installers/Internet/
        ./Install_Skype_for_Linux.sh "$sleep" "$fileName"
        ;;
    i6) # Remmina
        cd Package_Installers/Internet/
        ./Install_Remmina.sh "$sleep" "$fileName"
        ;;
    i7) # Opera
        cd Package_Installers/Internet/
        ./Install_Opera.sh "$sleep" "$fileName"
        ;;
    i8) # FileZilla
        cd Package_Installers/Internet/
        ./Install_FileZilla.sh "$sleep" "$fileName"
        ;;
    i9) # Discord
        cd Package_Installers/Internet/
        ./Install_Discord.sh "$sleep" "$fileName"
        ;;
    i20) # Mozilla Firefox
        cd Package_Installers/Internet/
        ./Install_Mozilla_Firefox.sh "$sleep" "$fileName"
        ;;
    i21) # Visualizador TigerVNC
        cd Package_Installers/Internet/
        ./Install_TigerVNC_Viewer.sh "$sleep" "$fileName"
        ;;
    # Desenvolvimento
    d6) # Git
        cd Package_Installers/Development/
        ./Install_git.sh "$sleep" "$fileName"
        ;;
    d7) # Typora
        cd Package_Installers/Development/
        ./Install_Typora.sh "$sleep" "$fileName"
        ;;
    *) # Opção inválida
        invalidOption
        ;;
esac
