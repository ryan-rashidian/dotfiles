#!/usr/bin/env bash
#
# Arch Linux + Hyprland post-bootstrap setup script.
#
set -e # stop on error

sudo pacman -Syu --noconfirm
sudo pacman -S --needed --noconfirm base-devel git

if ! command -v paru &> /dev/null; then
    echo "Installing Paru AUR..."
    mkdir -p ~/tmp
    git clone https://aur.archlinux.org/paru.git ~/tmp/paru
    cd ~/tmp/paru
    makepkg -si --noconfirm
    cd ~
    rm -rf ~/tmp/paru
fi

paru -Syu --noconfirm

# Essentials
echo "Installing essentials..."
paru -S --noconfirm \
    htop \
    tmux \
    pyenv \
    openssh \
    ripgrep \
    unzip \
    curl \
    wget \
    tree \
    kitty \
    ghostty \
    neovim \
    firefox \
    nwg-look \
    thunar \
    npm \
    nodejs \
    clang \
    cmake \
    arm-none-eabi-gcc \
    arm-none-eabi-newlib \
    minicom

# Extras
echo "Installing extras..."
paru -S --noconfirm \
    ttf-firacode \
    ttf-firacode-nerd \
    qalculate-gtk \
    adw-gtk-theme \
    gruvbox-dark-gtk \
    gruvbox-dark-icons-gtk \
    obs-studio \
    kicad

# Hyprland
echo "Installing Hyprland..."
paru -S --noconfirm \
    hyprland \
    hyprpaper \
    waybar \
    wofi \
    wl-clipboard \
    xdg-desktop-portal-hyprland \
    pavucontrol \
    udiskie \
    zathura \
    imv \
    mpv

xdg-mime default imv.desktop image/png
xdg-mime default imv.desktop image/jpeg
xdg-mime default zathura.desktop application/pdf
xdg-mime default mpv.desktop video/x-matroska
xdg-mime default mpv.desktop video/webm
xdg-mime default mpv.desktop video/mp4

# Firewall
# - Basic firewalld configuration
paru -S --noconfirm firewalld
sudo systemctl enable firewalld --now

echo "Bootstrap Complete."

