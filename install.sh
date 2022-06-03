#!/usr/bin/env bash

set -e

RED="\e[31m"
GREEN="\e[32m"
ENDCOLOR="\e[0m"

if ! command -v "touchegg" &> /dev/null
then
    printf "${RED}Touchegg is not installed${ENDCOLOR}\n"
    printf "Please diy :) https://github.com/JoseExposito/touchegg\n"
    exit 1
fi

printf "Script will create dir in ~/.config and copy config file in it\n"
printf "${GREEN}"
read -p "Are you sure? (y/n) " -n 1 -r
printf "${ENDCOLOR}\n"

if [[ $REPLY =~ ^[Yy]$ ]]
then
    mkdir -p ~/.config/touchegg
    cp touchegg.conf ~/.config/touchegg/
    printf "${GREEN}Done!${ENDCOLOR}\n"
else
    printf "${RED}Abort!${ENDCOLOR}\n"
fi


