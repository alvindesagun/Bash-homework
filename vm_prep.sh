#!/bin/bash

# install git
# sudo yum install -y git

# sleep for 5 
# sleep 5

# set git parameters
# git config --global user.email "alvindesagun@gmail.com"
#git config --global user.name "Alvin De Sagun"

# generate public key

# ssh-keygen -t rsa -b 4096 -f ~/.ssh/id_rsa -q -N ""

# cat the publc key
#cat ~/.ssh/id_rsa.pub

# sleep for 60 so you can paste public key to github
#sleep 60

# add github.com to known hosts
ssh-keyscan github.com >>~/.ssh/known_hosts

# clone git repo
git clone git@github.com:alvindesagun/Bash-homework.git 
