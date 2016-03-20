#! /bin/bash
# Script para generar las interfaces virtuales Tap0 y Tap1

tunctl -t tap0
tunctl -t tap1
ifconfig tap0 10.100.100.101 netmask 255.255.255.0 promisc up
ifconfig tap1 10.100.100.102 netmask 255.255.255.0 promisc up

gns3 &

wireshark &

ifconfig


