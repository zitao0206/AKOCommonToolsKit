#!/bin/bash
git status

if [ ! $1 ]; then
    read -p "Please input your tag: " input
else
    input =$1
fi

git tag $input
git push -v -f origin refs/tags/$input
