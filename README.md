# Design of Networks and Communication Systems  
Artuso Stefano
Accademic Year 2018/19  
University of Trento

## Assignment Description
Basing on a given network topology and a Vagrant File, the candidate must set up the network configuration of 3 hosts, a switch and 2 routers, with the final goal of visit from host-1-a and host-1-b, a website placed in host-2-c. Also, in the subnetwork of _host-1-a_ need to be allocated IP Addresses for at least 130 hosts, and in the subnetwork of host-1-b at least 25. Another requirement given is to consume few IP Addresses as possible.

## Network Topology

         +------------------------------------------------------------+
         |                                                        eth0|
     +---+---+                  +------------+                 +------+-----+
     |       |                  |            |                 |            |
     |       +------------------+  router-1  +-----------------+  router-2  |
     |   v   |              eth0|            |eth2         eth2|            |
     |   a   |                  +-----+------+                 +------+-----+
     |   g   |                        |eth1                       eth1|
     |   r   |                        |                               |
     |   a   |                        |                           eth1|
     |   n   |                        |eth1                     +-----+----+
     |   t   |             +----------+-----------+             |          |
     |       |             |                      |             |          |
     |   m   +-------------+        switch        |             | host-2-c |
     |   a   |         eth0|                      |             |          |
     |   n   |             +---+--------------+---+             |          |
     |   a   |                 |eth2      eth3|                 +-----+----+
     |   g   |                 |              |                   eth0|
     |   e   |                 |              |                       |
     |   m   |                 |eth1      eth1|                       |
     |   e   |           +-----+----+    +----+-----+                 |
     |   n   |           |          |    |          |                 |
     |   t   |           |          |    |          |                 |
     |       +-----------+ host-1-a |    | host-1-b |                 |
     |       |       eth0|          |    |          |                 |
     |       |           |          |    |          |                 |
     +--+-+--+           +----------+    +----+-----+                 |
        | |                               eth0|                       |
        | +-----------------------------------+                       |
        +-------------------------------------------------------------+

## VLAN's
It was also created two separated VLAN's in the router-1 area, to create a trunk port in the switch which communicate with the router, and to keep separated the two subnets and to avoid having two same IP in the same subnet.

| VLAN     | VLAN TAG  | Interface |
| --------------- | --------- | ----------- |
| router-1 --> host-1-a | 10 | eth1.2 |
| router-1 --> host-1-b | 20 | eth1.3 |


## Interfaces-IP List

List of all the the links in the network and the IP Address and subnet mask bits of the interface of the device 

| Link   | Interface | IP   |
| -------- | --------- | ----------------- |
| router-1 --> router-2 | eth2      | 192.168.95.94/30   |
| router-1 --> host-1-a | eth1.2      | 192.168.56.254/24  |
| router-1 --> host-1-b | eth1.3    | 192.168.60.30/27  |
| host-1-a --> router-1 | eth1.2    | 192.168.56.1/24  |
| host-1-b --> router-1 | eth1.3    | 192.168.60.1/27  |
| router-2 --> router-1 | eth2      | 192.168.95.93/30   |
| router-2 --> host-2-c | eth1      | 192.168.251.253/30   |
| host-2-c --> router-2 | eth1      | 192.168.251.254/30 |

## Assignment Validation

After running `vagrant up`, from all the left-sided hosts is possible to ping the host-2-c by entering in one of the two shells and issuing `ping 192.168.251.254`.
For visit the web-page, please enter in the shell of the _host-2-c_ machine by issuing `vagrant ssh host-2-c` and launch a webserver by issuing `sudo python -m SimpleHTTPServer 8080`.
Please enter now the shell in the host-1-b machine [`vagrant ssh host-1-b`] and issue `curl http://192.168.251.254:8080` to see the HTML code of the web-page hosted in host-2-c.
