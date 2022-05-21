#!/bin/bash

# Remove Top header Lines of energy drink doc
cat /Users/gregingraham/Desktop/Project/Energy\ drinks\ -\ Sheet1.csv | tail -n $(($(wc -l /Users/gregingraham/Desktop/Project/Energy\ drinks\ -\ Sheet1.csv | cut -d ' ' -f 7)-3))