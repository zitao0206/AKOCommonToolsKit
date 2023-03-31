#!/bin/bash
git status
sleep 2

echo "-------Begin-------"
if [ ! $1 ]; then
    read -p "Please input your Video commit message: " latestTag
else
    latestTag =$1
fi


echo "Upgrade tag to："$latestTag
git tag $latestTag
git push -v -f origin refs/tags/$latestTag
