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

: '
# Display the operating system version and kernel details.
echo "---- OS Version ----"
uname -a  # Prints detailed information about the system (OS, kernel, machine architecture, etc.)

# Display how long the system has been running since the last boot.
echo "---- Uptime ----"
uptime  # Shows the system uptime (how long the system has been running) and load average.

# Display the currently logged-in users.
echo "---- Logged In Users ----"
who  # Lists the users currently logged into the system along with their login details.

# Display failed login attempts on the system.
echo "---- Failed Login Attempts ----"
'