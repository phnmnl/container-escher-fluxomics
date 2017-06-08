#!/bin/bash

gawk -vFPAT='[^,]*|"[^"]*"' '{print $1 "," $4}' $1 > $2
