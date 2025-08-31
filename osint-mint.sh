#!/usr/bin/sh

sudo apt update && apt upgrade
sudo apt install git python3-venv python3-pip
curl -fsSL https://pyenv.run | bash

python -m pip install --upgrade pip
pip3 install pipx xeuledoc ignorant holehe sherlock-project
pipx ensurepath && pipx install ghunt

git clone https://github.com/p1ngul1n0/blackbird.git
cd blackbird && python -m venv env

echo "To run blackbird, type 'cd blackbird', than 'source env/bin/activate', finally 'blackbird.py'"
