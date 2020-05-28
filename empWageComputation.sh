#!/bin/bash

echo Welcome to Employee Wage Computation Program
wageperHour=20
dailyHours=8
fullTime=1
partTime=2
workDays=20
maxHours=100
totalEmpHours=0
days=1
while [ $totalEmpHours -lt $maxHours -a $days -le $workDays ]
do
	empCheck=$((RANDOM%3))
	case $empCheck in
		$fullTime)
			dailyHours=8
			((days++))
			;;
		$partTime)
			dailyHours=4
			((days++))
			;;
		*)
			dailyHours=0
			;;
	esac
	totalEmpHours=$(($totalEmpHours+$dailyHours))
done
empWageperMonth=$(($totalEmpHours*$wageperHour))
echo "Employee Wage for month : Rs. $empWageperMonth "

