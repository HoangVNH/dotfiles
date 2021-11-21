#!/bin/sh

git pull origin master
while read f; do
		echo "Back up file $f..."
		cp -rf $HOME/$f ./
done < dotflies
echo "Backup files done, please commit!"

git add . -A
git commit -m "Backup at $(date)"
git push origin master
