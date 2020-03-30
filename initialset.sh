#! /bin/bash
sudo apt update

sudo apt install python3
sudo apt install python-pip
sudo apt install git

cd ..
mkdir workspace
cd workspace

sudo apt-get intall  python3-venv
python3 -m venv venv
source venv/bin/activate
pip install flask
pip3 freeze | grep -E '(Flask|Jinja)' > requirements.txt
sudo apt install -y tree
