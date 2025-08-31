#!/usr/bin/sh

sudo apt update && apt upgrade
sudo apt install git python3-venv python3-pip

python3 -m venv ~/.env
source ~/.env/bin/activate
python3 -m pip install --upgrade pip
python3 -m pip install pipx xeuledoc ignorant holehe sherlock-project
pipx ensurepath && pipx install ghunt

git clone https://github.com/p1ngul1n0/blackbird.git
cd blackbird

echo "pip isn't allowed to run outside of a venv on mint for compatiblity/stablity reasons. Therefore, make sure to type 'source ~/.env/bin/activate' before running any programs!"
