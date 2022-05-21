#!/bin/bash

# Cut all brand names into temp file
cut -s -d ',' -f 1 /Users/gregingraham/Desktop/Project/"Energy drinks - Sheet1.csv" | sed 's/Brand//g' | uniq | sed '/^$/d' | sed 's/^/"/g' | sed 's/$/"/g'| sed 's/$/),\n(/g' > tempo/tmpBrand

# Create SQL Script
echo "INSERT INTO Brand (BName) VALUES (" > tempo/brandTempl.sql

cat tempo/tmpBrand >> tempo/brandTempl.sql

truncate -s -4 tempo/brandTempl.sql

echo ";" >> tempo/brandTempl.sql


# Log into mySQL Server
mysql -u Greg -p'password' -h nferryst.ddns.net -P 6767 -D DrinksDB < tempo/brandTempl.sql

rm tempo/tmpBrand tempo/brandTempl.sql