#!/bin/bash

DATE=$(date)

PERSON1=$1
PERSON2=$2

echo "exicutiondate:: ${DATE}"
echo "$PERSON1: Hello $PERSON2, Good Morning"
echo "$PERSON2: Hi $PERSON1, very Good Morning"
echo "$PERSON1: How are you $PERSON2?"
echo "$PERSON2: I am good $PERSON1, How are you"

echo "please enter the username"

username=bhaskar
read -s USERNAME

echo "please enter psswd"

read -s PASSWD

echo "sucess $username"

echo "passwd is : passwd"