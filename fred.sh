#!/bin/bash

#declare colors
GREEN=`tput setaf 2`
RED=`tput setaf 1`
BLUE=`tput setaf 4`
MAGENTA=`tput setaf 5`
CYAN=`tput setaf 6`

# no color
NC='\033[0m'

# ask for name
echo -e "${RED}What is your name?${NC}"

read NAME

# ask for color
echo -e "${GREEN}What is your favorite color?${NC}"

read COLOR

# ask for age
echo -e "${BLUE}How old are you${NC}?"

read AGE

# ask for movie
echo -e "${MAGENTA}What is your favorite movie?${NC}"

read MOVIE

# ask for hair color
echo -e "${CYAN}What color is your hair?${NC}"

read HAIR

# generate random string
STRING=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)

# generate date
DATE=$(date +"%m-%d-%Y" )

#append data to .csv file
echo "$NAME, $COLOR, $AGE, $MOVIE, $HAIR, $STRING, $DATE" >> fred.csv