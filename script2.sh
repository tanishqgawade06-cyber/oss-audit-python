#!/bin/bash

# Script 2: FOSS Package Inspector
# Author: Tanishq

# Chosen package
PACKAGE="python3"

# Check if package is installed
if dpkg -l | grep -q "$PACKAGE"; then
    echo "$PACKAGE is installed."
    
    # Display package details (version, description)
    dpkg -l | grep "$PACKAGE"
    
else
    echo "$PACKAGE is NOT installed."
fi

# Description using case statement
case $PACKAGE in
    python3)
        echo "Python: A powerful open-source programming language." ;;
    git)
        echo "Git: A distributed version control system." ;;
    vim)
        echo "Vim: A highly configurable text editor." ;;
    *)
        echo "No description available." ;;
esac
