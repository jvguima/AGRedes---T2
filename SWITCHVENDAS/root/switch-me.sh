brctl addbr br0
brctl addif br0 eth0
brctl addif br0 eth1
brctl addif br0 eth2
brctl addif br0 eth3
brctl addif br0 eth4
ifconfig eth0 0.0.0.0
ifconfig eth1 0.0.0.0
ifconfig eth2 0.0.0.0
ifconfig eth3 0.0.0.0
ifconfig eth4 0.0.0.0
ifconfig br0 10.0.5.10 netmask 255.255.255.0 broadcast 10.0.5.255