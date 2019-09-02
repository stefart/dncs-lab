sudo ip addr add 192.168.56.1/24 dev eth1
sudo ip link set eth1 up
sudo ip route del default
sudo ip route add 192.168.251.254 via 192.168.56.254
