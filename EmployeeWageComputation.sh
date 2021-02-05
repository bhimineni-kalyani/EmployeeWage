#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program"

isPresent=1;
WageperHour=20;
FullDayHour=8;
DailyPayment=0;
ParttimeEmployee=8;
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

salary=$(($EmployeeHours*$WageperHour));
  
