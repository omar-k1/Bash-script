#!/bin/bash

get_cpu(){

mpstat 1 1 | awk '/Average/ { print 100 - $NF "%"}'

}

cpu_usage(){

echo cpu usage 
echo ------------------------------
echo   press [1] to see current cpu usage 
echo  press [2] to back to main menu
echo --------------------------------  
read -p 'enter your choice : ' choice
echo ================================== 
case $choice in 
1) echo  " current cpu usage is : $(get_cpu) "  
;;
2) source ./f2.sh ;;
*) echo invalid option 
cpu_usage ;; 
esac 

}
while true
do 
cpu_usage 
done 
