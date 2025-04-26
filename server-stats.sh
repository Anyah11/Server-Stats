#!/bin/bash

echo "===== Server Perfomance Stats ====="

echo
echo "---- CPU Usage ----"
top -bn1 | grep "Cpu(s)" | awk '{print "CPU Usage: " $2 "%"}'

echo
echo "---- Memory Usage ----"
free -h

echo
echo "---- Disk Usage ----"
df -h --total | grep total

echo
echo "---- Top 5 Processes by CPU Usage ----"
ps aux --sort=-%cpu | head -n 6

echo
echo "---- Top 5 Processes by Memory Usage ----"
ps aux --sort=-%mem | head -n 6
