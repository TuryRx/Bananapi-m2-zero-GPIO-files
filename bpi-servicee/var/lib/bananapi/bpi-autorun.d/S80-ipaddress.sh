#!/bin/bash

# Print the IP address
_IP=$(hostname -I 2>/dev/null) || true
if [ "$_IP" ]; then
  printf "My IP address is %s\n" "$_IP"
fi

