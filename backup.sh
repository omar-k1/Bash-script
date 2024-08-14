#!/bin/bash 

backup(){

read -p " please enter the path of file/directory want to backup it : " location 
if [[ -e $location && -n $location ]] ;
then 
read -p " enter the name you want to the backup file :  " name 
if [[ -n  $name ]] ; 
then  
tar -czvfP $name.tar.gz $location
if [[ $? -eq 0 ]] ; 
then 
echo process done sucessfully 
fi 
elif [[ -z $name ]]
then 
echo please enter the backup file name 
return 
fi 
else
echo incorrect path  
return 
fi 
}
###########################################################################################################
restore(){
read -p " please enter the file/directory want to restore : " restore 
if [[ -e $restore && -n restore ]] ; 
then 
tar -xzvf $restore
if [[ $? -eq 0 ]] ; 
then 
echo process done sucessfully 
fi 
else 
echo incorrect path
return 
fi 
 
}
##################################################################################################
main(){
while true
do 
echo '< backup and restore functions >'
echo ---------------------------------
echo press [1] to backup a file/directory 
echo press [2] to restore a file/directory
echo press [3]  to back to main menu 
echo ------------------------------------- 
read -p ' please enter your choice :' choice
echo ======================================= 
case $choice in 
1)backup ;; 
2)restore ;; 
3)  source ./f1.sh ;; 
*) echo invalid option 
   continue ;; 
esac
done 
}
main   
###########################################################
 












