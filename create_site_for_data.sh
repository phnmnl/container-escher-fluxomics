#!/bin/bash

OUTPUTDIR=$1
MAP_FILE=$2
RXN_DATA_CSV=$3
#METABOLITE_DATA=$4

cp -r /opt/template_site/ $OUTPUTDIR
cp $MAP_FILE $OUTPUTDIR/metabolic_map.json
cp $RXN_DATA_CSV $OUTPUTDIR/rxn_data.csv
