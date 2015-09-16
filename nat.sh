#!bash
sudo iptables --table nat --append POSTROUTING --out-interface eth1 -j MASQUERADE
sudo iptables --append FORWARD --in-interface eth0 -j ACCEPT
sudo iptables-save
echo "NAT has been configured successfully." 
