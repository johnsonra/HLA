# HLA
This repository contains R code to set up variables defining HLA Antigen groups and KIR ligands. The primary data contained here comes from http://hla.alleles.org.

More information will be included here as it is added to the repository.

### Broad Specificities
The broad specificities given in this repository for HLA-A,B,C,DRB1,DQA are as published at http://hla.alleles.org/antigens/broads_splits.html. Each table of definitions (e.g. hlaA.broad) can be found in csv format at https://github.com/johnsonra/HLA/tree/master/data, or as an R data set in the accompanying R package.

The csv tables are broken down by broad specificities, separated by '#', and contain the relevant allele groups for each broad group. Less common alleles that are not included in the original broad specificities are included in their own group to maintain completeness.

R data sets for each HLA gene are simply a named character vector. Thus, to obtain the broad specificity for HLA-A*23, one could enter the following at the R command line after loading the appropriate data file:

````R
> hlaA.broad['23']
'09'
````

### HLA-Bw/C Groups
Group definitions for Bw4/6 and HLA-C groups 1 and 2 are given in the hlaCgrp and hlaBw data sets. These generally follow the convention found at http://hla.alleles.org/antigens/bw46.html, with additional information on specific HLA proteins in some HLA allele groups that have been shown to be exceptions as published at http://www.ufrgs.br/imunovet/molecular_immunology/hla.html.

Each data set has the following columns, with one additional column of data for the Bw4/6 groups, since some HLA-A alleles also fall into the Bw4 group.

* hla - The corresponding HLA gene (i.e. HLA-A or HLA-B). This is not present in the hlaCgrp dataset since all those alleles belong to HLA-C.
* allele - The allele group or more specific HLA protein. 
* bwGroup/group - The Bw or C group associated with the specified allele.
* exceptions - A logical value indicating if there are exceptions to the low resolution classification (e.g. HLA-C\*08 is generally a part of C group 1, but one rare specific protein, HLA-C\*08:10 actually falls into C group 2).

The exceptions listed at the end of the file after the line "#### Exceptions ####" contain exceptions to the general rules listed above. When only low resolution typing is available, these general rules can be used, as the exceptions are rare. The one case where exceptions are common, HLA-B*15, the bwGroup entry is missing.

### HLA/KIR Ligand
For more information on HLA ligands to KIR, see the following papers: [Colonna 1993](https://scholar.google.com/scholar_lookup?title=HLA-C+is+the+inhibitory+ligand+that+determines+dominant+resistance+to+lysis+by+NK1-+and+NK2-specific+natural+killer+cells&author=M.+Colonna&author=G.+Borsellino&author=M.+Falco&author=G.+B.+Ferrara&author=J.+L.+Strominger&publication_year=1993), [Wagtmann 1995](http://www.sciencedirect.com/science/article/pii/1074761395900691),
[Moesta 1998](http://www.jimmunol.org/content/180/6/3969.short), [Winter 1998](http://www.jimmunol.org/content/180/6/3969.short), [Gumpertz 1995](http://jem.rupress.org/content/181/3/1133.abstract), [Pende 1996](http://jem.rupress.org/content/184/2/505.abstract), [Stewart 2005](http://www.pnas.org/content/102/37/13224.long), and [Moesta 2010](http://www.jimmunol.org/content/185/7/4233.short).
