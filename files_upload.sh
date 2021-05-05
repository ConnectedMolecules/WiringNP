#!/usr/bin/env bash

# Test IPs only, not for production:
name="pi"
password="officecmboard2"
ip="192.168.100.2"
#ip="192.168.68.111"
# password="raspberry"
# ip="192.168.100.5"
# password="pi"
addr=$name@$ip:/home/pi/Documents/wiringNP
echo Copy files to $addr...

sshpass -p $password scp -r wiringPi $addr
sshpass -p $password scp -r gpio $addr
sshpass -p $password scp -r devLib $addr
sshpass -p $password scp -r build $addr

echo Done
