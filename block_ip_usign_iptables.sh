#!/bin/bash

# Prompt for IP address or IP range
read -p "Enter IP address or IP range (e.g., 203.0.113.2 or 203.0.113.2-203.0.113.35): " ip_address

# Prompt for port number
read -p "Enter port number to block: " port_number

# Add rule to iptables to block the IP address/range on the specified port
iptables -I INPUT -p tcp -s $ip_address --dport $port_number -j DROP

# Save the iptables rules
iptables-save > /etc/sysconfig/iptables

echo "IP address/range $ip_address blocked on port $port_number."
