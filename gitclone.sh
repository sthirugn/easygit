#!/bin/bash
# Usage:
# gitclone.sh satellite-clone git@github.com:sthirugn/satellite-clone.git https://github.com/RedHatSatellite/satellite-clone
#Constants
workspace="/home/suresh/hacking"

#Perfrom git clone and add remote repository
set -x
cd "$workspace"
git clone "$2" "$1"
cd "$1"
if [ ! -z "$3" ] 
 then
  git remote add upstream "$3"
fi
git config core.filemode false
echo "Success! Project is created at $workspace/$1"
