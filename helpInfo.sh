#!/bin/bash
#### Linux Version
echo "#### Linux Version"
lsb_release -d | cut -f2- || cat /etc/os-release | grep PRETTY_NAME | cut -d '"' -f2
#### Free Memory
echo -e "\n#### Free Memory"
free -h | grep "Mem:" | awk '{print $4}'
#### Disk Space
echo -e "\n#### Disk Space"
df -h / | awk 'NR==2 {printf "Free: %.2f GB /
Total: %s\n", $4, $2}'
