#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program"

isPresent=1;
WageperHour=20;
FullDayHour=8;
DailyPayment=0;
checkRandom=$((RANDOM%2))
if [ $isPresent -eq $checkRandom ]
then
     echo "Employee is Present"
     DailyPayment=$(($WageperHour*$FullDayHour))
     echo "daily Payment is: " $DailyPayment
else 
     echo "Employee is Absent"
     echo "daily Payment is: " $DailyPayment
fi
