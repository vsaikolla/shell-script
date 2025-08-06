#!/bin/bash

#array is a list of values means if a variable holds more than one value then that variable is called an array

school = ( "Teacher" "Student" "Books" "Bag" "Bus" )
#list size for the above array is 5 (count starts with 1)
#index size for the above array is 4 (count starts with 0)

echo "Total from the array is : ${school[@]}"

echo "First one from the array is : ${school[0]}"

echo "Second one from the array is : ${school[1]}"

echo "third one from the array is : ${school[2]}"

echo "Fourth one from the array is : ${school[3]}"

echo "Fifth one from the array is : ${school[4]}"