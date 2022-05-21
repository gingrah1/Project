#!/bin/bash

# Make List of Brand name with matching BrandId
if [ ! -d Brand ]; then
	mkdir Brand
fi

if [ -f Brand/Brand.txt ]; then
	rm Brand/Brand.txt
fi

echo "tee Brand/Brand.txt
SELECT *
FROM BRAND" > tempo/brands.sql

mysql -u Greg -p'password' -h nferryst.ddns.net -P 6767 -D DrinksDB < tempo/brands.sql

rm tempo/brands.sql