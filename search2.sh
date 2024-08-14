#!/bin/bash

find_by_name (){
read -p 'please enter the path : ' path 
if [[ -e $path ]]
then 
read -p 'please enter the name : ' name 
find $path -name "$name"
elif [[ ! -e $path || -z $path  ]]
then 
echo ' non existing path  please enter right path again '
return 
fi 

}

##################################################################################################
find_by_size(){

read -p 'please enter the path : ' path 
if [[ -e $path ]]
then 
read -p 'please enter the size to search use( ex, +100k ) to more than 100k files  and ( ex, -100M ) to less than 100M files  and ( 100k ) only  to exactly 100k  : ' size 
find $path -size "$size"
elif [[ ! -e $path || -z $path  ]]
then 
echo ' non existing path  please enter right path again '
return 
fi
}
#############################################################################################################
find_by_type(){

read -p 'please enter the path : ' path 
if [[ -e $path ]]
then 
read -p 'please enter the type to search with  (d for diractory )  (f for files) (b for block devices ) (s for sockets )  : ' typee
else 
echo non existing path 
return
fi
if [[ $typee =~ ^[dfbs]$ ]] ; 
then 
find $path -type $typee
elif [[ ! $typee =~ ^[dfbs]$ ]] ; 
then 
echo invalid option 
return
fi

}
###########################################################################################################################
find_by_modification_time(){

read -p 'please enter the path : ' path 
if [[ -e $path ]]
then 
read -p 'please enter the time (ex , n) in exatily days ago (ex , +n ) in more than days ago (ex, -n ) less than days ago :  ' time 
if [[  $time =~ ^[+-]?[0-9]+$ ]]
then
find $path -mtime $time
elif [[ ! $time =~ ^[+-]?[0-9]+$ ]]
then 
echo invalid entry 
return 
fi
else 
echo invalid path 
return
fi
}
###################################################################################################################

main(){
echo '< file search system >'
echo ----------------------------------------
echo press [1] to search by name 
echo press [2] to search by size 
echo press [3] to search by type 
echo press [4] to search by modification time 
echo press [5] to go to main menu 
echo -------------------------------- 
read -p ' choose an option  ' option 
echo =================================
case $option in
1)find_by_name;;
2)find_by_size;;
3)find_by_type;;
4)find_by_modification_time;;
5) source ./f1.sh ;; 
*)echo invalid option 
main ;; 
esac
}
######################################################################################################
while true 
do
main
done 
