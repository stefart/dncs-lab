sudo sysctl net.ipv4.ip_forward=1
sudo ip link add link eth1 name eth1.2 type vlan id 10
sudo ip link add link eth1 name eth1.3 type vlan id 20

sudo ip link set eth1 up
sudo ip link set eth1.2 up
sudo ip link set eth1.3 up
sudo ip link set eth2 up


sudo ip addr add 192.168.56.254/24 dev eth1.2
sudo ip addr add 192.168.60.30/27 dev eth1.3
sudo ip addr add 192.168.95.94/30 dev eth2
sudo ip link set eth1 up
sudo ip link set eth1.2 up
sudo ip link set eth1.3 up
sudo ip link set eth2 up
