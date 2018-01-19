#!/bin/sh

#Test the appropriate number of variables has been passed
if [ -z $3 ]; then
  echo "Not enough parameters"
else
  if [ -z $4 ]; then
    large=$1
    if [ $large -gt $2 ]; then
      if [ $large -gt $3 ]; then
        echo "$large is the largest value"
      else
        $large=$3
      fi
    else
      large=$2
      if [ $large -gt $3 ]; then
        echo "$large is the largest value"
      else
        large=$3
      fi
      echo "$large is the largest value"
    fi
  else
    echo "Too many parameters"
  fi
fi
