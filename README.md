# HLA
This repository contains R code to set up variables defining HLA Antigen groups and KIR ligands. The primary data contained here comes from http://hla.alleles.org.

More information will be included here as it is added to the repository.

### Broad Specificities
The broad specificities given in this repository for HLA-A,B,C,DRB1,DQA are as published at http://hla.alleles.org/antigens/broads_splits.html. Each table of definitions (e.g. hlaA.broad) can be found in csv format at https://github.com/johnsonra/HLA/tree/master/data, or as an R data set in the accompanying R package. The csv tables are broken down by broad specificities, separated by '#', and contain the relevant allele groups for each broad group. Less common alleles that are not included in the original broad specificities are included in their own group to maintain completeness.

R data sets for each HLA gene are simply a named character vector. Thus, to obtain the broad specificity for HLA-A*23, one could enter the following at the R command line after loading the appropriate data file:

\> hlaA.broad['23']

'09'
