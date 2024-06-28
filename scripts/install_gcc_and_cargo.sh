#!/bin/bash

# Exit script on any error
set -e

# Function to install gcc and build-essential
install_gcc_and_build_essential() {
    echo "Updating package lists..."
    sudo apt-get update

    echo "Installing gcc and build-essential..."
    sudo apt-get install -y build-essential

    echo "gcc and build-essential installed successfully!"
}

# Function to install Rust and Cargo
install_cargo() {
    echo "Downloading and installing Rust..."
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

    echo "Adding Cargo to the PATH..."
    source $HOME/.cargo/env

    echo "Cargo installed successfully!"
}

# Install gcc and build-essential
install_gcc_and_build_essential

# Install Cargo
install_cargo

echo "gcc, build-essential, and Cargo installed successfully!"
