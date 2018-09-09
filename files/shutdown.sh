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


printf "${RED}\nShutdown${NC}\n"
printf "${BLUE}hi there${NC}\n"

echo "Here are some options for managing your computer..."
    echo "Enter the number associated with the desired option, followed by [ENTER]:"
    
    echo "1. Shutdown"
    echo "2. Reboot"
    echo "3. Logout"
    echo "4. Halt"
    read option
    if [ "$option" = "1" ]
    then
        echo "Enter the number associated with the desired option, followed by [ENTER]:"
        
        echo "1. Shutdown Now"
        echo "2. Shutdown with Delay"
        echo "3. Shutdown with Date"
        echo "4. Shutdown with Date and Delay"
        echo "5. Abort Shutdown"
        read option2
    elif [ "$OPTION" == "2" ]
    then
        echo "Enter the number associated with the desired option, followed by [ENTER]:"
        
        echo "1. Reboot Now"
        echo "2. Reboot with Delay"
        echo "3. Reboot with Date"
        echo "4. Reboot with Date and Delay"
        echo "5. Abort Reboot"
        read option3
    elif [ "$OPTION" == "3" ]
    then
        echo "Logging out..."
        tell application "System Events" to log out
    elif [ "$OPTION" == "4" ]
    then
        echo "Halting any shutdown ot logout processes..."
        sudo halt
    else
        echo "${RED}Fatal: ${NC}The option you've entered, ${option}, is not on the list."
    fi
