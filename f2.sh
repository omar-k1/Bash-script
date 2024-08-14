#!/bin/bash 
system_monitor(){

echo '< System Monitoring >'
echo ---------------------------------
echo press [1] for system information 
echo press [2] for CPU usage 
echo press [3] for Memory usage
echo press [4] for Disk space usage 
echo press [5] for main menu 
echo ----------------------------------
read -p 'please enter your choice : ' choice 
echo ========================================
case $choice in 
1) ./system_information_disply.sh ;; 
2) ./cpu_usage.sh ;; 
3) ./memory_usage.sh ;; 
4) ./disk_space.sh ;;
5) exit && source ./main.sh ;; 
*) echo invalid option 
system_monitor ;; 
esac 
}
system_monitor

