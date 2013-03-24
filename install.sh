#!/bin/bash -f

git pull && git submodule init && git submodule update && git submodule status
echo ""
echo "Install done!"
echo ""
echo "Please point your .vim dir and .vimrc file to:"
echo "   `pwd`/.vim"
echo "   `pwd`/.vimrc"
echo ""

