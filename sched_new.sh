#!/bin/bash

set -x

if [ $# -lt 3 ]; then
  echo "Usage: $0 execution_time project_id amount"
  echo "Example: $0 20:00:00"
  exit
fi

target=$1
project=$2
amount=$3
dest_time=`date +%s --date="$target"`

current_time=`date +%s`
while [ $current_time -lt $dest_time ];
do
  sleep 1
  current_time=`date +%s`
done

echo "$project:$amount" > minJimuTmp/.projects
