#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program"

isPresent=1;
EmployeeHour=20;
TotalSalary=0;
ParttimeEmployee=2;
NumberWorkingDays=20;

for (( day=1; day<=$NumberWorkingDays; day++ ))
do
    checkRandom=$((RANDOM%3));
       case $checkRandom in 
           $FullDayHour)
                EmployeeHours=8
                ;;
           $ParttimeEmployee) 
                EmployeeHours=4
                ;;
           *)
                EmployeeHours=0
                ;;
       esac

       salary=$(($EmployeeHours*$EmployeeHour));
       TotalSalary=$(($TotalSalary+$salary));
done
