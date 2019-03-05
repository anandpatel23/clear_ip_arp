#!/bin/bash

# collect ssh and enable passwords
echo -n "Password: "
read -s -e password
echo -ne '\n'

# Feed expect script a device list and collect password
for device in `cat device-list.txt`; do
	./configure_cisco.exp $device $password;
done
