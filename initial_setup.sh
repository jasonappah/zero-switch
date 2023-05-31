#!/usr/bin/env bash
# Script assumes Raspbian Lite base

sudo apt update
sudo apt-get install linux-headers-$(uname -r) -y
sudo apt-get install python3-dev python3-pip gcc -y
curl -sSL https://install.python-poetry.org | python3 -
poetry install
