#!/bin/bash

rm -rf pia_confs/
mkdir pia_confs
wget https://www.privateinternetaccess.com/openvpn/openvpn-tcp.zip
unzip openvpn-tcp.zip -d pia_confs/tcp/
rm -f openvpn-tcp.zip
wget https://www.privateinternetaccess.com/openvpn/openvpn-ip.zip
unzip openvpn-ip.zip -d pia_confs/udp/
rm -f openvpn-ip.zip
