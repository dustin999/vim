#!/bin/bash -f

if [ `which rake | wc -l` == 0 ]; then
	echo "Error: rake not installed"
	exit
fi
git pull && git submodule init && git submodule update && git submodule status
#cd .vim/bundle/command-t
#rake make
echo ""
echo "Install done!"
echo ""
echo "Please point your .vim dir and .vimrc file to:"
echo "   `pwd`/.vim"
echo "   `pwd`/.vimrc"
echo ""

