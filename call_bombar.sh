#!/bin/bash

# ================================
#  CALL BOMBER V2 (DEMO MODE)
#  Developer: PROFESSORXZAMIN 🚀
#  Channel: @PROFESSORXZAMINHACKER
# ================================

# Colors
GREEN="\e[1;32m"
RED="\e[1;31m"
CYAN="\e[1;36m"
YELLOW="\e[1;33m"
BLUE="\e[1;34m"
GRAY="\e[1;90m"
RESET="\e[0m"

# Banner Function
banner() {
    clear
    echo -e "$GREEN"
    echo " ██████╗ █████╗ ██╗     ██╗     "
    echo "██╔════╝██╔══██╗██║     ██║     "
    echo "██║     ███████║██║     ██║     "
    echo "██║     ██╔══██║██║     ██║     "
    echo "╚██████╗██║  ██║███████╗███████╗"
    echo " ╚═════╝╚═╝  ╚═╝╚══════╝╚══════╝"
    echo -e "$RESET"
    echo -e "$CYAN        CALL BOMBER V2$RESET"
    echo -e "$RED[+] Developer : PROFESSORXZAMIN 🚀$RESET"
    echo -e "$BLUE[+] Telegram : https://t.me/PROFESSORXZAMINHACKER$RESET"
    echo -e "$GRAY--------------------------------------------------$RESET"
}

# Exit handler
trap 'echo -e "\n$RED[!] Process stopped by user.$RESET"; exit 0' INT

# Start
banner

# Input
read -p "$(echo -e $GREEN'[?] Enter target phone number: '$RESET)" target

# Validation
if [[ -z "$target" ]]; then
    echo -e "$RED[!] Error: Phone number cannot be empty!$RESET"
    exit 1
fi

if ! [[ "$target" =~ ^[0-9+]{8,15}$ ]]; then
    echo -e "$RED[!] Error: Invalid phone number format!$RESET"
    exit 1
fi

echo -e "$YELLOW[*] Initializing process for: $target$RESET"
sleep 1

count=1

# Demo Loop (No real API)
while true; do
    echo -e "$CYAN[+] Sending request #$count → $target$RESET"
    echo -e "$GREEN[✔] Status: Success$RESET"
    echo -e "$GRAY----------------------------------------$RESET"
    ((count++))
    sleep 3
done
