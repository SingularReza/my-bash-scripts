#!/bin/bash

cd $1

git add --all

IFS='\s'

read -p "Commit message:" commitmessage
git commit -m \"$commitmessage\"

git push -u origin master

expect "Username got \'https://github.com\':"
send "SingularReza"
expect "Password for \'https://SingularReza@github.com\':"
send "Chandan@13"
