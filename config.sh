#!/usr/bin/env bash

DARK_RED='\e[31m'
DARK_GREEN='\e[32m'
DARK_BLUE='\e[34m'
RESET='\e[0m'
echo -e "\n${DARK_BLUE}--------------- Elderry's Config Files ---------------"

function split() {
    total=50
    length=$((${#1} + ${#2} + ${#3}))
    left=$(($total - $length))
    hyphen=$(($left / 2))
    for i in $(seq 1 $hyphen); do printf '-'; done
    printf " ${DARK_GREEN}${1}[${DARK_RED}${2}${DARK_GREEN}]${3}${DARK_BLUE} "
    for i in $(seq 1 $(($hyphen + $left % 2))); do printf '-'; done
    echo ''
}

function config() {
    echo ''
    split 'Going to config ' "$1" '.'
    ./"$2"
    split 'Config of ' "$1" ' finished.'
}

config 'Bash'               'Config - Bash.sh'
config 'Vim'                'Config - Vim.sh'
config 'Visual Studio Code' 'Config - Visual Studio Code.sh'

echo -e "\n--------------- Elderry's Config Files ---------------${RESET}\n"
