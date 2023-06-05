#!/usr/bin/env bash
# Script assumes a fresh install of Raspberry Pi OS Lite Buster on a Raspberry Pi Zero

sudo apt update -y
sudo apt install software-properties-common gcc pi-bluetooth bluez bluez-tools bluez-firmware python-bluez  -y
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt update -y
sudo apt install python3.11 -y
curl -sSL https://install.python-poetry.org | python3.11 -
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.profile
poetry install

sudo cp org.jasonaa.hidbluetooth.conf /etc/dbus-1/system.d
sudo service dbus restart
sudo service bluetooth stop
sleep 0.2
sudo /etc/init.d/bluetooth stop
sleep 0.2
sudo /usr/sbin/bluetoothd --nodetach --debug -p time
sleep 0.2
sudo hciconfig hci0 up
sleep 0.2



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
