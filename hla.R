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
hla.a.broad <- tmp$broadSpecificity
names(hla.a.broad) <- tmp$alleleGroup
