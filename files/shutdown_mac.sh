#!/bin/bash

source ./shdn_src/s.sh

shdn() {

# COLOR ENVS
BLACK='\033[0;30m'
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT_GRAY='\033[0;37m'
DARK_GRAY='\033[1;30m'
LIGHTRED='\033[1;31m'
LIGHTGREEN='\033[1;32m'
YELLOW='\033[1;33m'
LIGHTBLUE='\033[1;34m'
LIGHTPURPLE='\033[1;35m'
LIGHTCYAN='\033[1;36m'
WHITE='\033[1;37m'
NC='\033[0m'

printf "${RED}Shutdown${NC}\n\n"
printf "Listed below are some options for shutting down your computer.\n"
printf "${LIGHTRED}1.${NC} Shutdown Now\n"
printf "${YELLOW}2.${NC} Restart\n"
printf "${LIGHTGREEN}3.${NC} Abort Shutdown/Restart\n"
printf "${YELLOW}4.${NC} Sleep"
printf "Enter the number associated with the option you want, followed by [ENTER]: "
read option
if [ "$option" == "1" ]
then
    echo "The shutdown sequence will being in 10 seconds. Would you like to abor the shutdown process?"
else if [ "$option" == "2" ]
then
    echo "2"
else if [ "$option" == "3" ]
then
    echo "3"
else if [ "$option" == "4" ]
then
    echo "4"
else
    printf "${RED}Fatal:${NC} The option you've entered (${option}) is not a valid option, terminating.\n\n"
    exit;
fi
}

shdn
