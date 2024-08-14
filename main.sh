#!/bin/bash 

main(){ 
echo '< main menu >'
echo ----------------------------------------
echo press [1] for file/directory management
echo press [2] for system monitoring 
echo press [3] for logging and reporting
echo press [4] for exit  
echo -----------------------------------------
read -p 'please enter your choice : ' choice 
echo ========================================
case $choice in 
1) ./f1.sh ;; 
2) ./f2.sh ;; 
3) ./report.sh ;;
4) echo existing .... 
exit ;; 
*) echo invalid option 
   return ;; 
esac

}
while true
do 
main
done
#######################################################################################################
<<c
system_monitor(){

echo '< System Monitoring >'
echo ---------------------------------
echo press [1] for system information 
echo press [2] for CPU usage 
echo press [3] for Memory usage
echo press [4] for Disk space usage 
echo press [5] for main menu
echo press [6] for exit 
echo ----------------------------------
read -p 'please enter your choice : ' choice 
echo ========================================
case $choice in 
1) ./system_information_disply.sh ;; 
2) ./cpu_usage.sh ;; 
3) ./memory_usage.sh ;; 
4) ./disk_space.sh ;;
5) main_menu ;;
6) echo existing .......
exit ;; 
*) echo invalid option 
system_monitor ;; 
esac 
}
##############################################################################################################################
file_dir_operation(){

echo '< File and Directory management >'
echo -------------------------------------
echo press [1] for Basic operations 
echo press [2] for Searching 
echo press [3] for Permission management 
echo press [4] for Backup and Restore
echo press [5] for main menu 
echo press [6] for exit  
echo --------------------------------------
read -p 'please enter your choice : ' choice
echo ======================================== 
case $choice in 
1) ./basic_oper.sh ;; 
2) ./search2.sh ;; 
3) ./permissions.sh ;; 
4) ./backup.sh ;; 
5) main_menu  ;;
6) echo existing ..... 
exit ;; 
*) echo invalid option
file_dir_operation ;; 
esac 
}
export -f file_dir_operation 
########################################################################################################################
c
#while true 
#do 

#done 

