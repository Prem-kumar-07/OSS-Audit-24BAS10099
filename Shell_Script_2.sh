#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Prem Kumar | Course: Open Source Software
PACKAGE="git" 

if dpkg -l | grep -q "^ii  $PACKAGE "; then
    echo "SUCCESS: $PACKAGE is installed on this system."
    echo "------------------------------------------"
    dpkg -s $PACKAGE | grep -E 'Package|Version|Status'
    echo "------------------------------------------"
else
    echo "ERROR: $PACKAGE is NOT installed."
    echo "Please install it using: sudo apt install $PACKAGE"
fi
echo "Package Philosophy:"
case $PACKAGE in
    httpd|apache2)
        echo "Apache: The web server that built the open internet." ;;
    mysql|mariadb-server)
        echo "MySQL: Open source at the heart of millions of apps." ;;
    git)
        echo "Git: Distributed version control designed for speed and integrity." ;;
    vim)
        echo "Vim: The ubiquitous text editor built for efficiency." ;;
    python3)
        echo "Python: A powerful language that emphasizes code readability." ;;
    *)
        echo "Description: An essential open-source tool for this Linux system." ;;
esac
echo "=========================================="