#!/bin/bash

cd $1

git add --all

IFS=$'\04'

read -p "Commit message:" commitmessage
git commit -m \"$commitmessage\"

git push -u origin master
