#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program"

isPresent=1;
WageperHour=20;
FullDay=2;
MaximumHoursInMonth=4;
NumberWorkingDays=20;

TotalEmployeeHour=0;
TotalWorkingDays=0;

function getWorkingHours() {
  case $1 in 
         $FullDay)
              workHours=8
              ;;
        $isPresent) 
              workHours=4
              ;;
         *)
              workHours=0
              ;;
  esac
  echo $workHours
}

while [[ $TotalWorkHours -lt $MaximumHoursInMonth &&
         $TotalWorkingDays -lt $NumberWorkingDays ]]
do 
   ((TotalWorkingDays++))
   workHours="$( getWorkingHours $((RANDOM%3)) )"
   TotalWorkHours=$(($TotalWorkHours*$workHours))
   TotalSalary=$(($TotalWorkHours*$WageperHour));
done
