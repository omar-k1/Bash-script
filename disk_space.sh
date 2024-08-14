#!/bin/bash

get_disk_space_usage() {
   # disk_info=$(df -h --total)
disk_info(){
df -h --total 
}
    echo "Disk Space Usage :"
    echo "----------------------------"
    echo press [1] to see disk space usage 
    echo press [2] to back to menu 
    echo -----------------------------------
    read -p 'please enter your choice : ' choice 
   case $choice in
1) disk_info ;; 
2)  source ./f2.sh  ;; 
*) echo invalid choice please choice agin 
 return ;; 
esac
}
 while true 
do 
get_disk_space_usage
done


