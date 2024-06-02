#!/bin/bash

function echo_status {
    echo -e "\n\e[1;32m$1\e[0m\n"
}

# Backup Wonderwall wallpapers
echo_status "Backing up Wonderwall wallpapers..."
cp ~/snap/wonderwall/39/.local/share/ktechpit/WonderWall/download/* ~/Linux-Config/Backup/Wonderwall/ 

# Backup Themes
echo_status "Backing up themes..."
cp ~/.themes/* ~/Linux-Config/Backup/Themes/ -r

# Backup Icons
echo_status "Backing up icons..."
cp ~/.icons/* ~/Linux-Config/Backup/Icons/ -r

# Saving ALL the backups
echo_status "Committing and pushing backups to git repository..."
current_date_time=$(date)
git add *
git commit -m "Backup Date - $current_date_time"
git push

echo_status "Backup and git push completed successfully!"

