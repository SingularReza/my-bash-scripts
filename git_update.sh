#!/bin/bash

cd $1

git add --all

IFS=$'\04'

read -p "Commit message:" commitmessage
git commit -m \"$commitmessage\"

git push -u origin master

expect "Username got \'https://github.com\':"
send "SingularReza" #github username
expect "Password for \'https://SingularReza@github.com\':"
send "*****"  #github password
