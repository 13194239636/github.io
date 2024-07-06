#!/bin/bash
message=$1
# 读取当前目录是否有node_modules文件夹,若没有就执行npm install --force命令
if [ ! -d "./node_modules" ]; then
  npm install --force
fi
hexo g
rm -rf ./docs
mv ./public ./docs
git add .
git commit -m "$message"
git push
