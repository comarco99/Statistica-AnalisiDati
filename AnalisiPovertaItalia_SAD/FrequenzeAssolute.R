#DEFINIZIONE DELLE CLASSI
classi<-c(2,14,26,38,50,62,74,86)


#FREQUENZE ASSOLUTE CON E SENZA CLASSI PER FAMIGLIE CON GRANDI DIFFICOLTA
table(grande_difficolta)
table(cut(grande_difficolta, breaks=classi))

barplot(table(cut(grande_difficolta, breaks=classi)), col = 1:2)


#FREQUENZE ASSOLUTE CON E SENZA CLASSI PER FAMIGLIE CON MEDIA DIFFICOLTA
table(media_difficolta)
table(cut(media_difficolta, breaks=classi))

barplot(table(cut(media_difficolta, breaks=classi)), col = 3:7)


#FREQUENZE ASSOLUTE CON E SENZA CLASSI PER FAMIGLIE CON POCA DIFFICOLTA
table(poca_difficolta)
table(cut(poca_difficolta, breaks=classi))

barplot(table(cut(poca_difficolta, breaks=classi)), col = 7:11)

#FREQUENZE ASSOLUTE CON E SENZA CLASSI PER FAMIGLIE CON MOLTA FACILITA
table(molta_facilita)
table(cut(molta_facilita, breaks=classi))

barplot(table(cut(molta_facilita, breaks=classi)), col = 12:15)
