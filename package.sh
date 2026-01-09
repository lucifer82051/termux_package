#!/data/data/com.termux/files/usr/bin/bash

#────────────────────────────────────
# RENKLER
#────────────────────────────────────
green="\e[92m"
cyan="\e[96m"
yellow="\e[93m"
red="\e[91m"
reset="\e[0m"

#────────────────────────────────────
# GÖRSEL PAKETLER
#────────────────────────────────────
pkg install -y figlet > /dev/null 2>&1
pkg install -y ruby > /dev/null 2>&1
gem install lolcat > /dev/null 2>&1

#────────────────────────────────────
# ASCII SANAT (Noktasız – Yeşil)
#────────────────────────────────────
ascii_art() {
echo -e "${green}"
cat << "EOF"
                     ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
                 ▄▄█▓▓▓▒▒▒▒▒▒▒▒▒▒▓▓▓▓█▄▄
             ▄▀▀▓▒░░░░░░░░░░░░░░░░▒▓▓▀▄
          ▄▀▓▒▒░░░░░░░░░░░░░░░░░░░▒▒▓▀▄
         █▓█▒░░░░░░░░░░░░░░░░░░░░░▒▓▒▓█
       ▌▓▀▒░░░░░░░░░░░░░░░░░░░░░░░░▒▀▓█
       █▌▓▒▒░░░░░░░░░░░░░░░░░░░░░░░░░▒▓█
     ▐█▓▒░░░░░░░░░░░░░░░░░░░░░░░░░░░▒▓█▌
     █▓▒▒░░░░░░░░░░░░░░░░░░░░░░░░░░░░▒▓█
    █▐▒▒░░░░░░░░░░░░░░░░░░░░░░░░░░░▒▒█▓█
     █▓█▒░░░░░░░░░░░░░░░░░░░░░░░░░░░▒█▌▓█
    █▓▓█▒░░░░▒█▄▒▒░░░░░░░░░▒▒▄█▒░░░░▒█▓▓█
    █▓█▒░▒▒▒▒░░▀▀█▄▄░░░░░▄▄█▀▀░░▒▒▒▒░▒█▓█
   █▓▌▒▒▓▓▓▓▄▄▄▒▒▒▀█░░░░█▀▒▒▒▄▄▄▓▓▓▓▒▒▐▓█
   ██▌▒▓███▓█████▓▒▐▌░░▐▌▒▓████▓████▓▒▐██
     ██▒▒▓███▓▓▓████▓▄░░░▄▓████▓▓▓███▓▒▒██
     █▓▒▒▓██████████▓▒░░░▒▓██████████▓▒▒▓█
     █▓▒░▒▓███████▓▓▄▀░░▀▄▓▓███████▓▒░▒▓█
       █▓▒░▒▒▓▓▓▓▄▄▄▀▒░░░░░▒▀▄▄▄▓▓▓▓▒▒░▓█
        █▓▒░▒▒▒▒░░░░░░▒▒▒▒░░░░░░▒▒▒▒░▒▓█
          █▓▓▒▒▒░░██░░▒▓██▓▒░░██░░▒▒▒▓▓█
          ▀██▓▓▓▒░░▀░▒▓████▓▒░▀░░▒▓▓▓██▀
             ░▀█▓▒▒░░░▓█▓▒▒▓█▓▒░░▒▒▓█▀░
            █░░██▓▓▒░░▒▒▒░▒▒▒░░▒▓▓██░░█
             █▄░░▀█▓▒░░░░░░░░░░▒▓█▀░░▄█
              █▓█░░█▓▒▒▒░░░░░▒▒▒▓█░░█▓█
               █▓█░░█▀█▓▓▓▓▓▓█▀░░█░█▓█▌
                █▓▓█░█░█░█▀▀▀█░█░▄▀░█▓█
                █▓▓█░░▀█▀█░█░█▄█▀░░█▓▓█
                 █▓▒▓█░░░░▀▀▀▀░░░░░█▓▓█
                 █▓▒▒▓█░░░░ ░░░░░░░█▓▓█
                  █▓▒▓██▄█░░░▄░░▄██▓▒▓█
                  █▓▒▒▓█▒█▀█▄█▀█▒█▓▒▓█
                  █▓▓▒▒▓██▒▒██▒██▓▒▒▓█
                    █▓▓▒▒▓▀▀███▀▀▒▒▓▓█
                      ▀█▓▓▓▓▒▒▒▒▓▓▓▓█▀
                         ▀▀██▓▓▓▓██▀
EOF
echo -e "${reset}"
}

#────────────────────────────────────
# MENÜ FONKSİYONU
#────────────────────────────────────
menu() {
    clear
    ascii_art
    echo -e "${cyan}"
    figlet -f mini "TERMINAL MASTER" | lolcat
    echo -e "${reset}"

    echo -e "${yellow}Bir seçenek seç:${reset}"
    echo ""
    echo -e "${green}[1] Python Kur${reset}"
    echo -e "${green}[2] Git Kur${reset}"
    echo -e "${green}[3] Depo Güncelle${reset}"
    echo -e "${green}[4] Sistem Yükselt (Upgrade)${reset}"
    echo -e "${green}[5] Hepsini Yap${reset}"
    echo -e "${red}[0] Çıkış${reset}"

    echo -ne "${cyan}Seçim: ${reset}"
}

#────────────────────────────────────
# İŞLEM FONKSİYONLARI
#────────────────────────────────────
install_python() {
    echo -e "${green}[+] Python kuruluyor...${reset}"
    pkg install -y python | lolcat
    sleep 1
}

install_git() {
    echo -e "${green}[+] Git kuruluyor...${reset}"
    pkg install -y git | lolcat
    sleep 1
}

update_repo() {
    echo -e "${yellow}[+] Depolar güncelleniyor...${reset}"
    pkg update -y | lolcat
    sleep 1
}

upgrade_repo() {
    echo -e "${yellow}[+] Sistem yükseltiliyor...${reset}"
    pkg upgrade -y | lolcat
    sleep 1
}

all_process() {
    install_python
    install_git
    update_repo
    upgrade_repo
}

#────────────────────────────────────
# MENÜ DÖNGÜSÜ
#────────────────────────────────────
while true; do
    menu
    read choice

    case $choice in
        1) install_python ;;
        2) install_git ;;
        3) update_repo ;;
        4) upgrade_repo ;;
        5) all_process ;;
        0)
            clear
            figlet -f big "BYE" | lolcat
            exit 0
            ;;
        *)
            echo -e "${red}Geçersiz seçim!${reset}"
            sleep 1
            ;;
    esac

    echo ""
    echo -e "${yellow}Enter’a basarak menüye dön...${reset}"
    read
done
