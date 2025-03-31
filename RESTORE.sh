#!/bin/bash

function echo_status {
    echo -e "\n\e[1;32m$1\e[0m\n"
}

# Restoring Wonderwall wallpapers
echo_status "Backing up Wonderwall wallpapers..."
cp ~/Linux-Config/Backup/Wonderwall/* ~/snap/wonderwall/39/.local/share/ktechpit/WonderWall/download/

# Backup Themes
echo_status "Backing up themes..."
mkdir ~/.themes
cp ~/Linux-Config/Backup/.themes/* ~/.themes/  -r

# Backup Icons
echo_status "Backing up icons..."
mkdir ~/.icons
cp ~/Linux-Config/Backup/.icons/* ~/.icons/ -r

echo_status "Restoring completed successfully!"

