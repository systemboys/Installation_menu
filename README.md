# **Bem-vindo ao Menu de Facilidades para Linux!**

> **( ! )** Esse menu ainda está em desenvolvimento, algumas opções, as quais tem um esterisco (*), não estão funcionando ainda!

[![Menu de instalações de pacotes Linux](https://github.com/systemboys/Installation_menu/blob/main/images/Installation_menu.png?raw=true "Menu de instalações de pacotes Linux")](https://github.com/systemboys/Installation_menu/blob/main/images/Installation_menu.png?raw=true "Menu de instalações de pacotes Linux")

Nosso Menu de Facilidades é uma ferramenta poderosa e intuitiva projetada para simplificar o processo de instalação de uma variedade de pacotes Linux. Este menu foi cuidadosamente elaborado para oferecer aos usuários uma experiência sem complicações ao instalar programas, configurar ambientes de desenvolvimento e acessar uma gama diversificada de softwares.

**Recursos Principais:**

1. **Instalação Descomplicada:** Esqueça os comandos complexos e a pesquisa por tutoriais. Nosso menu oferece comandos simples e diretos para instalar programas populares com apenas um clique.

2. **Variedade de Pacotes:** Desde navegadores populares como Google Chrome e Mozilla Firefox até ferramentas de desenvolvimento como Visual Studio Code e Docker, o menu cobre uma ampla gama de necessidades.

3. **Configurações Pré-Definidas:** Além de instalar pacotes, o menu também oferece opções para configurações pré-definidas, economizando tempo e esforço dos usuários.

4. **Documentação Clara:** Cada comando é acompanhado por documentação clara e instruções detalhadas. Não importa se você é um iniciante ou um usuário avançado, você encontrará orientações claras para cada passo.

5. **Comunidade Ativa:** Faça parte de nossa comunidade crescente de usuários. Compartilhe suas experiências, faça perguntas e contribua para melhorias contínuas.

**Como Usar:**

1. **Clone o Repositório:** Clone nosso repositório do GitHub para ter acesso ao Menu de Facilidades para Linux.

   ```
   git clone git remote add origin https://github.com/systemboys/Installation_menu.git
   ```

2. **Navegue e Execute:** Navegue até o diretório do menu e execute os comandos diretamente do terminal. É tão simples quanto isso!

   ```
   cd Installation_menu
   chmod +x GTi_Support.sh
   ./GTi_Support.sh
   ```

   > Ou você pode ir direto ao ponto, execute o seuinte comando no seu terminal Linux:
   > ```bash
   > git clone https://github.com/systemboys/Installation_menu.git && cd Installation_menu && chmod +x GTi_Support.sh && ./GTi_Support.sh
   > ```
   > **( ! )** Sertifique-se de que o `Git` esteja instalado em seu Linux!

3. **Explore e Instale:** Explore as categorias, escolha os pacotes que deseja instalar e siga as instruções. Em poucos instantes, você terá os programas desejados em seu sistema Linux.

**Contribua e Compartilhe:**

Este menu é um projeto de código aberto, e encorajamos contribuições da comunidade. Sinta-se à vontade para abrir problemas, enviar solicitações de pull e ajudar a melhorar esta ferramenta para todos.

Com o Menu de Facilidades para Linux, queremos tornar a experiência de instalação de software no Linux tão simples e acessível quanto possível. Esperamos que você aproveite usar o menu tanto quanto nós gostamos de criá-lo!

*Divirta-se instalando, configurando e explorando no Linux!* 🚀🐧

> Marcos Aurélio Rocha da Silva | [https://www.gti1.com.br](https://www.gti1.com.br "Site em desenvolvimento") | systemboys@hotmail.com

---

## Rascunho para novos itens

Aqui você pode editar o arquivo caso necessário, adicionando mais recursos.

```bash
 ${roxo}░▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓${reset}${vermelho}▒▓▓▓${reset}

 ${amarelo}░▒▓▓▓      ░▒▓▓▓ ░▒▓▓▓${reset}
 ${amarelo}░▒▓▓▓░▒▓▓▓ ░▒▓▓▓ ░▒▓▓▓${reset}
 ${amarelo}░▒▓▓▓▓▓▓▓▓ ░▒▓▓▓ ░▒▓▓▓${reset}
 ${verde}GLOBAL TEC Informática${reset}
    ${verde}A Tecnologia da${reset}
 ${verde}informação é o Futuro.${reset}
    ${verde}www.gti1.com.br${reset}

```

### Incrementações de itens

Baixe e edite seu arquivo.

```bash
    i7) # Opera
        clear
        # Start of commands
        # Verificar se o Opera está instalado
        if ! command -v opera &> /dev/null; then
            echo "Opera não está instalado. Instalando..."
            # apt install ????
            echo -e "${negrito}${verde}╭──────────────────────────────╮"
            echo -e "│ ${italico}Opera instalado com sucesso! │"
            echo -e "╰──────────────────────────────╯${reset}"
        else
            echo -e "${negrito}${verde}╭──────────────────────────╮"
            echo -e "│ ${italico}Opera já está instalado! │"
            echo -e "╰──────────────────────────╯${reset}"
        fi
        # End of commands
        #echo -e "${negrito}${verde}╭────────────────────────────────╮"
        #echo -e "│ ${italico}Remmina instalado com sucesso! │"
        #echo -e "╰────────────────────────────────╯${reset}"
        sleep ${sleep}
        ./${fileName}
        ;;
```