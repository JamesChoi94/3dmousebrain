
library(dplyr)
library(tidyr)
setwd('D:/3dmousebrain/3dmousebrain/')
refs <- read.csv(file = 'brain-references.csv')
refs_clean <- refs %>% 
  mutate(Reference = gsub(pattern = ' Epub[^\\.]+\\.', 
                          replacement = '',
                          x = Reference)) %>% 
  separate(Reference, 
           remove = FALSE,
           sep = '\\. ', 
           into = c('Authors',
                    'ArticleTitle',
                    'JournalTitle',
                    'DateVolumeIssueLocation',
                    'DOI',
                    'Identifiers',
                    'URL'))
refs_clean <- apply(
  X = refs_clean, 
  MARGIN = 2,
  FUN = function(x) {x[nchar(x) == 0] <- NA; return(x)}
) %>% as.data.frame()
refs_clean <- refs_clean[order(refs_clean$BrainRegion),]
write.csv(refs_clean, file = 'brain-references-tidy.csv', row.names = FALSE)

# refs_clean <- refs %>% 
#   mutate(Reference = gsub(pattern = ' Epub[^\\.]+\\.', 
#                           replacement = '',
#                           x = Reference)) %>% 
#   separate(Reference, 
#            sep = '\\.',
#            into = paste('test', 1:10))
# View(refs_clean)
