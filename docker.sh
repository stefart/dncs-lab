export DEBIAN_FRONTEND=noninteractive
sudo apt-get update
sudo apt-get --yes --force-yes install apt-transport-https ca-certificates curl gnupg2 software-properties-common
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo sed -i -e 's/us.archive.ubuntu.com/archive.ubuntu.com/g' /etc/apt/sources.list
sudo apt-get --yes --force-yes install curl
sudo apt-get update
sudo apt-get --yes --force-yes install docker-ce