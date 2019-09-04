#!/bin/bash

function guessing {

s=0
while [ $s -eq 0 ]
do

  echo -e "\nGuess the number of files in the Current Directory: "
  read varchar
  dir=$pwd
  count=$(ls -l $dir | wc -l)

  if [ $varchar -lt $count ]
  then
    echo "Your guess is less than teh actual number of files."
  elif [ $varchar -gt $count ]
  then
    echo "Your guess is greater than the actual number of files."
  else
    echo "Congratulations! Your guess is right."
    s=$[$s+1]
  fi

done
}

guessing
