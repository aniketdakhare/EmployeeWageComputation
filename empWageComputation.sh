#!/bin/bash -x

echo Welcome to Employee Wage Computation Program

present=1
attendance=$((RANDOM%2))
if [ $attendance -eq $present ]
then
   echo "Employee Present"
else
   echo "Emmployee Absent"
fi
