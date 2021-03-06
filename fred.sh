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

echo "My SQL Username:"
read USERNAME

echo "MySQL Password:"
read PASS

mysql -u $USERNAME -p fred < fred.sql

mysql -u $USERNAME -p$PASS -e "INSERT INTO tblIntro (ID, Name, Color, Age, Movie, Hair, Date)
                       VALUES
                       ('$STRING', '$NAME', '$COLOR', '$AGE', '$MOVIE', '$HAIR', '$DATE');" fred

echo "Done with SQL"

mysqldump -u $USERNAME -p$PASS fred > fred.sql


# need to load database: fred
# enter problem?
# append data to .csv file
# echo "$NAME, $COLOR, $AGE, $MOVIE, $HAIR, $STRING, $DATE" >> fred.csv
