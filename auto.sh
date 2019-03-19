# =======================
#
# Written by cybertramp(paran_son@outlook.com)
#
# THIS FILE MUST BE LOCATED IN YOUR hexo DIRECTORY.
#
# =======================

# !/bin/sh
  
echo "|+ RUN 1. Delete public"
rm -rf public

echo "|+ RUN 2. Hexo deploy"
hexo deploy --gernerate

echo "|+ RUN 3. Copy public to YOUR_GITHUB_ID.github.io"
rm -rf YOUR_GITHUB_ID.github.io/*
cp -rf public/* YOUR_GITHUB_ID.github.io

echo "|+ RUN 4. git process.."
git -C YOUR_GITHUB_ID.github.io add .
git -C YOUR_GITHUB_ID.github.io commit -m "commit!"
git -C YOUR_GITHUB_ID.github.io push origin master

echo "|+ Complete!"
