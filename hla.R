# hla.R
# Define HLA Antigen groups
# Randall Johnson
# CCR Collaborative Bioinformatics Resource
# Advanced Biomedical Computing Center at Frederick National Laboratory


################
# HLA Antigens #
################

# this section contains broad splits and associated antigens primarily detectable by serology
# see http://hla.alleles.org/antigens/broads_splits.html for details

tmp <- read.csv('data/hlaA_broad.csv', comment.char = '#', colClasses = 'character')
hlaA.broad <- tmp$broadSpecificity
names(hlaA.broad) <- tmp$alleleGroup


tmp <- read.csv('data/hlaB_broad.csv', comment.char = '#', colClasses = 'character')
hlaB.broad <- tmp$broadSpecificity
names(hlaB.broad) <- tmp$alleleGroup


tmp <- read.csv('data/hlaC_broad.csv', comment.char = '#', colClasses = 'character')
hlaC.broad <- tmp$broadSpecificity
names(hlaC.broad) <- tmp$alleleGroup


################
# HLA B Groups #
################

# this section contains Bw4 and Bw6 assocated specificities (last updated Feb 2, 2015)
# see http://hla.alleles.org/antigens/bw46.html for low resolution details
# and http://www.ufrgs.br/imunovet/molecular_immunology/hla.html for additional details

hlaBw <- read.csv('data/hlaBw.csv', comment.char = '#')

