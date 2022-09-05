#!/bin/bash

LIST_OF_APPS="git docker.io openjdk-11-jre python3-pip net-tools util-linux"

echo "$LIST_OF_APPS\n"

sudo apt-get update
sudo apt-get install -y $LIST_OF_APPS

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
sudo unzip -o awscliv2.zip
sudo ./aws/install

curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
sudo apt-get install azure-cli

echo `aws --version`
echo `az --version`
