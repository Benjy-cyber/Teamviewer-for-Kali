#!/bin/sh
sudo apt -y install wget curl gpg ca-certificates

echo "deb http://linux.teamviewer.com/deb stable main" | sudo tee /etc/apt/sources.list.d/teamviewer.list

wget https://download.teamviewer.com/download/linux/signature/TeamViewer2017.asc
cat TeamViewer2017.asc | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/teamviewer.gpg  >/dev/null

sudo apt update

sudo apt install teamviewer
