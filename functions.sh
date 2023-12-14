#!/bin/bash


ID=$(id -u)

VALIDATE(){

  if [ $1 -ne 0 ]

  then
    echo "ERROR :: $2...failed"
    exit 1
  else
    echo "$2...... success"
  fi
}

if [ $ID -ne 0 ]
then
  echo "ERROR :: please run this script with root user"
  exit 1
else
  echo "your are root youser "
fi

yum install mysql -y

VALIDATE $? "Installing MySQL"

yum install git -y

VALIDATE $? "Installing GIT"
