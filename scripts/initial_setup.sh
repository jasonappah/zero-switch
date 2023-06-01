#!/usr/bin/env bash
# Script assumes a fresh install of Raspberry Pi OS Lite Buster on a Raspberry Pi Zero

sudo apt update -y
sudo apt install software-properties-common gcc -y
sudo add-apt-repository ppa:deadsnakes/ppa -y
sudo apt update -y
sudo apt install python3.11 -y
curl -sSL https://install.python-poetry.org | python3.33 -
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.profile
poetry install


# this... was a mistake i shouldve known better lol
# if which python3.11 >/dev/null; then
#     echo "Already have python"
# else
#     cd /tmp/install_python311
#     wget https://www.python.org/ftp/python/3.11.3/Python-3.11.3.tgz
#     tar -xvf Python-3.11.3.tgz
#     cd Python-3.11.3
#     sudo ./configure --enable-optimizations
#     sudo make -j 2
#     sudo make altinstall
#     cd ../../
#     rm -rf install_python311
# fi
