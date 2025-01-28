#!/bin/bash

# Hyprland Setup Script for Arch Linux

# Update and install base packages
echo "Updating system and installing base packages..."
sudo pacman -Syu --noconfirm
echo "Installing base-devel and git..."
sudo pacman -S --needed base-devel git --noconfirm

# Install yay (AUR Helper)
echo "Installing yay..."
git clone https://aur.archlinux.org/yay.git
cd yay
echo "Building and installing yay..."
makepkg -si --noconfirm
cd ..
rm -rf yay

echo "yay installed successfully."

# Install Hyprland
echo "Installing Hyprland..."
yay -S hyprland-git --noconfirm
echo "Hyprland installed successfully."

# Install supporting tools and dependencies
echo "Installing supporting tools and dependencies..."
yay -S nano swww dunst waybar poweralertd --noconfirm
yay -S kitty rofi thunar firefox-developer-edition looking-glass --noconfirm
yay -S hyprpicker-git hyprlock-git wlogout --noconfirm
yay -S mate-polkit ffmpeg neovim viewnior pavucontrol starship wl-clipboard wf-recorder grimblast-git ffmpegthumbnailer tumbler playerctl noise-suppression-for-voice thunar-archive-plugin aylurs-gtk-shell sddm nwg-look nordic-theme papirus-icon-theme noto-fonts noto-fonts-emoji brightnessctl --noconfirm
echo "Supporting tools and dependencies installed successfully."

# Install repository tools
echo "Installing repository tools..."
yay -S zip unzip visual-studio-code-bin --noconfirm
echo "Repository tools installed successfully."

# Install Waybar and customize themes
echo "Installing Waybar and related utilities..."
yay -S nerd-fonts pamixer nm-connection-editor --noconfirm
yay -S nwg-look gtk nordic-theme papirus-icon-theme --noconfirm
echo "Waybar and related utilities installed successfully."

# GTK Theme settings (manual step)
echo "Please open GTK Settings and set the following manually:"
echo "Widget Theme: Nordic"
echo "Icon Theme: Papirus"

# Install GitHub CLI
echo "Installing GitHub CLI..."
yay -S github-cli --noconfirm
gh auth login
echo "GitHub CLI installed successfully."

# Install Nordzy cursor theme
echo "Installing Nordzy cursor theme..."
gh repo clone guillaumeboehm/Nordzy-cursors
cd Nordzy-cursors
./install.sh
cd ..
rm -rf Nordzy-cursors
echo "Nordzy cursor theme installed successfully."
echo "Recommended cursor theme: Cappuccino Frappe Dark"

# VS Code profile sync
echo "Sync your VS Code profile by visiting the following link:"
echo "https://vscode.dev/profile/github/e8948df9105b1ea071d79279b7faafb5"

# Moving config files
echo "Moving config files..."
echo "Creating Pictures folder inside your home folder..."
mkdir -p ~/Pictures

echo "Moving background images..."
mv ./backgrounds ~/Pictures/

echo "Moving Hyprland-related configuration files..."
mv hyprland ~/.config/
mv kitty ~/.config/
mv rofi ~/.config/
mv waybar ~/.config/
mv wlogout ~/.config/
echo "Configuration files moved successfully."

# Final notes
echo "Setup complete! Ensure all dependencies are properly installed and customize further as needed."
echo "Enjoy your Hyprland experience!"
