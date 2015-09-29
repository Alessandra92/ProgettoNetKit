#!/bin/sh

# Appear to the outside with fixed addresses
iptables --table nat --append POSTROUTING --out-interface eth1 --source 192.168.3.1 --jump SNAT --to-source 30.0.0.3
iptables --table nat --append POSTROUTING --out-interface eth1 --source 192.168.3.2 --jump SNAT --to-source 30.0.0.4
#webU
iptables --table nat --append PREROUTING --in-interface eth1 --destination 30.0.0.3 --jump DNAT --to-destination 192.168.3.1
#ns-com
iptables --table nat --append PREROUTING --in-interface eth1 --destination 30.0.0.4 --jump DNAT --to-destination 192.168.3.2


esac

