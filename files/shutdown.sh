#!/bin/bash

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

testprompt() {
    printf "Here are some options for managing your computer...\n"
printf "${LIGHTRED}1.${NC} Shutdown\n"
printf "2. Reboot\n"
printf "3. Logout\n"
printf "4. Halt\n\n"
printf "Enter the number associated with the option you want, followed by [ENTER]: "
read option
if [ "$option" = "1" ]
then
    echo "Here are the shutdown options:"
    printf "1. Shutdown Now\n"
    printf "2. Shutdown with Delay\n"
    printf "3. Shutdown with Date\n"
    printf "4. Shutdown with Date and Delay\n"
    printf "5. Abort Shutdown\n\n"
    printf "Enter the number associated with the desired option, followed by [ENTER]: "
    read option2
elif [ "$OPTION" == "2" ]
then
    echo "Here are the reboot options:"
    printf "1. Reboot Now\n"
    printf "2. Reboot with Delay\n"
    printf "3. Reboot with Date\n"
    printf "4. Reboot with Date and Delay\n"
    printf "5. Abort Reboot\n"
    printf "Enter the number associated with the desired option, followed by [ENTER]: "
    read option3
elif [ "$OPTION" == "3" ]
then
    printf "Logging out..."
    tell application "System Events" to log out
elif [ "$OPTION" == "4" ]
then
    printf "Halting any shutdown ot logout processes..."
    sudo halt
else
    printf "${RED}Fatal: ${NC}The option you've entered, ${option}, is not on the list.\n\n"
    testprompt
fi
}

printf "${RED}\nShutdown${NC}\n"

printf "Here are some options for managing your computer...\n"
printf "${LIGHTRED}1.${NC} Shutdown\n"
printf "2. Reboot\n"
printf "3. Logout\n"
printf "4. Halt\n\n"
printf "Enter the number associated with the option you want, followed by [ENTER]: "
read option
if [ "$option" = "1" ]
then
    echo "Here are the shutdown options:"
    printf "1. Shutdown Now\n"
    printf "2. Shutdown with Delay\n"
    printf "3. Shutdown with Date\n"
    printf "4. Shutdown with Date and Delay\n"
    printf "5. Abort Shutdown\n\n"
    printf "Enter the number associated with the desired option, followed by [ENTER]: "
    read option2
elif [ "$OPTION" == "2" ]
then
    echo "Here are the reboot options:"
    printf "1. Reboot Now\n"
    printf "2. Reboot with Delay\n"
    printf "3. Reboot with Date\n"
    printf "4. Reboot with Date and Delay\n"
    printf "5. Abort Reboot\n"
    printf "Enter the number associated with the desired option, followed by [ENTER]: "
    read option3
elif [ "$OPTION" == "3" ]
then
    printf "Logging out..."
    tell application "System Events" to log out
elif [ "$OPTION" == "4" ]
then
    printf "Halting any shutdown ot logout processes..."
    sudo halt
else
    printf "${RED}Fatal: ${NC}The option you've entered, ${option}, is not on the list.\n\n"
    testprompt
fi