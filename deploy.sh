#!/bin/bash
message=$1
hexo g
rm -rf ./docs
mv ./public ./docs
git add .
git commit -m "$message"
git push
