#!/bin/bash

rm tempo/Brand

echo "tee tempo/Brand
SELECT *
FROM BRAND" > tempo/brands.sql

mysql -u Greg -p'password' -h nferryst.ddns.net -P 6767 -D DrinksDB < tempo/brands.sql

if [ $# -ne 0 ]; then
	echo "Searching for \"$1\""
	cat tempo/Brand | grep "$1"| cut -d "	" -f 1
fi

rm tempo/brands.sql