python3 -m venv venv

wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install vagrant

# source venv/bin/activate.fish
source venv/bin/activate

pip install -r requirements.txt

cd molecule/default

vagrant box add generic/ubuntu2204

# Followed that advise
https://github.com/hashicorp/vagrant/issues/12601#issuecomment-979612233

ansible-galaxy install -r ../../requirements.yml -p roles

molecule create
