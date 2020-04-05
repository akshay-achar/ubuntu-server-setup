#!/bin/bash

USER=ubuntu
PEM_FILE="Akshay-Development-Server.pem"

if [ $2 ] 
then 
  USER=$2
fi

if [ $3 ] 
then 
  PEM_FILE=$3
fi


cd ~/Downloads

ssh -i $PEM_FILE $USER@$1

