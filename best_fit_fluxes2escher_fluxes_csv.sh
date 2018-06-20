#!/bin/bash

echo "ID,Avg" > $2
FOURTHCOL=`head -n 1 $1 | gawk -vFPAT='[^,]*|"[^"]*"' '{ print $4 }'`
if [ $FOURTHCOL == "Value" ]; then
   # we are looking at an iso2flux 0.6.1 or newer file
   tail -n+2 $1 | gawk -vFPAT='[^,]*|"[^"]*"' '{print $1 "," $4 }' >> $2
else
   # we are looking at an iso2flux 0.2 file
   tail -n+2 $1 | gawk -vFPAT='[^,]*|"[^"]*"' '{print $1 "," ($4 + $5) / 2.0 }' >> $2
fi
