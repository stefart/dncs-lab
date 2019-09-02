sudo ovs-vsctl add-br br0
sudo ovs-vsctl add-port br0 eth1
sudo ovs-vsctl add-port br0 eth2 tag=10
sudo ovs-vsctl add-port br0 eth3 tag=20
sudo ip link set eth1 up
sudo ip link set eth2 up
sudo ip link set eth3 up
sudo ip link set dev ovs-system up
