sudo sysctl net.ipv4.ip_forward=1
sudo ip addr add 192.168.251.253/30 dev eth1
sudo ip addr add 192.168.95.93/30 dev eth2
sudo ip link set eth1 up
sudo ip link set eth2 up
