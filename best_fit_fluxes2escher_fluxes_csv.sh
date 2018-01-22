#!/bin/bash

echo "ID,Avg" > $2
tail -n+2 $1 | gawk -vFPAT='[^,]*|"[^"]*"' '{print $1 "," $4 }' >> $2
