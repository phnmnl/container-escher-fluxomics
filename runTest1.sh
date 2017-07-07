#!/bin/bash

apk add -U wget ca-certificates

# Testing for version 0.2.x of the container

# Download data
wget "https://drive.google.com/uc?export=download&id=0B7S2ZMhdzWwbT3AtdDk0S3dJaDg" -O best_fit_fluxes.csv
wget "https://drive.google.com/uc?export=download&id=0B7S2ZMhdzWwbclJPZ2lmZEFyRGs" -O map_w_layout.json

best_fit_fluxes2escher_fluxes_csv best_fit_fluxes.csv best_fit_fluxes.json
create_site_for_data /tmp/site map_w_layout.json best_fit_fluxes.json;

# check that result file exists.
BEST_FLUXES=best_fit_fluxes.csv
BEST_FLUXES_JSON=best_fit_fluxes.json
SITE_INDEX=/tmp/site/index.html


for f in $BEST_FLUXES $BEST_LABEL $CONSTRAINED_MODEL; do
	if [ ! -f $f ]; then
   		echo "File $f does not exist, failing test."
   		exit 1
	fi
done

echo "Escher-fluxomics runs with test data without error codes, all expected files created."
