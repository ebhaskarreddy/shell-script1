#!/bin/bash

ID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

VALIDATE(){
  if [ $1 -ne 0 ]
  then
   echo -e  "$2.. $R failed $N"
  else
    echo -e "$2.. $G succes $N"
    fi
    }
if [ $ID -ne 0 ]
then
  echo "$R ERROR :: run the script with root user $N"
  exit 1
else
  ech "you are a root user"
  fi

  for package in $@
  do
     yum list installed $package &>>LOGFILE # check package is installed or not
    if [ $? -ne 0 ]
    then
      yum install $package -y &>>LOGFILE #install the package
      VALIDATE $? "installation of $package"
     else
            echo -e "$package is already installed ... $Y SKIPPING $N"
        fi
    done
