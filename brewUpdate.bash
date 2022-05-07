#!/bin/bash

#This is my first script!
which -s brew
if [[ $? != 0 ]] ; then
	bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
	brew update
fi
