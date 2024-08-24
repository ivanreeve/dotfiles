#!/bin/bash

# https://github.com/ivanreeve 
# https://wiki.archlinux.org/title/Installation_guide

# install and verify latest iso
# on liveboot, check internet: ip link, ping archlinux.org

# create and format partition: cfdisk
# sda1: system partition -> fat32
# sda2: swap partition (>=4gb) -> mkswap
# sda3: root partition (>= 32gb) -> ext4

# mount partitions
# install base packages

# run timedatectl, update timezone and set 
 
# create super user: su <usrname>, password <usrname> <password>
# edit sudoers file: EDITOR=nano visudo, uncomment -m 
# run NetworkManager as Daemon

# Package installation for this setup
# Run as super user

waitlen=3

packages=(
    "pipewire"
    "pipewire-pulse"
    "fastfetch"
    "flameshot"
    "firefox"
    "kitty"
    "nemo"
    "neovim"
    "obs-studio"
    "wofi"
    "smartmontools"
)

# curl -s https://ohmyposh.dev/install.sh | bash -s
# build yay from source, then install picom-git

function primer {
    echo -e "\nIn $waitlen seconds, the following packages will be installed:\n"
    for pkg in "${packages[@]}"; do
        echo "$pkg"
    done
    echo ""
} 

function install {
    for pkg in "${essentials[@]}"; do
        pacman -S "$pkg"
    done
}

primer
sleep ${waitlen}s
install
