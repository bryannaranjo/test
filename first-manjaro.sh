#! /bin/bash

sudo pamac  update && sudo apt upgrade -y
sudo pamac install openssh-server sshpass -y

sudo mkdir /mnt/xdrive
sudo mount -t nfs 172.16.0.76:/volume7/NFS-Xdrive /mnt/xdrive

git config --global user.email "bryan@naranjo.com"
git config --global user.name "Bryan Naranjo"

ssh-agent
ssh-add /mnt/xdrive/keys/gh_key

