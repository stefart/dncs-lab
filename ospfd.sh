sudo service frr restart
sudo vtysh -c 'configure terminal' -c 'interface eth2' -c 'ip ospf area 0.0.0.0'
sudo vtysh -c 'configure terminal' -c 'router ospf' -c 'redistribute connected'
