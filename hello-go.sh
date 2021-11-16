#!/bin/bash
#################################################################
# Script to bring up some go functions in a simple way
# Doesn't work on windows                
#                                                                    
# Autor: Erik Tonon                                                             
# Data: 15/11/2021                                                              
# 
#         
# use: ./hello-go.sh or bash hello-go.sh                                                 
#                                                                               
#################################################################

#Validate if the go binary is installed
if hash go; then go version
else 
    clear
  echo "Golang not found"
  echo "please install"
  echo "https://golang.org/doc/install"
fi

SRC="src/app"

echo "Choose a Menu Option:"
echo
echo "1 - Build App"
echo "2 - Run App"
echo "3 - Build and run App"
echo "q - Exit"

read -p "option: " option
echo

# Option Go
case "$option" in
   1)
        echo "Option 1 selected"
        (cd $SRC && go build hello-world.go)
        sleep 3
        ;;
   2)
        echo "Option 2 selected"
        (cd $SRC && ./hello-world)

        sleep 3
        ;;
   3)
        echo "Option 3 selected"
        (cd $SRC && go run hello-world.go)
        sleep 3
        ;;
   q)
        echo "Bye..."
        sleep 3
        exit 0
        ;;
   *)
        echo "Ops command not found"
        exit 2
        ;;
esac