#!/bin/bash
#Author : Manju
echo "Guess the number of files in the current directory"
read num

function check { #function returns the value as 0(zero) if answer is true
  no=$1
  no_files=`ls | wc -l`

  if [[ $no -gt $no_files ]]; then
    echo "You are predicting too much";
    return 1;
  elif [[ $no -lt $no_files ]]; then
    echo "You are under estimating the fact";
    return 1;
  else return 0;
  fi
}

check $num
value=$?
while [[ $value != 0 ]]; do
  echo "Try to guess the number of files in the current directory again"
  read num
  check $num
  value=$?
done
echo "You guessed it right bro, its $num"
