#!bin/bash

# $1 is dirname and fileBasenameNoExtension

mkdir  "$1"
cp -pr .vscode "$1/"
cp -p template.cpp "$1/"
cd "$1"
mv template.cpp "$1".cpp
code -r .
code "$1".cpp
