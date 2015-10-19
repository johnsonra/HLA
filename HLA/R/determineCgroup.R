determineCgroup <- function(alleles, delim = ':')
{
    # data(hlaCgrp)

    if(delim != ':')
        alleles <- gsub(delim, ':', alleles, fixed = TRUE)

    splits <- strsplit(alleles, delim, fixed = TRUE)
    rough <- sapply(splits, `[`, 1)

    Cgroup <- character(length(rough))

    for(i in 1:length(rough))
    {
        if(is.na(rough[i]))
        {
            Cgroup[i] <- NA
            next
        }

        roughRow <- which(hlaCgrp$allele == rough[i])

        if(hlaCgrp$exceptions[roughRow] & alleles[i] %in% hlaCgrp$allele)
        {
            Cgroup[i] <- hlaCgrp$group[hlaCgrp$allele == alleles[i]]
        }else{
            Cgroup[i] <- hlaCgrp$group[roughRow]
        }
    }

    return(Cgroup)
}
