#!/bin/zsh

# Script 3 : Directory Auditor
# Author : Ronit Bhat

echo "========================="
echo "    Directory Auditor"
echo "========================="

DIRS=("/etc" "/usr/bin" "/home")

for DIR in ${DIRS[@]}
do
    echo "Checking : $DIR"
    
    if [ -d "$DIR" ]; then
        echo "Exists"
        ls -ld "$DIR"
    else
        echo "Not found"
    fi

    echo "-----------------------"
done

echo "========================="
