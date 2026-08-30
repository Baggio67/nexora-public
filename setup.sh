#!/bin/bash
clear
echo -e "\033[38;5;51m"
cat << "EOF"
  ███╗   ██╗███████╗██╗  ██╗ ██████╗ ██████╗  █████╗ 
  ████╗  ██║██╔════╝╚██╗██╔╝██╔═══██╗██╔══██╗██╔══██╗
  ██╔██╗ ██║█████╗   ╚███╔╝ ██║   ██║██████╔╝███████║
  ██║╚██╗██║██╔══╝   ██╔██╗ ██║   ██║██╔══██╗██╔══██║
  ██║ ╚████║███████╗██╔╝ ██╗╚██████╔╝██║  ██║██║  ██║
  ╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝
EOF
echo -e "\033[38;5;220m  ✦ NEXORA PRO AUTOMATOR • INSTALLATEUR TERMUX VIP ✦\033[0m\n"

echo -e "\033[38;5;75m[*] Mise à jour des paquets Termux...\033[0m"
pkg update -y && pkg upgrade -y

echo -e "\033[38;5;75m[*] Configuration du stockage Termux...\033[0m"
termux-setup-storage

echo -e "\033[38;5;75m[*] Installation des paquets système nécessaires...\033[0m"
pkg install -y python git clang libxml2 libxslt zlib rust binutils

echo -e "\033[38;5;75m[*] Installation des dépendances Python requises...\033[0m"
pip install --upgrade pip setuptools wheel
pip install -r requirements.txt

mkdir -p /sdcard/nexo

echo -e "\n\033[38;5;48m[✔] Installation terminée avec succès !\033[0m"
echo -e "\033[38;5;220m[*] Lancement de Nexora Automator...\033[0m\n"
python launcher.py
