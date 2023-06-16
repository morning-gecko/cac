#!/bin/bash

# Check if nvm is installed
if ! command -v nvm &> /dev/null
then
    echo "nvm not found, installing..."
    
    # Download and install nvm
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
    
    # Source nvm script to the current shell session
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
else
    echo "nvm found."
fi

# Install Node.js version 18
nvm install 18

# Set Node.js version 18 as the default version
nvm alias default 18

