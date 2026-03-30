#!/bin/bash

# Script 1: System Identity Report
# Author: Ansh Arora
# Course: Open Source Software

# --- Variables ---
STUDENT_NAME="Ansh Arora"

# --- System Info ---
KERNEL=$(uname -r)
DISTRO=$(lsb_release -d | cut -f2)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
CURRENT_DATE=$(date)

# --- Display ---
echo "======================================"
echo "   Open Source Audit - $STUDENT_NAME"
echo "======================================"

echo "Distribution : $DISTRO"
echo "Kernel       : $KERNEL"
echo "User         : $USER_NAME"
echo "Home Dir     : $HOME_DIR"
echo "Uptime       : $UPTIME"
echo "Date/Time    : $CURRENT_DATE"

echo "--------------------------------------"
echo "This system is typically licensed under"
echo "the GNU General Public License (GPL)."
echo "--------------------------------------"
