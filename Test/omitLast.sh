#!/bin/bash

# Omit Last Line
lines=$(wc -l "$1" | cut -d " " -f 7)
remove=1

if (($2 > 1)); then
	remove=$2
fi

if ((remove >= lines)); then
	echo "Removed too many lines"
else
	cat "$1" | head -n $((lines-remove))
fi