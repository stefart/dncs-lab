export DEBIAN_FRONTEND=noninteractive
sudo apt-get update
sudo apt-get install -y tcpdump apt-transport-https ca-certificates curl software-properties-common --assume-yes --force-yes
wget -O- https://apps3.cumulusnetworks.com/setup/cumulus-apps-deb.pubkey | apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://apps3.cumulusnetworks.com/repos/deb $(lsb_release -cs) roh-3"
sudo apt-get update
sudo apt-get install -y frr --assume-yes --force-yes
