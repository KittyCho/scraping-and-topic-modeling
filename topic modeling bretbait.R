
library(dplyr)

library(stringr)

library(RcppRoll)

library(rvest)


setwd("/Users/zhuqin/Desktop/UW/2020fall/computational approach/project/news url/article dataframe with missing")


total= read.csv("breitbait with missing",header = TRUE, row.names = 1)


library(tidytext)

text_dataframe<-tibble(line=1:nrow(total),text=total$text,mediaID=total$mediaID)
# text_dataframe$line: 1:4, text_dataframe$text: text
text_dataframe

library(dplyr)
text_dataframe%>%
  unnest_tokens(input=text,output=word,token="words",format="text",drop=T,to_lower=T)%>%
  anti_join(stop_words)%>%
  count(line,word)%>%
  group_by(line)%>%
  arrange(desc(n))%>%
  ungroup
# token and counts 

dtm<-text_dataframe%>%
  unnest_tokens(input=text,output=word,token="words",format="text",drop=T,to_lower=T)%>%
  anti_join(stop_words)%>%
  count(line,word)%>%
  cast_dtm(document=line,term=word,value=n)
as.matrix(dtm) 

library(topicmodels)
lda_mod<-LDA(dtm,k=15,method="Gibbs",control=list(alpha=1,delta=0.1))


##### topic-terms 
#use dplyr’s top_n() 
#to find the 10 terms that are most common within each topic. 
#reference:text
extract <- tidy(lda_mod, matrix = "beta")
extract
#extracting the per-topic-per-word probabilities, called 
#(“beta”), from the model.

top_terms <- extract %>%
  group_by(topic) %>%
  top_n(10, beta) %>%
  ungroup() %>%
  arrange(topic, -beta)
#use dplyr’s top_n() to find the 10 terms 
#that are most common within each topic
#-beta: descrending 

library(ggplot2)
#ggplot visualization 


top_terms %>%
  mutate(term = reorder_within(term, beta, topic)) %>%
  ggplot(aes(beta, term, fill = factor(topic))) +
  geom_col(show.legend = FALSE) +
  facet_wrap(~ topic, scales = "free") +
  scale_y_reordered()



#### document-topic
extract2 <- tidy(lda_mod, matrix = "gamma")
extract2

library(ggplot2)
tidy(lda_mod,matrix="gamma")%>%
  ggplot(aes(x=document,y=gamma))+
  geom_col(aes(fill=as.factor(topic)))






