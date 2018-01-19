#!/bin/sh
array=(3 8 2 6 0 9 4 1 5 7)
arraysize=${#array[*]}
innersize=$[arraysize-1]

echo "Unsorted:"
echo ${array[*]}

#Bubble Sort
for ((i=0; i<$arraysize; i++))
do
  for j in $(eval echo "{1..$innersize}")
  do
    k=$[j-1]
    if [ "${array[${k}]}" -gt "${array[${j}]}" ]; then
      temp=${array[${j}]}
      array[${j}]=${array[${k}]}
      array[${k}]=$temp
    fi
  done
done

echo "Sorted:"
echo ${array[*]}
