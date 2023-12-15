#!/bin/bash


ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)

LOGFILE="/temp/$0-$TIMESTAMP.log"
VALIDATE(){

  if [ $1 -ne 0 ]

  then
    echo "ERROR :: $2...$R failed $N"
    exit 1
  else
    echo "$2...... $G success $N"
  fi
}

if [ $ID -ne 0 ]
then
  echo "$R ERROR :: please run this script with root user"
  exit 1
else
  echo "your are root youser "
fi

yum install mysql -y >>LOGFILE

VALIDATE $? "Installing MySQL"

yum install git -y >>LOGFILE

VALIDATE $? "Installing GIT"
