
library(dplyr)
library(stringr)
library(RcppRoll)
library(rvest)



setwd("/Users/zhuqin/Desktop/")
set.seed(500)



fullstoryURL<- read.csv("breitbart.csv", header = TRUE)
draw<-sample(1:nrow(fullstoryURL),350)
storyURL<-fullstoryURL %>% slice(draw)


#1-20 

storyChar1_20 <- matrix(as.character(storyURL[1:20, 4]))

storyChar1_20

num <- length(storyURL[ 1:20, 4])
num

xml1_20 <- try(apply(storyChar1_20, 1, read_html))

textScraper <- function(x) {
  as.character(html_text(html_nodes (x, "#ContainerW") %>% html_nodes("p")))%>%
    str_replace_all("[\n]", "") %>%
    str_replace_all("    ", "") %>%
    str_replace_all("[\t]", "") %>%
    paste(collapse = '')
}

articleText1_20 <- lapply(xml1_20, textScraper)
str(articleText1_20)

articleDF1_20 <- data.frame(mediaID=as.character(storyURL[1:20,8]),
                            storyID = as.character(storyURL[1:20,1]), 
                            headline = as.character(storyURL[1:20,3]), 
                            matrix(unlist(articleText1_20), nrow = num), 
                            themes = as.character(storyURL[1:20,7]))

names(articleDF1_20)[4] <- 'text'
str(articleDF1_20)


#21-40

storyChar21_40 <- matrix(as.character(storyURL[21:40, 4]))

storyChar21_40

num <- length(storyURL[ 21:40, 4])
num

xml21_40 <- try(apply(storyChar21_40, 1, read_html))

articleText21_40 <- lapply(xml21_40, textScraper)
str(articleText21_40)

articleDF21_40 <- data.frame(mediaID=as.character(storyURL[21:40,8]),
                             storyID = as.character(storyURL[21:40,1]), 
                             headline = as.character(storyURL[21:40,3]), 
                             matrix(unlist(articleText21_40), nrow = num), 
                             themes = as.character(storyURL[21:40,7]))

names(articleDF21_40)[4] <- 'text'
str(articleDF21_40)



#41-60

storyChar41_60 <- matrix(as.character(storyURL[41:60, 4]))

storyChar41_60

num <- length(storyURL[41:60, 4])
num

xml41_60 <- try(apply(storyChar41_60, 1, read_html))


articleText41_60 <- lapply(xml41_60, textScraper)
str(articleText41_60)


articleDF41_60 <- data.frame(mediaID=as.character(storyURL[41:60,8]),
                             storyID = as.character(storyURL[41:60,1]), 
                             headline = as.character(storyURL[41:60,3]), 
                             matrix(unlist(articleText21_40), nrow = num), 
                             themes = as.character(storyURL[41:60,7]))

names(articleDF41_60)[4] <- 'text'
str(articleDF41_60)


#61-80

storyChar61_80 <- matrix(as.character(storyURL[61:80, 4]))

storyChar61_80

num <- length(storyURL[61:80, 4])
num

xml61_80 <- try(apply(storyChar61_80, 1, read_html))


articleText61_80 <- lapply(xml61_80, textScraper)
str(articleText61_80)

articleDF61_80 <- data.frame(mediaID=as.character(storyURL[61:80,8]),
                             storyID = as.character(storyURL[61:80,1]), 
                             headline = as.character(storyURL[61:80,3]), 
                             matrix(unlist(articleText21_40), nrow = num), 
                             themes = as.character(storyURL[61:80,7]))

names(articleDF61_80)[4] <- 'text'
str(articleDF61_80)


#81-100

storyChar81_100 <- matrix(as.character(storyURL[81:100, 4]))

storyChar81_100

num <- length(storyURL[81:100, 4])
num

xml81_100 <- try(apply(storyChar81_100, 1, read_html))

articleText81_100 <- lapply(xml81_100, textScraper)
str(articleText81_100)

articleDF81_100 <- data.frame(mediaID=as.character(storyURL[81:100,8]),
                              storyID = as.character(storyURL[81:100,1]), 
                              headline = as.character(storyURL[81:100,3]), 
                              matrix(unlist(articleText81_100), nrow = num), 
                              themes = as.character(storyURL[81:100,7]))

names(articleDF81_100)[4] <- 'text'
str(articleDF81_100)


#101-120 

storyChar101_120 <- matrix(as.character(storyURL[101:120, 4]))

storyChar101_120

num <- length(storyURL[101:120, 4])
num

xml101_120 <- try(apply(storyChar101_120, 1, read_html))

articleText101_120 <- lapply(xml101_120, textScraper)
str(articleText101_120)

articleDF101_120 <- data.frame(mediaID=as.character(storyURL[101:120,8]),
                               storyID = as.character(storyURL[101:120,1]), 
                               headline = as.character(storyURL[101:120,3]), 
                               matrix(unlist(articleText101_120), nrow = num), 
                               themes = as.character(storyURL[101:120,7]))

names(articleDF101_120)[4] <- 'text'
str(articleDF101_120)


#121-140 

storyChar121_140 <- matrix(as.character(storyURL[121:140, 4]))

storyChar121_140

num <- length(storyURL[121:140, 4])
num

xml121_140 <- try(apply(storyChar121_140, 1, read_html))


articleText121_140 <- lapply(xml121_140, textScraper)
str(articleText121_140)


articleDF121_140 <- data.frame(mediaID=as.character(storyURL[121:140,8]),
                               storyID = as.character(storyURL[121:140,1]), 
                               headline = as.character(storyURL[121:140,3]), 
                               matrix(unlist(articleText121_140), nrow = num), 
                               themes = as.character(storyURL[121:140,7]))

names(articleDF121_140)[4] <- 'text'
str(articleDF121_140)


#141-160 

storyChar141_160 <- matrix(as.character(storyURL[141:160, 4]))

storyChar141_160

num <- length(storyURL[141:160, 4])
num

xml141_160 <- try(apply(storyChar141_160, 1, read_html))


articleText141_160 <- lapply(xml141_160, textScraper)
str(articleText141_160)

articleDF141_160 <- data.frame(mediaID=as.character(storyURL[141:160,8]),
                               storyID = as.character(storyURL[141:160,1]), 
                               headline = as.character(storyURL[141:160,3]), 
                               matrix(unlist(articleText141_160), nrow = num), 
                               themes = as.character(storyURL[141:160,7]))

names(articleDF141_160)[4] <- 'text'
str(articleDF141_160)



#161-180

storyChar161_180 <- matrix(as.character(storyURL[161:180, 4]))

storyChar161_180

num <- length(storyURL[161:180, 4])
num

xml161_180 <- try(apply(storyChar161_180, 1, read_html))

articleText161_180 <- lapply(xml161_180, textScraper)
str(articleText161_180)


articleDF161_180 <- data.frame(mediaID=as.character(storyURL[161:180,8]),
                               storyID = as.character(storyURL[161:180,1]), 
                               headline = as.character(storyURL[161:180,3]), 
                               matrix(unlist(articleText161_180), nrow = num), 
                               themes = as.character(storyURL[161:180,7]))

names(articleDF161_180)[4] <- 'text'
str(articleDF161_180)


#181-200

storyChar181_200 <- matrix(as.character(storyURL[181:200, 4]))

storyChar181_200

num <- length(storyURL[181:200, 4])
num

xml181_200 <- try(apply(storyChar181_200, 1, read_html))

articleText181_200 <- lapply(xml181_200, textScraper)
str(articleText181_200)

articleDF181_200 <- data.frame(mediaID=as.character(storyURL[181:200,8]),
                               storyID = as.character(storyURL[181:200,1]), 
                               headline = as.character(storyURL[181:200,3]), 
                               matrix(unlist(articleText181_200), nrow = num), 
                               themes = as.character(storyURL[181:200,7]))

names(articleDF181_200)[4] <- 'text'
str(articleDF181_200)


#201-220

storyChar201_220 <- matrix(as.character(storyURL[201:220, 4]))

storyChar201_220

num <- length(storyURL[201:220, 4])
num

xml201_220 <- try(apply(storyChar201_220, 1, read_html))


articleText201_220 <- lapply(xml201_220, textScraper)
str(articleText201_220)

articleDF201_220 <- data.frame(mediaID=as.character(storyURL[201:220,8]),
                               storyID = as.character(storyURL[201:220,1]), 
                               headline = as.character(storyURL[201:220,3]), 
                               matrix(unlist(articleText201_220), nrow = num), 
                               themes = as.character(storyURL[201:220,7]))

names(articleDF201_220)[4] <- 'text'
str(articleDF201_220)


#221-240

storyChar221_240 <- matrix(as.character(storyURL[221:240, 4]))

storyChar221_240

num <- length(storyURL[221:240, 4])
num

xml221_240 <- try(apply(storyChar221_240, 1, read_html))

articleText221_240 <- lapply(xml221_240, textScraper)
str(articleText221_240)

articleDF221_240 <- data.frame(mediaID=as.character(storyURL[221:240,8]),
                               storyID = as.character(storyURL[221:240,1]), 
                               headline = as.character(storyURL[221:240,3]), 
                               matrix(unlist(articleText221_240), nrow = num), 
                               themes = as.character(storyURL[221:240,7]))

names(articleDF221_240)[4] <- 'text'
str(articleDF221_240)


#241-260

storyChar241_260 <- matrix(as.character(storyURL[241:260, 4]))

storyChar241_260

num <- length(storyURL[241:260, 4])
num

xml241_260 <- try(apply(storyChar241_260, 1, read_html))

articleText241_260 <- lapply(xml241_260, textScraper)
str(articleText241_260)

articleDF241_260 <- data.frame(mediaID=as.character(storyURL[241:260,8]),
                               storyID = as.character(storyURL[241:260,1]), 
                               headline = as.character(storyURL[241:260,3]), 
                               matrix(unlist(articleText241_260), nrow = num), 
                               themes = as.character(storyURL[241:260,7]))

names(articleDF241_260)[4] <- 'text'
str(articleDF241_260)


#261-280

storyChar261_280 <- matrix(as.character(storyURL[261:280, 4]))

storyChar261_280 

num <- length(storyURL[261:280, 4])
num

xml261_280 <- try(apply(storyChar261_280, 1, read_html))

articleText261_280 <- lapply(xml261_280, textScraper)
str(articleText261_280)


articleDF261_280 <- data.frame(mediaID=as.character(storyURL[261:280,8]),
                               storyID = as.character(storyURL[261:280,1]), 
                               headline = as.character(storyURL[261:280,3]), 
                               matrix(unlist(articleText261_280), nrow = num), 
                               themes = as.character(storyURL[261:280,7]))

names(articleDF261_280)[4] <- 'text'
str(articleDF261_280)


#281-300 

storyChar281_300 <- matrix(as.character(storyURL[281:300, 4]))

storyChar281_300 

num <- length(storyURL[281:300, 4])
num

xml281_300 <- try(apply(storyChar281_300, 1, read_html))

articleText281_300 <- lapply(xml281_300, textScraper)
str(articleText281_300)


articleDF281_300 <- data.frame(mediaID=as.character(storyURL[281:300,8]),
                               storyID = as.character(storyURL[281:300,1]), 
                               headline = as.character(storyURL[281:300,3]), 
                               matrix(unlist(articleText281_300), nrow = num), 
                               themes = as.character(storyURL[281:300,7]))

names(articleDF281_300)[4] <- 'text'
str(articleDF281_300)


#301-320

storyChar301_320 <- matrix(as.character(storyURL[301:320, 4]))

storyChar301_320

num <- length(storyURL[301:320, 4])
num

xml301_320 <- try(apply(storyChar301_320, 1, read_html))

articleText301_320 <- lapply(xml301_320, textScraper)
str(articleText301_320)


articleDF301_320 <- data.frame(mediaID=as.character(storyURL[301:320,8]),
                               storyID = as.character(storyURL[301:320,1]), 
                               headline = as.character(storyURL[301:320,3]), 
                               matrix(unlist(articleText301_320), nrow = num), 
                               themes = as.character(storyURL[301:320,7]))

names(articleDF301_320)[4] <- 'text'
str(articleDF301_320)


#321-340

storyChar321_340 <- matrix(as.character(storyURL[321:340, 4]))

storyChar321_340

num <- length(storyURL[321:340, 4])
num

xml321_340 <- try(apply(storyChar321_340, 1, read_html))


articleText321_340 <- lapply(xml321_340, textScraper)
str(articleText321_340)

articleDF321_340 <- data.frame(mediaID=as.character(storyURL[321:340,8]),
                               storyID = as.character(storyURL[321:340,1]), 
                               headline = as.character(storyURL[321:340,3]), 
                               matrix(unlist(articleText321_340), nrow = num), 
                               themes = as.character(storyURL[321:340,7]))

names(articleDF321_340)[4] <- 'text'
str(articleDF321_340)

#340-350
storyChar341_350 <- matrix(as.character(storyURL[341:350, 4]))

storyChar341_350

num <- length(storyURL[341:350, 4])
num

xml341_350 <- try(apply(storyChar341_350, 1, read_html))


articleText341_350 <- lapply(xml341_350, textScraper)
str(articleText341_350)

articleDF341_350 <- data.frame(mediaID=as.character(storyURL[341:350,8]),
                               storyID = as.character(storyURL[341:350,1]), 
                               headline = as.character(storyURL[341:350,3]), 
                               matrix(unlist(articleText341_350), nrow = num), 
                               themes = as.character(storyURL[341:350,7]))

names(articleDF341_350)[4] <- 'text'
str(articleDF341_350)


#total with missing 

total <- rbind(articleDF1_20,articleDF21_40,articleDF41_60,articleDF61_80,articleDF101_120,articleDF121_140,articleDF141_160,articleDF161_180,articleDF181_200,articleDF201_220,articleDF221_240,articleDF241_260,articleDF261_280,articleDF281_300,articleDF301_320,articleDF321_340,articleDF341_350)


# keep csv
write.csv(total, file = "breitbait with missing")

total= read.csv("breitbait with missing",header = TRUE, row.names = 1)

