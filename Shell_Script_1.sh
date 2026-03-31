#!/bin/bash
# Script 1: System Identity Report
# Author: Prem Kumar | Course: Open Source Software
STUDENT_NAME="Prem Kumar"       
SOFTWARE_CHOICE="Python"   
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
HOME_DIR=$HOME
CURRENT_DATE=$(date)
DISTRO=$(cat /etc/os-release | grep "PRETTY_NAME" | cut -d '"' -f 2)

echo "=========================================="
echo "    Open Source Audit - $STUDENT_NAME"
echo "=========================================="
echo "Distro   : $DISTRO"
echo "Kernel   : $KERNEL"
echo "User     : $USER_NAME"
echo "Home     : $HOME_DIR"
echo "Uptime   : $UPTIME"
echo "Date/Time: $CURRENT_DATE"
echo "------------------------------------------"
echo "License  : This operating system is covered"
echo "           under the GNU GPL (General Public License)."
echo "=========================================="