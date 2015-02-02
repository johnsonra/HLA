# hla.R
# Define HLA Antigen groups
# Randall Johnson
# CCR Collaborative Bioinformatics Resource
# Advanced Biomedical Computing Center at Frederick National Laboratory
# Created January 30, 2015
# Last Modified February 2, 2015


########################
# HLA Class I Antigens #
########################

# this section contains broad splits and associated antigens primarily detectable by serology
# see http://hla.alleles.org/antigens/broads_splits.html for details

tmp <- read.csv('data/hlaA_broad.csv', comment.char = '#', colClasses = 'character')
hlaA.broad <- tmp$broadSpecificity
names(hlaA.broad) <- tmp$alleleGroup

save(hlaA.broad, file = 'HLA/data/hlaA_broad.RData')


tmp <- read.csv('data/hlaB_broad.csv', comment.char = '#', colClasses = 'character')
hlaB.broad <- tmp$broadSpecificity
names(hlaB.broad) <- tmp$alleleGroup

save(hlaB.broad, file = 'HLA/data/hlaB_broad.RData')


tmp <- read.csv('data/hlaC_broad.csv', comment.char = '#', colClasses = 'character')
hlaC.broad <- tmp$broadSpecificity
names(hlaC.broad) <- tmp$alleleGroup

save(hlaC.broad, file = 'HLA/data/hlaC_broad.RData')


#########################
# HLA Class II Antigens #
#########################

# As with the previous section, this section contains broad splits and associated antigens
# see http://hla.alleles.org/antigens/broads_splits.html for details

tmp <- read.csv('data/hlaDRB1_broad.csv', comment.char = '#', colClasses = 'character')
hlaDRB1.broad <- tmp$broadSpecificity
names(hlaDRB1.broad) <- tmp$alleleGroup

save(hlaDRB1.broad, file = 'HLA/data/hlaDRB1_broad.RData')


tmp <- read.csv('data/hlaDQA_broad.csv', comment.char = '#', colClasses = 'character')
hlaDQA.broad <- tmp$broadSpecificity
names(hlaDQA.broad) <- tmp$alleleGroup

save(hlaDQA.broad, file = 'HLA/data/hlaDQA_broad.RData')


################
# HLA B Groups #
################

# this section contains Bw4 and Bw6 assocated specificities (last updated Feb 2, 2015)
# see http://hla.alleles.org/antigens/bw46.html for low resolution details
# and http://www.ufrgs.br/imunovet/molecular_immunology/hla.html for additional details

hlaBw <- read.csv('data/hlaBw.csv', comment.char = '#', stringsAsFactors = FALSE,
                  na.strings = '')

save(hlaBw, file = 'HLA/data/hlaBw.RData')


################
# HLA C Groups #
################

# this section contains information on HLA-C groups 1 and 2
# see http://www.ufrgs.br/imunovet/molecular_immunology/hla.html for additional details

hlaCgrp <- read.csv('data/hlaCgrp.csv', comment.char = '#', stringsAsFactors = FALSE,
                    na.strings = '')

save(hlaCgrp, file = 'HLA/data/hlaCgrp.RData')
