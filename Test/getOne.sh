#!/bin/bash

# Get Brand, Flavor, and Rating of Single Person

if [ "$1" == "Sam" ]; then
	sh removeHeader.sh | cut -d "," -f 1,2,3 | sed '/.,.*,$/d'
elif [ "$1" == "Luke" ]; then
	sh removeHeader.sh | cut -d "," -f 1,2,4 | sed '/.,.*,$/d'
elif [ "$1" == "Greg" ]; then
	sh removeHeader.sh | cut -d "," -f 1,2,5 | sed '/.,.*,$/d'
elif [ "$1" == "Lucas" ]; then
	sh removeHeader.sh | cut -d "," -f 1,2,6 | sed '/.,.*,$/d'
elif [ "$1" == "Kevin" ]; then
	sh removeHeader.sh | cut -d "," -f 1,2,7 | sed '/.,.*,$/d'
elif [ "$1" == "Jordan" ]; then
	sh removeHeader.sh | cut -d "," -f 1,2,8 | sed '/.,.*,$/d'
elif [ "$1" == "Jeremy" ]; then
	sh removeHeader.sh | cut -d "," -f 1,2,9 | sed '/.,.*,$/d'
elif [ "$1" == "Evan" ]; then
	sh removeHeader.sh | cut -d "," -f 1,2,10 | sed '/.,.*,$/d'
elif [ "$1" == "Drink" ]; then
	sh removeHeader.sh | cut -d "," -f 1,2
else
	echo "No Recorded Data"
fi