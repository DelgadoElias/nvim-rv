#!/bin/bash

# Exit script on any error
set -e

# Function to install a cargo package
install_cargo_package() {
  package=$1
  echo "Installing $package..."
  cargo install "$package"
}

# Function to download and install a Nerd Font
install_nerd_font() {
  font_name=$1
  download_url=$2
  font_dir="$HOME/.local/share/fonts"

  echo "Downloading $font_name..."
  mkdir -p "$font_dir"
  wget -O "$font_dir/$font_name.zip" "$download_url"

  echo "Installing $font_name..."
  unzip "$font_dir/$font_name.zip" -d "$font_dir"
  rm "$font_dir/$font_name.zip"

  # Update font cache on Linux
  if command -v fc-cache &>/dev/null; then
    fc-cache -fv
  fi

  echo "$font_name installed successfully!"
}

# List of cargo packages to install
cargo_packages=(
  atac
  silicon
  presenterm
)

# List of Nerd Fonts to install
nerd_fonts=(
  "Iosevka https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Iosevka.zip"
  "IosevkaMono https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/IosevkaMono.zip"
)

# Install each cargo package
for package in "${cargo_packages[@]}"; do
  install_cargo_package "$package"
done

# Install each Nerd Font
for font in "${nerd_fonts[@]}"; do
  font_name=$(echo "$font" | awk '{print $1}')
  download_url=$(echo "$font" | awk '{print $2}')
  install_nerd_font "$font_name" "$download_url"
done

echo "All cargo packages and Nerd Fonts installed successfully!"
