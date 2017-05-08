# Escher-fluxomics
Version: 1.6.0-beta.4 

## Short Description

Metabolic pathway visualization for fluxomics data using Escher.

## Description

Escher provides an interactive visualization environment for fluxomics data on top of a previously layouted metabolic map.

## Key features

- Constraint-Based Modelling
- 13C Metabolic Flux Analysis

## Functionality

- Post-processing
- Statistical Analysis
- Workflows 

## Screenshots


## Tool Authors

- Zachary A. King (University of California at San Diego)

## Container Contributors

- [Pablo Moreno](https://github.com/pcm32) 

## Website

- http://escher.readthedocs.io/en/stable/ 


## Git Repository

- https://github.com/escher/escher-demo

## Installation 

This tool is preloaded in PhenoMeNal Galaxy deployments.

For local individual installation:

```bash
docker pull container-registry.phenomenal-h2020.eu/phnmnl/mzml2isa
```

## Usage Instructions

Available on PhenoMeNal Galaxy instances under PhenoMeNal H2020 Tools -> Fluxomics.

For direct docker usage:

```bash
docker run -v $PWD:/data container-registry.phenomenal-h2020.eu/phnmnl/mzml2isa -i /data/mzml_files/ -o /data/out_folder/ -s name_of_study
```

## Publications

- King ZA, Dräger A, Ebrahim A, Sonnenschein N, Lewis NE, Palsson BO (2015) Escher: A Web Application for Building, Sharing, and Embedding Data-Rich Visualizations of Biological Pathways. PLoS Comput Biol 11(8): e1004321. https://doi.org/10.1371/journal.pcbi.1004321
