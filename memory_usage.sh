#!/bin/bash

get_memory_usage() {
    memory_info=$(free -h)
   
   
  total_memory()
{ 
echo "$memory_info" | grep Mem: | awk '{print $2}'
 }
    used_memory(){
echo "$memory_info" | grep Mem: | awk '{print $3}' 
}
    free_memory(){
echo "$memory_info" | grep Mem: | awk '{print $4}'
}
    available_memory(){
echo "$memory_info" | grep Mem: | awk '{print $7}'
}

    echo "Memory Usage Statistics:"
    echo "------------------------"
    echo "press [1] to see Total Memory "
    echo "press [2] to see Used Memory  "
    echo "press [3] to see free Memory  "
    echo "press [4] to see available Memory "
    echo  press [5] to return back 
    echo -----------------------------------
read -p 'please enter your choice : ' choice 
echo =========================================
case $choice in 
1)echo " total memory is  : $(total_memory) " ;;
2) echo "used memory is : $(used_memory) ";; 
3)echo " free memory is : $(free_memory) ";;
4) echo "available memory is :  $(available_memory) ";; 
5) source ./f2.sh ;; 
*) echo invalid option 
get_memory_usage 
;; 
esac 

}
while true 
do 
get_memory_usage
done 


