#!/bin/bash

# Update and install necessary packages
sudo apt-get update
sudo apt-get install -y wget gnupg software-properties-common

# Download and install the NVIDIA CUDA keyring
wget https://developer.download.nvidia.com/compute/cuda/repos/debian12/x86_64/cuda-keyring_1.1-1_all.deb
sudo dpkg -i cuda-keyring_1.1-1_all.deb
rm cuda-keyring_1.1-1_all.deb

# Update and install CUDA toolkit
sudo apt-get update
sudo apt-get install -y cuda-toolkit-12-4

# Add CUDA to PATH and LD_LIBRARY_PATH
echo 'export PATH=/usr/local/cuda/bin/:$PATH' >> ~/.bashrc
echo 'export LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARY_PATH' >> ~/.bashrc

# Source bashrc to apply changes immediately
source ~/.bashrc