#! /bin/bash

sudo apt update && sudo apt upgrade -y
sudo apt install openssh-server sshpass -y

sudo mkdir /media/xdrive
sudo mount -t nfs 172.16.0.76:/volume7/NFS-Xdrive /media/xdrive

git config --global user.email "bryan@naranjo.com"
git config --global user.name "Bryan Naranjo"
