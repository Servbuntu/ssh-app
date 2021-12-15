#!/bin/zsh
cat /etc/ssh/sshd_config | grep Port | grep -v "GatewayPorts" | awk '{print $2}'