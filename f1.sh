#!/bin/bash 
file_dir_operation(){

echo '< File and Directory management >'
echo -------------------------------------
echo press [1] for Basic operations 
echo press [2] for Searching 
echo press [3] for Permission management 
echo press [4] for Backup and Restore
echo press [5] for main menu  
echo --------------------------------------
read -p 'please enter your choice : ' choice
echo ======================================== 
case $choice in 
1) ./basic_oper.sh ;; 
2) ./search2.sh ;; 
3) ./permissions.sh ;; 
4) ./backup.sh ;; 
5) exit && source ./main.sh  ;;
*) echo invalid option
 file_dir_operation ;; 
esac 
}
file_dir_operation
