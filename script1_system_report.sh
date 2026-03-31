#!/bin/zsh

# Script 1 : System Identity Report
# Author : Ronit Bhat

STUDENT_NAME="Ronit Bhat"
SOFTWARE_CHOICE="Git (Version Control System)"

KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
DISTRO=$(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | tr -d '"')
CURRENT_DATE=$(date "+%Y-%m-%d %H:%M:%S")
GIT_VERSION=$(git --version 2>/dev/null)

echo "============================="
echo "Open Source Audit - $STUDENT_NAME"
echo "Software focus: $SOFTWARE_CHOICE"
echo "============================="
echo "OS Distro : $DISTRO"
echo "Kernel : $KERNEL"
echo "Date/Time : $CURRENT_DATE"
echo "User : $USER_NAME"
echo "Home Dir : $HOME_DIR"
echo "Uptime : $UPTIME"
echo "Git Version : $GIT_VERSION"
echo "============================="
