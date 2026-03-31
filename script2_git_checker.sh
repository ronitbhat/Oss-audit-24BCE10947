#!/bin/zsh

# Script 2 : Git Installation Checker
# Author : Ronit Bhat

echo "============================="
echo "   Git Installation Checker  "
echo "============================="

if command -v git &> /dev/null
then 
    echo "Git is installed"
    echo "Version: $(git --version)"
    echo "Location: $(which git)"
else 
    echo "Git is NOT installed"
fi

echo "============================="
