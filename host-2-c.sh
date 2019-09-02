sudo route del default
sudo ip addr add 192.168.251.254/30 dev eth1
sudo ip link set eth1 up
sudo ip route add 192.168.56.0/24 via 192.168.251.253
sudo ip route add 192.168.60.0/27 via 192.168.251.253
