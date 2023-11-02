
#For installing multiple packages

#!/bin/bash

#!/bin/bash

# Check the number of arguments passed, if none, prompt the user
if [[ $# -eq 0 ]]; then
    echo "Usage: Provide software names as command line arguments"
    exit 1
fi

# Check if the script is run as the root user or with sudo privilege
#To change to the root user use sudo su
if [[ $(id -u) -ne 0 ]]; then
    echo "Please run as the root user or use sudo privilege"
    exit 2
fi

# Loop through the software names provided as arguments
for software in "$@"; do
    # Check if the software is already installed
    if command -v "$software" &> /dev/null; then
        echo "Already installed: $software"
    else
        echo "Installing $software..."
        sudo apt install "$software" -y > /dev/null
        
        # Check the exit status of the apt command
        if [[ $? -eq 0 ]]; then
            echo "Successfully installed: $software"
        else
            echo "Unable to install $software"
        fi
    fi
done

