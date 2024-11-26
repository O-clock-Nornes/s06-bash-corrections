#!/bin/bash

mkdir -p /analyses

egrep -i "error|Connection closed" /var/log/auth.log /var/log/syslog > /analyses/warning-$(date +%A).log