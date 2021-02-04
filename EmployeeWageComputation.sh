#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program"

isPresent=1;
WageperHour=20;
FullDayHour=8;
DailyPayment=0;
ParttimeEmployee=8;
checkRandom=$((RANDOM%2))
if [ $FullDayHour -eq $checkRandom ]
then
     echo "Employee is Present"
     DailyPayment=$(($WageperHour*$FullDayHour))
     echo "daily Payment is: " $DailyPayment
     EmployeeHours=8;
elif [ $ParttimeEmployee -eq $checkRandom ] 
then
     echo "Employee is Absent"
     echo "daily Payment is: " $DailyPayment
     EmployeeHours=4;
else
     EmployeeHours=0;
fi

salary=$(($EmployeeHours*$WageperHour));

