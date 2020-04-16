# Extracting Harry Potter text from harrypotter package via R Studio
# Will be looped later!

#Install needed packages
{
install.packages(c("curl", "httr", "devtools"))
devtools::install_github("bradleyboehmke/harrypotter")
}

#Set Working Directory
setwd("C:/Users/cluel/Documents/GitHub/Harry-Potter-Text-Mining/Book Text")

#Putting books into data frame objects
Book1 = as.data.frame(harrypotter::philosophers_stone)
Book2 = as.data.frame(harrypotter::chamber_of_secrets)
Book3 = as.data.frame(harrypotter::prisoner_of_azkaban)
Book4 = as.data.frame(harrypotter::goblet_of_fire)
Book5 = as.data.frame(harrypotter::order_of_the_phoenix)
Book6 = as.data.frame(harrypotter::half_blood_prince)
Book7 = as.data.frame(harrypotter::deathly_hallows)

#Renaming first column to "Text" instead of the package/title
colnames(Book1)[colnames(Book1)=="harrypotter::philosophers_stone"] <- "Text"
colnames(Book2)[colnames(Book2)=="harrypotter::chamber_of_secrets"] <- "Text"
colnames(Book3)[colnames(Book3)=="harrypotter::prisoner_of_azkaban"] <- "Text"
colnames(Book4)[colnames(Book4)=="harrypotter::goblet_of_fire"] <- "Text"
colnames(Book5)[colnames(Book5)=="harrypotter::order_of_the_phoenix"] <- "Text"
colnames(Book6)[colnames(Book6)=="harrypotter::half_blood_prince"] <- "Text"
colnames(Book7)[colnames(Book7)=="harrypotter::deathly_hallows"] <- "Text"

#Adding field for chapter and book number
Book1$Chapter <- seq.int(nrow(Book1))
Book1$Book <- 1
Book2$Chapter <- seq.int(nrow(Book2))
Book2$Book <- 2
Book3$Chapter <- seq.int(nrow(Book3))
Book3$Book <- 3
Book4$Chapter <- seq.int(nrow(Book4))
Book4$Book <- 4
Book5$Chapter <- seq.int(nrow(Book5))
Book5$Book <- 5
Book6$Chapter <- seq.int(nrow(Book6))
Book6$Book <- 6
Book7$Chapter <- seq.int(nrow(Book7))
Book7$Book <- 7

#Creating file objects with appropriate encoding
Text1 <- file("HPBook1.txt", open="w", encoding="UTF-8")
Text2 <- file("HPBook2.txt", open="w", encoding="UTF-8")
Text3 <- file("HPBook3.txt", open="w", encoding="UTF-8")
Text4 <- file("HPBook4.txt", open="w", encoding="UTF-8")
Text5 <- file("HPBook5.txt", open="w", encoding="UTF-8")
Text6 <- file("HPBook6.txt", open="w", encoding="UTF-8")
Text7 <- file("HPBook7.txt", open="w", encoding="UTF-8")

#Writing tables with "@" symbol used to separate
write.table(Book1, Text1, sep="@",row.names=FALSE)
write.table(Book2, Text2, sep="@",row.names=FALSE)
write.table(Book3, Text3, sep="@",row.names=FALSE)
write.table(Book4, Text4, sep="@",row.names=FALSE)
write.table(Book5, Text5, sep="@",row.names=FALSE)
write.table(Book6, Text6, sep="@",row.names=FALSE)
write.table(Book7, Text7, sep="@",row.names=FALSE)

#Close file objects
close(Text1)
close(Text2)
close(Text3)
close(Text4)
close(Text5)
close(Text6)
close(Text7)
