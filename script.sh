#! /usr/bin/env bash

echo -n "Enter the ip address of the host: "
read ipAddr
echo -n "Enter the port range [0-123 or leave blank to scan all ports]: "
read port
echo "Will use -sT -Pn to scan for tcp and treat all host as up..."

if [[ $port -eq ""  ]] then
sudo nmap -sT -Pn $ipAddr -p-
else
sudo nmap -sT -Pn $ipAddr -p$port
fi
