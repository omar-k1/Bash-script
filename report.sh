#!/bin/bash
get_report(){
echo "System Report - $(date)"
echo "==========================================="

echo "Report Generated by User: $(whoami)"
echo "-------------------------------------------"

echo "System Uptime and Load Average:"
uptime
echo "-------------------------------------------"

echo "CPU Usage:"
mpstat | grep -A 5 "%idle" | tail -n 5
echo "-------------------------------------------"

echo "Memory Usage:"
free -h
echo "-------------------------------------------"

echo "Disk Usage:"
df -h 
#| grep "^/dev/"
echo "-------------------------------------------"

echo "Top 5 Processes by CPU Usage:"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 6
echo "-------------------------------------------"

echo "Top 5 Processes by Memory Usage:"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head -n 6
echo "==========================================="
}
get_report
