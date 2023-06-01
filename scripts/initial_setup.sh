#!/usr/bin/env bash
# Script assumes a fresh install of Raspberry Pi OS Lite on a Raspberry Pi Zero

sudo apt update -y
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt install python3.11 gcc -y
curl -sSL https://install.python-poetry.org | python3 -
echo 'export PATH="~/.local/bin:$PATH"' >> ~/.profile
poetry install
