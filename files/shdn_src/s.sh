#!/bin/bash

function memes() {
    if [ "$option" == "1" ]
    then
        printf "\n${LIGHTRED}1.${NC} Shutdown Now\n"
        printf "${YELLOW}2.${NC} Shutdown with Delay\n"
        printf "${LIGHTGREEN}3.${NC} Shutdown with Date\n"
        printf "${LIGHTBLUE}4.${NC} Shutdown with Date and Delay\n"
        printf "${LIGHTPURPLE}5.${NC} Abort Shutdown\n\n"
        echo "Enter the number asscociated with the option you want, followed by [ENTER]: "
        read option2
    elif [ "$option" == "2" ]
    then
        echo "You chose option 2"
    elif [ "$option" == "3" ]
    then
        echo "You chose option 3"
    else
        printf "${RED}Fatal:${NC}The option you chose, ${option}, is not an option.\n\n"
    fi
}

memes