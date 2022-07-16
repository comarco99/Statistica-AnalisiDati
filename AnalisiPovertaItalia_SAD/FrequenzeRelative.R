
#FREQUENZE RELATIVE CON E SENZA CLASSI PER FAMIGLIE CON GRANDI DIFFICOLTA
table(grande_difficolta)/length(grande_difficolta)
table(cut(grande_difficolta, breaks=classi))/length(grande_difficolta)

barplot(table(cut(grande_difficolta, breaks=classi))/length(grande_difficolta), col = 1:2)


#FREQUENZE RELATIVE CON E SENZA CLASSI PER FAMIGLIE CON MEDIA DIFFICOLTA
table(media_difficolta)/length(media_difficolta)
table(cut(media_difficolta, breaks=classi))/length(media_difficolta)

barplot(table(cut(media_difficolta, breaks=classi))/length(media_difficolta), col = 3:7)


#FREQUENZE RELATIVE CON E SENZA CLASSI PER FAMIGLIE CON POCA DIFFICOLTA
table(poca_difficolta)/length(poca_difficolta)
table(cut(poca_difficolta, breaks=classi))/length(poca_difficolta)

barplot(table(cut(poca_difficolta, breaks=classi))/length(poca_difficolta), col = 7:11)

#FREQUENZE RELATIVE CON E SENZA CLASSI PER FAMIGLIE CON MOLTA FACILITA
table(molta_facilita)/length(molta_facilita)
table(cut(molta_facilita, breaks=classi))/length(molta_facilita)

barplot(table(cut(molta_facilita, breaks=classi))/length(molta_facilita), col = 12:15)



