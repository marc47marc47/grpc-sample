#!/bin/sh
if [ -d ".git" ]; then
	echo "Had been git inited, abort." 2>&2
	exit 1
fi
git init
git add -A
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/marc47marc47/grpc-sample.git
git push -u origin main
git status
