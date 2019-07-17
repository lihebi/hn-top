#!/bin/bash

# echo "hello"
# echo "The script you are running has basename `basename "$0"`, dirname `dirname "$0"`"
# echo "The present working directory is `pwd`"

base=$(basename "$0")
dir=$(dirname "$0")

# echo $base
# echo $dir

curl https://hacker-news.firebaseio.com/v0/topstories.json -o "$dir/json/$(date +'%Y-%m-%d_%H:%M').json"

cd $dir
git add json
git commit -m 'auto'
git push -u origin master

# echo "$(date +'%Y-%m-%d_%H:%M').json"
