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

printf "\nMove pls get out da wae!\n"
printf "Here are some things you can do: \n"
printf "${LIGHTRED}1 ${NC}- learn more ${LIGHTRED}(help)${NC}\n"
printf "${CYAN}2 ${NC}- rename a file ${CYAN}(rename)${NC}\n"
printf "${GREEN}3 ${NC}- move a file ${GREEN}(move)${NC}\n"
printf "4 - remove a file or directory (rm)\n"
printf "${PURPLE}5 ${NC}- copy a file to a directory ${PURPLE}(copy)${NC}\n"
printf "${BLUE}6 ${NC}- move all files starting with an extension to a directory ${BLUE}(extmv)${NC}\n"
printf "${LIGHTGREEN}7 ${NC}- rename all files starting with an extension ${LIGHTGREEN}(extrename)${NC}\n"
printf "\n"
echo "Type the option you want (either word in parenthesis or number associated with it), followed by [ENTER]:"
read option
printf "\n"
	if [ "$option" = "help" ] || [ "$option" = "1" ]
	then
			printf "The is the help section for MovePlsGetOutDaWae:\n"
			echo "To start of, restart the program, and at the prompt, type in one of the following words in parenthesis above the prompt or the number next to it. If you type in anything not specified, you will get an error and you'll have to restart the process"
	elif [ "$option" = "rename" ] || [ "$option" = "2" ]
	then
			printf "Rename Files"
			printf "What is the name of the file if its in this directory or the full directory (/Users/username/folder/folder/file) of the file if it's another one, followed by [ENTER]:"
			read fileorig
				if [ ! -f "$fileorig" ]
				then
					printf "${RED}Fatal: ${NC}File ${fileorig} not found. Terminating.\n\n"
					exit;
				else 
					printf "Type the new name of the file (including the extension and the directory), followed by [ENTER]:\n"
					read filenew
					mv ${fileorig} ${filenew}
					printf "Done\n\n"
				fi
	elif [ "$option" = "move" ] || [ "$option" = "3" ]
	then
			printf "Move Files"
			printf "Enter the directory of the file, followed by [ENTER]:"
			read fileold
			if [ ! -f "$fileold" ]
			then
				printf "${RED}Fatal:${NC} File ${fileold} does not exist. Terminating\n\n"
				exit;
			else
				printf "Enter the directory of the new file destination (note: must be a folder), followed by [ENTER]:"
				read newdir
				if [ ! -d "$newdir" ]
				then
					printf "${RED}Fatal: ${NC}Directory ${newdir} does not exist. Terminating\n\n"
					exit;
				else
					mv ${fileold} ${newdir}
					printf "File ${LIGHTGREEN}${fileold} ${NC}has been successfully moved to dir ${LIGHTGREEN}${newdir}/${NC}\n\n"
				fi
			fi
	elif [ "$option" = "rm" ] || [ "$option" = "4" ]
	then
		echo "Removing Files/Directories"
		printf "Enter the path to the file or directory you wish to remove, followed by [ENTER] (note, you may place more than one argument separated by a space):\n"
		read filedir
		rm -rf ${filedir}
		printf "${LIGHTGREEN}Successfully deleted ${fildir}.${NC}\n\n"
	elif [ "$option" = "copy" ] || [ "$option" = "5" ]
	then
			echo "Copy Files/Directories"
			echo "Enter the directory or file you wish to copy"
			#$ cp -p source dir
	elif [ "$option" = "extmv"] || [ "$option" = "6" ]
	then	
		echo "Rename all files with an extension"
		echo "Type in the directory of the files, followed by [ENTER]:"
		read extdir
		if [ ! -d "$extdir" ]
		then
			printf "${RED}Fatal: ${NC}Dir ${extdir} does not exit. Terminating.\n\n"
			exit;
		else
			echo "Type in the directory that you want to move these files to, followed by [ENTER]:"
			read mvdir
			if [ ! -d "$mvdir" ]
			then
				printf "${RED}Fatal: ${NC}The directory you entered does not exist. Terminating.\n\n"
				exit;
			else
				echo "Type in the extension of the files (don't include the period), followed by [ENTER]:"
				read extfile
				mv ${extdir}/*.${extfile} ${mvdir}
				printf "${LIGHTGREEN}Successfully moved all files with .${extfile} extension in directory ${extdir} to directory ${mvdir}. \n\n${NC}"
			fi
		fi
	elif [ "$option" = "extrename" ] || [ "$option" = "7" ]
	then 
		echo "Under Construction/"
	else
		printf "${RED}Fatal: ${NC}You entered a value that does not exist. Terminating.\n\n"
		exit;
	fi
