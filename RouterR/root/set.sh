#!/bin/sh

iptables --table nat --append POSTROUTING --source 192.168.1.1 --jump SNAT --to-source 10.0.0.3
iptables --table nat --append POSTROUTING --source 192.168.1.2 --jump SNAT --to-source 10.0.0.4
iptables --table nat --append POSTROUTING --source 192.168.1.3 --jump SNAT --to-source 10.0.0.5
#WebR
iptables --table nat --append PREROUTING --destination 10.0.0.3 --jump DNAT --to-destination 192.168.1.1
iptables --table nat --append PREROUTING --destination 10.0.0.4 --jump DNAT --to-destination 192.168.1.2
iptables --table nat --append PREROUTING --destination 10.0.0.5 --jump DNAT --to-destination 192.168.1.3

esac

