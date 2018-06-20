#!/bin/bash

apk add -U wget ca-certificates

# Download data
BEST_FIT_FLUXES_IN_06=best_fit_fluxes_06.csv
BEST_FIT_FLUXES_IN_02=best_fit_fluxes_02.csv

wget "https://drive.google.com/uc?export=download&id=0B7S2ZMhdzWwbclJPZ2lmZEFyRGs" -O map_w_layout.json
wget "https://drive.google.com/uc?export=download&id=1kpn3qYV_VSS4BvC0ONNvwlfaZtGO-pzg" -O $BEST_FIT_FLUXES_IN_06
wget "https://drive.google.com/uc?export=download&id=0B7S2ZMhdzWwbT3AtdDk0S3dJaDg" -O $BEST_FIT_FLUXES_IN_02

# Testing for version 0.2.x of the container

BEST_FLUXES_JSON=best_fit_fluxes_0.2.json
SITE=/tmp/site0.2

best_fit_fluxes2escher_fluxes_csv $BEST_FIT_FLUXES_IN_02 $BEST_FLUXES_JSON
create_site_for_data $SITE map_w_layout.json $BEST_FLUXES_JSON;

## check that result file exists.
SITE_INDEX=$SITE/index.html

for f in $BEST_FLUXES_JSON $SITE_INDEX; do
	if [ ! -f $f ]; then
   		echo "File $f does not exist, failing test."
   		exit 1
	fi
done

echo "Escher-fluxomics runs with test data without error codes for iso2flux 0.6.1, all expected files created."

# Testing for version 0.6.1 or 0.7 of the container

BEST_FLUXES_JSON=best_fit_fluxes_0.6.json
SITE=/tmp/site0.6

best_fit_fluxes2escher_fluxes_csv $BEST_FIT_FLUXES_IN_06 $BEST_FLUXES_JSON
create_site_for_data $SITE map_w_layout.json $BEST_FLUXES_JSON;

## check that result file exists.
SITE_INDEX=$SITE/index.html

for f in $BEST_FLUXES_JSON $SITE_INDEX; do
	if [ ! -f $f ]; then
   		echo "File $f does not exist, failing test."
   		exit 1
	fi
done

echo "Escher-fluxomics runs with test data without error codes for iso2flux 0.6.1, all expected files created."
