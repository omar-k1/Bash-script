#!/bin/bash

# Function to change file permissions
change_permissions_nomarical() {
    read -p "Enter the file/directory path: " file_path
    if [ ! -e "$file_path" ]; then
        echo " The file or directory does not exist."
      return
    fi

    read -p "Enter the permission mode (e.g., 755, 644): " permission_mode
if [[ $permission_mode =~ ^[0-7]+$ && $permission_mode -le 777 ]] ; 
then 
    chmod $permission_mode "$file_path"
    
    if [ $? -eq 0 ]; then    
    echo "Permissions changed successfully."
exit
   fi 
else 
echo invalid entry 
return 
fi 

}
###########################################################################################
set_permissions_symbolic(){
 read -p "Enter the file/directory path: " file_path
 if [ ! -e "$file_path" ]; then
  echo " The file or directory does not exist."
 return
fi
 
  read -p "Enter user permissions  (e.g., rwx- ) '-' for nothing  : " user 

  read -p "Enter group permissions (e.g., rwx )  '-' for nothing  : " group 

  read -p "Enter other permissions (e.g., rwx )  '-' for nothing  : " other 


if [[ $user =~ ^[rwx-]{1,3}$ || -z $user && $group =~ ^[rwx-]{1,3}$ || -z $group && $other =~ ^[rwx-]{1,3}$ || -z $other ]] ; 
then 
chmod "u=$user,g=$group,o=$other" $file_path 
  if [ $? -eq 0 ]; then    
    echo "Permissions changed successfully."
exit
   fi 
else 
echo invalid entry 
return 
fi 

}
####################################################################################################################
# Function to change file ownership
change_ownership() {
    read -p "Enter the file/directory path: " file_path
    if [ ! -e "$file_path" ]; then
        echo "Error: The file or directory does not exist."
        return
    fi

    read -p "Enter the new owner (user): " new_owner
    read -p "Enter the new group (optional, press Enter to skip): " new_group

    if [ -z "$new_group" ]; then
        chown $new_owner "$file_path"
    else
        chown $new_owner:$new_group "$file_path"
    fi
    
    if [ $? -eq 0 ]; then
        echo "Ownership changed successfully."
    else
        echo "Error: Failed to change ownership."
    fi
}
###########################################################################
 main(){
     echo "< permission management >"
     echo ------------------------------------------
     echo "press [1] to Change File Permissions numrical"
     echo "press [2] to  change  file permission symbolic"    
     echo "press [3] to  Change File Ownership" 
     echo "press [4] to back to main menu "  
      echo ----------------------------------------
     read -p "please Choose an option : " choice
     echo ===========================================
    case $choice in
        1) change_permissions_nomarical ;;
        2) set_permissions_symbolic ;;
        3) change_ownership ;;
        4)source ./f1.sh ;; 
        *) echo "Invalid option. Please try again." 
              main ;;
esac
}
###################################################################

while true 
do 
main
done  
