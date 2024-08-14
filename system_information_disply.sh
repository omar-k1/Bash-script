#!/bin/bash 
 
system_information(){
echo system informations 
echo --------------------------------------------
echo press [1] to disply data about operating system 
echo press [2] to see device hostname
echo press [3] to see uptime 
echo press [4] to see the date
echo press [5] to return to main menu  
echo -----------------------------------------------
read -p ' please enter your choice from (1 - 5) : ' choice
echo ===================================================== 
case $choice in 
1) uname -a ;;
2) hostname ;; 
3) uptime ;; 
4)  date ;; 
5) source ./f2.sh ;; 
*) echo invalid option 
  system_information ;; 
esac 
}
while true 
do 
system_information
done 
