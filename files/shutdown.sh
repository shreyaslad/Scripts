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

printf "${RED}\nShutdown\n${NC}"
printf "You are running ${OSTYPE}!\n\n"

echo "Here are some options for managing your computer..."
if [ "$OSTYPE" == "darwin*" ]
then
    echo "Enter the number associated with the desired option, followed by [ENTER]:"
    read option
    echo "1. Shutdown"
    echo "2. Reboot"
    echo "3. Logout"
    echo "4. Halt"
    if [ "$option" == "1" ]
    then
        echo "Enter the number associated with the desired option, followed by [ENTER]:"
        read option2
        echo "1. Shutdown Now"
        echo "2. Shutdown with Delay"
        echo "3. Shutdown with Date"
        echo "4. Shutdown with Date and Delay"
        echo "5. Abort Shutdown"
        if [ "$option2" == "1" ]
        then
            # hi
        elif [ "$option2" == "2" ]
        then
            # hi
        elif [ "$option" == "3" ]
        then
            # hi
        elif [ "$option" == "4" ]
        then
            # hi
        elif [ "$option" == "4" ]
        then
            # hi
        else
            echo "${RED}Fatal: ${NC}The option you've entered, ${option2}, is not on the list."
    elif [ "$OPTION" == "2" ]
    then
        echo "Enter the number associated with the desired option, followed by [ENTER]:"
        read option2
        echo "1. Reboot Now"
        echo "2. Reboot with Delay"
        echo "3. Reboot with Date"
        echo "4. Reboot with Date and Delay"
        echo "5. Abort Reboot"
    elif [ "$OPTION" == "3" ]
    then
        echo "Logging out..."
        tell application "System Events" to log out
    else
        echo "${RED}Fatal: ${NC}The option you've entered, ${option}, is not on the list."
    fi
elif [ "$OSTYPE" == "msys" ]
then
    echo "no"
else
    echo "You are running an unsupported operating system... ${RED}terminating${NC}"
    exit;
fi