#!/bin/bash

OUTPUTDIR=$1
MAP_FILE=$2
RXN_DATA_JSON=$3
#METABOLITE_DATA=$4

cp -r /opt/template_site/ $OUTPUTDIR
cp $MAP_FILE $OUTPUTDIR/metabolic_map.json
cp $RXN_DATA_JSON $OUTPUTDIR/rxn_data.json
