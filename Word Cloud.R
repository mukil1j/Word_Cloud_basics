#installing required packages
install.packages("wordcloud")
library(wordcloud)

#assinging the values to vectors
words<-c("Data","science", "an"," interdisciplinary"," field"," of"," scientific"," methods"," processes"," algorithms"," and"," systems"," knowledge"," extract"," insights"," various"," forms"," either"," structured"," or"," unstructured"," Data"," is"," order"," to"," understand"," analyze"," actual"," phenomena"," concept"," unify"," statistics"," analysis"," machine"," learning"," their"," related"," multidisciplinary"," blend"," of data"," inference"," algorithm"," development"," aspect"," all"," about"," uncovering"," findings"," from"," Diving"," at"," granular"," level"," mine"," complex"," behaviors"," trends"," inferences."," IT"," surfacing"," hidden"," insight"," that"," can"," help"," enable"," companies"," make"," smarter"," business"," decisions"," Core"," languages"," associated"," with"," include"," SQL"," Python"," R"," SAS"," On"," the"," periphery"," are"," Java"," Scala"," Julia"," others"," study"," where"," information"," comes"," what"," it"," represents"," how"," be"," turned"," into"," valuable"," resource"," creation"," and IT"," strategies"," Mining"," large"," amounts"," identify"," patterns"," organization"," rein"," costs"," increase"," efficiencies"," recognize"," new"," market"," opportunities"," organizations"," competitive"," advantage")
freq<-c(70,35,65,33,50,64,66,27,68,66,57,63,48,35,65,44,37,73,71,43,57,34,54,73,62,29,25,33,48,29,45,53,53,45,54,26,64,51,41,60,43,71,28,70,30,30,66,57,28,68,56,75,68,31,56,40,43,41,47,31,56,75,71,45,63,25,42,43,33,46,74,32,25,30,70,60,48,56,45,28,45,28,36,27,65,63,57,40,35,33,43,43,71,26,47,65,45,60,34,62,52,42,47,43,28,45,65,26,31,36,69,37,37,52,48,53,67,66,44,51,45)

#creating as a data frame
data<-as.data.frame(cbind(words,freq))
str(data)

#converting the Class of the variable to numeric
data$freq<-as.numeric(as.character(data$freq))
str(data)

#Building a Word Cloud using Library Word Cloud
wordcloud(words = data$words,freq = data$freq,max.words = 60,min.freq = 1,rot.per = 0.2,colors = brewer.pal(8,"Dark2"))

#Building a Word Cloud using Library WordCloud2
library(wordcloud2)
wordcloud2(data = data)