#!/bin/bash

arr=("vamshi","raja","ankam")

echo "first element in array is ${arr[0]}"
echo "Second element in array is ${arr[1]}"
echo "Third element in array is ${arr[2]}"

echo "All elements in array are ${arr[@]}"


MOVIES=("pushpa" "rrr" "devara")
# index starts from 0, size is 3

echo "First movie: ${MOVIES[0]}"
echo "Second movie: ${MOVIES[1]}"
echo "Third movie: ${MOVIES[2]}"

echo "All movies are: ${MOVIES[@]}"