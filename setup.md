# Installation (REQUIRED)

> Login to root on live iso

username = `root`
pasword = `voidlinux`

## Set Font of TTY on 4K (Optional)

> This command just increases the font size by 2*

`setfont -d`

## Install Void Linux Offline (REQUIRED)

> Type the installer command to launch a TUI of guided install

`void-installer`

> Keyboard ~ Select Keyboard gb / uk

> Network ~ Skip network for offline install

> Source ~ Choose local for offline install

> Hostname ~ LKCQ00 - Replace numbers with pc identifier number

> Locale & Timezone ~ Choose EU -> London

> Root Password ~ Same as User LKC

> User Account ~ lkc - USER PASSWORD

> Bootloader ~ Select main drive for bootlaoder

### Setup Disk (REQUIRED)

> Partition One is FAT32 - 512MB - /boot/efi

> Partition Two is ext4 - MAX - /

### Groups (REQUIRED)

> wheel, audio, video, input, storage

### Services (REQUIRED)

> wpa_supplicant, dhcpcd

# WiFi Setup (OPTIONAL)

> Get id name of your wifi card interface

`ip a`

> Generate the WiFi configuration

`wpa_passphrase "WIFI SSID" "WIFI PASSWORD" | sudo tee /etc/wpa_supplicant/wpa_supplicant.conf`

> Connect to WiFi

`sudo wpa_supplicant -B -i [WIFI CARD / INTERFACE NAME] -c /etc/wpa_supplicant/wpa_supplicant.conf`

> Request IP Address

`sudo dhcpcd [WIFI CARD / INTERFACE NAME]`

> Test the Internet

`ping google.com`

# Nvidia Graphics Driver Setup (REQUIRED for Nvidia GPU)

> UPDATE SYSTEM

`sudo xbps-install -u xbps`

> Add voids non-free repos to system

`sudo xbps-install -S void-repo-nonfree`

`sudo xbps-install -Syu`

> Install Linux Headers and Drivers

`sudo xbps-install -S linux-headers nvidia dkms`

> Enable DRM Modesetting

`sudo vim /etc/modprobe.d/nvidia.conf`

> Add this below code to that file

`options nvidia-drm modeset=1`

> Blacklist nouveau from grubo

`sudo vim /etc/default/grub`

> Update this line

`GRUB-CMDLINE_LINUX-DEFAULT="loglevel=4 quiet modprobe.blacklist=nouveau rd.driver.blacklist=nouveau"`

> Update initramfs

`sudo xbps-reconfigure -fa`

> Reboot the system

`sudo reboot`

# WM / DE Setup (REQUIRED)

> Install basics

`sudo xbps-install -S xorg-minimal xorg-fonts i3 i3status i3lock rofi feh alacritty firefox-esr xrandr git xdg-utils setxkbmap`

## Setup Firefox Scaling (OPTIONAL)

> Open new tab and go to about:config

> Press accept risk

> Search for

`layout.css.devPixelsPerPx`

> Change value to `2.0`

## Setup Auto Login and Route to I3 Lock
> This command sets the config to auto login tty

`sudo vim  /etc/sv/agetty-tty1/conf`

`GETTY_ARGS="--autologin your_username --noclear"`

 
