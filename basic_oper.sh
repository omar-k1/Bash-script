#!/bin/bash
#################################################################################################################################

create_file(){
read -p ' enter the  name of file you want to crate : ' filename
read -p ' enter the location of the target directory ( press enter for the current directory )  : ' location
if [ ! -e $location ] ; 
then 
echo 'location doesnot exist ' 
return 
fi 
if [ -z $location ]
then 
location='.' 
fi 
touch $location $filename && echo file create successfuly  
}

###################################################################################################################################
create_dir(){
read -p ' name of directory  you want to crate : ' dirname
read -p ' enter the location of the target directory ( press enter for the current directory )  : ' location
if [ ! -e $location ] ; 
then 
echo 'location doesnot exist ' 
return 
fi 
if [ -z $location ]      
then                     
location='.' 	
fi                       
mkdir -p  $location $dirname && echo directory created successfuly   
 }

##########################################################################################################################
 copy_item(){

read -p ' name of the source file/directory want to copy  : ' sourcee
if [[ ! -e $sourcee || -z $sourcee ]]; 
then 
echo ' path doesnt  exist '
return 
fi
read -p ' enter the destination  : ' destination 
if [[ ! -e $destination || -z $destination ]]; 
then 
echo ' path doesnt  exist '
return 
fi
if [ -d $sourcee ] 
then  
cp -r $sourcee $destination  && echo directory copied successfuly  
elif [ -f $sourcee ]
then 
 cp $sourcee $destination && echo file  copied successfuly
fi    
}
##############################################################################################################################
move(){   
read -p ' enter (the name) source file/directory  :' sourcee
if [[ ! -e $sourcee || -z $sourcee ]]; 
then 
echo ' file doesnot exist '
return 
fi
read -p ' enter the destination : ' destination 
if [[ ! -e $destination || -z $destination ]]; 
then 
echo ' file doesnot exist '
return 
fi
mv $sourcee $destination  &&  echo moved sucess            
}
#######################################################################################################################
 rename(){ 
 read -p 'enter the  name of file/directory you want to rename  :' old_name   
if [[ ! -e $old_name || -z $old_name ]]; 
then 
echo ' file doesnot exist '
return 
fi
  read -p 'enter the new name : ' new_name 
read -p 'press (y/Y) if you are sure  to rename or  (n/N) to exist :' choice 
if [[ $choice =~ ^[yY]$ ]];
then 
mv $old_name $new_name 
echo file renamed successfully
 elif [[ $choice =~ ^[nN]$ ]];
then 
echo thank you .....existing
#exit 
else 
echo invalid input 
fi 
 }
###############################################################################################################################

 delete(){
  
read -p 'the file/directory want to delete : ' item 
if [[ ! -e $item || -z $item  ]] ;
then 
echo file doesnot exist
return  
fi
while true 
do 
read -p 'press (y/Y) if you are sure  to remove  or  (n/N) to exist : ' choice 
if [[ $choice =~ ^[yY]$ ]];
then 
[ -d $item ] && rm -rf $item && echo 'directory deleted successfuly '
break 
if [[ $choice =~ ^[yY]$ ]];
then 
[ -f $item ] && rm -f $item  && echo file deleted successfuly 
break
fi
 elif [[ $choice =~ ^[nN]$ ]];
then 
echo thank you .....existing
break  
else 
echo invalid input
continue   
fi
 done

}
###############################################################################################################################################


main (){ while true 
do 
echo '< Basic operations >'
echo ----------------------------------
echo press [1] to create file 
echo press [2] to create directory 
echo press [3] to copy file/directory 
echo press [4] to move file/directory 
echo press [5] to rename file/directory  
echo press [6] to delete file/directory 
echo press [7] to return to main menu  
echo -------------------------------------------
read -p 'please enter your choice : ' choice 
echo ===========================================
case $choice in 
1)create_file ;; 
2)create_dir ;;
3)copt_item ;; 
4)move ;;
5)rename ;;
6)delete ;;
7)source ./f1.sh ;; 
*) echo invalid option 
main  ;;  
esac
done 
}
main
#######################################################################################################################################
 














