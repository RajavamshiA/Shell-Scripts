#!/bin/bash

NUMBER1=$1
NUMBER2=$2

timestamp=$(date)
s= $(( $NUMBER1+$NUMBER2 ))
echo "Sum of $NUMBER1 & $NUMBER2 is:$s at $timestamp"