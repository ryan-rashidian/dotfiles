#!/usr/bin/env bash
#
# Arch Linux + Hyprland post-bootstrap setup script.
#
set -e # stop on error

sudo pacman -Syu --noconfirm
sudo pacman -S --needed --noconfirm base-devel git

if ! command -v yay &> /dev/null; then
    echo "Installing Yay AUR..."
    mkdir -p ~/tmp
    git clone https://aur.archlinux.org/yay-bin.git ~/tmp/yay-bin
    cd ~/tmp/yay-bin
    makepkg -si --noconfirm
    cd ~
    rm -rf ~/tmp/yay-bin
fi

yay -Syu --noconfirm

# Essentials
echo "Installing essentials..."
yay -S --noconfirm \
    dosfstools \
    htop \
    tmux \
    pyenv \
    python-pipx \
    openssh \
    sshfs \
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
    arm-none-eabi-newlib

# Extras
echo "Installing extras..."
yay -S --noconfirm \
    ttf-fira-code \
    ttf-firacode-nerd \
    qalculate-gtk \
    adw-gtk-theme \
    gruvbox-dark-gtk \
    gruvbox-dark-icons-gtk \
    fastfetch \
    obsidian \
    obs-studio \
    kicad

# Hyprland
echo "Installing Hyprland..."
yay -S --noconfirm \
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
    mpv \
    mako

xdg-mime default imv.desktop image/png
xdg-mime default imv.desktop image/jpeg
xdg-mime default zathura.desktop application/pdf
xdg-mime default mpv.desktop video/x-matroska
xdg-mime default mpv.desktop video/webm
xdg-mime default mpv.desktop video/mp4

systemctl --user enable --now mako.service

# Firewall
# - Basic firewalld configuration
yay -S --noconfirm firewalld
sudo systemctl enable firewalld --now

echo "Bootstrap Complete."

