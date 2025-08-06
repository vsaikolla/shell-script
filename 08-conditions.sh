#!/bin/bash

#-gt,-lt,-et,-ge,-le,!e

NUMBER=$1

if [ $NUMBER -gt 10 ]
then
    echo "Given number $NUMBER is greather than 10"
else
    echo "Given number $NUMBER is less than 10"
fi 