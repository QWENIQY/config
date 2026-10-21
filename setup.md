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

> 
audio, video, input, storage, users, xbuilder

### Services (REQUIRED)

> wpa_supplicant, dhcpcd, acpid, chronyd


# Nvidia Graphics Driver Setup (REQUIRED for Nvidia GPU)

> UPDATE SYSTEM

`sudo xbps-install -u xbps`

> Add voids non-free repos to system

`sudo xbps-install -S void-repo-nonfree`

`sudo xbps-install -Syu`

> Install Linux Headers and Drivers

`sudo xbps-install -S linux-headers nvidia dbus vim'

> Reboot the system

`sudo reboot`

# WM / DE Setup (REQUIRED)

> Install basics

`sudo xbps-install -S xorg-minimal xorg-fonts mesa-dri i3 i3status i3lock rofi feh alacritty firefox-esr xrandr git`

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

 
