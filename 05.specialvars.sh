#!/bin/bash

$1=vamshi
$2=raja
$3=kk

echo "all variables are: $@"
echo "No of variables are: $#"
echo "$PWD"
echo "$HOME"
echo "Current script process id: $$"
sleep 5 &
echo "process id of command running in background: $!"
echo "Status:S or F: $0"
