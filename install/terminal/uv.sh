#!/bin/bash

# Install uv - a fast Python package installer and resolver
# Install dependencies
sudo apt install -y curl

# Download and run the uv installer
echo "Downloading and installing uv..."
curl -LsSf https://astral.sh/uv/install.sh | sh

# Check if the installation was successful
if [ $? -eq 0 ]; then
    echo "uv has been successfully installed."
    
    # Add uv to PATH if it's not already there
    if [[ ":$PATH:" != *":$HOME/.cargo/bin:"* ]]; then
        echo 'export PATH="$HOME/.cargo/bin:$PATH"' >> ~/.bashrc
        echo "Added uv to PATH. Please restart your terminal or run 'source ~/.bashrc' to apply changes."
    fi
else
    echo "Failed to install uv. Please check your internet connection and try again."
    exit 1
fi

# Verify the installation
if command -v uv &> /dev/null; then
    echo "uv version: $(uv --version)"
else
    echo "uv is installed but not found in PATH. You may need to restart your terminal."
fi

# Source bashrc to apply changes immediately
source ~/.bashrc

