#!/bin/bash

number = $1

if  [ $number gt 100 ]
    {
        echo "$number is greater than 100"
    }
else {
    echo "$number is less than 100"
}
fi