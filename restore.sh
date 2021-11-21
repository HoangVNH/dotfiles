#!/bin/sh
# Clone dotfiles into workspace
mkdir -p $HOME/workspace
git clone https://github.com/HoangVNH/dotfiles.git $HOME/workspace/dotfiles
cd $HOME/workspace/dotfiles

# Restore runtime config
while read f; do
	echo "Copying file $f..."
	cp -rf $f ~/
done < Dotfiles

echo "Restore dotfiles done!"
