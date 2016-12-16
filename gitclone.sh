#!/bin/bash
#Constants
workspace="/home/suresh/hacking"

#Get project info from the user
echo "Enter the name of the project"
read name
echo "Enter the full path of the project to clone"
read project
echo "Enter the full path of the upstream project"
read upstream

#Perfrom git clone and add remote repository
set -x
cd "$workspace"
git clone "$project" "$name"
cd "$name"
git remote add upstream "$upstream"
git config core.filemode false
echo "Success! Project is created at $projectfolder/$name"
