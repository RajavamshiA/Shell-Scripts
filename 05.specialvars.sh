#!/bin/bash

var1=$1
var2=$2

echo "all variables are: $@"
echo "No of variables are: $#"
echo "$PWD"
echo "$HOME"
echo "Current script process id: $$"
sleep 5 &
echo "process id of command running in background: $!"
echo "Status:S or F: $0"
