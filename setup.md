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

> dbus, dhcpcd

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

> Add voids non-free repos to system

`sudo xbps-install -S void-repo-nonfree`

`sudo xbps-install -Syu`

> Install Linux Headers and Drivers

`sudo xbps-install -S linux-headers nvidia dkms`

> Enable DRM Modesetting

`sudo vim /etc/modprobe.d/nvidia.conf`

> Add this below code to that file

`options nvidia-drm modeset=1`

> Reboot the system

`sudo reboot`

# WM / DE Setup (REQUIRED)

> Install basics

`sudo xbps-install -S xorg-minimal xorg-fonts i3 i3status i3lock rofi alacritty firefox-esr xrandr git xdg-utils`

> Setup Monitor Config (OPTIONAL)

> `vim ~/.xinitrc`


```
xrandr --fb 9600x2160 \
        --output HDMI-0 --primary --mode 3840x2160 --rate 143.86 --pos 0x0 \
        --output DP-0 --mode 3840x2160 --rate 60 --pos 3840x0 \
        --output DP03 --mode 1920x1080 --rate 60 --pos 7680x0

exec i3
```

> ***PLEASE NOTE: The end monitor 1920x1080 will be zoomed in due to a limitation of x11 scaling for monitors however due to the usage this is not a problem and should not be considered an issue with this config. IT IS A LIMITATION OF X11 and I3***

> Add Correct monitor scaling for x11

`vim .Xresources`

`Xft.dpi: 192`

## Setup Firefox Scaling (OPTIONAL)

> Open new tab and go to about:config

> Press accept risk

> Search for

`layout.css.devPixelsPerPx`

> Change value to `2.0`

 
