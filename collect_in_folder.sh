#!/bin/bash

SAVEIFS=$IFS
IFS=$(echo -en "\n\b")
read -p "Enter the common term: " term
read -p "Enter the folder to move into: " folder

for d in */
do
    if [[ $d == *"$term"* ]];then
       mv -v "./$d"* ./$folder
    fi
done

echo "files moved!"
IFS=$SAVEIFS