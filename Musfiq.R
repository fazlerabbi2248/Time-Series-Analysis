musV<- c(253,78,0,0,70,0,90,0,0,202,11,
         0,107,191,220,0,69,24,0,0,0,156,0,
         0,0,0,0,0,0,0,0,44,112,0,42,
         0,0,1,0,116,163,0,0,0,178,0,0,
         142,0,0,0,0,0,110,0,302,83,0,133,
         0,46,0,0,166,327,215,0,0,0,0,0,
         0,0,74)
print(musV)
musTs<- ts(musV,start = c(2014,2),frequency =12)
print(musTs)
plot.ts(musTs)
library(TTR)
musLog<- log(musTs)
plot(musLog)
musTsSMA3<- SMA(musTs,n=3)
plot(musTs)
musdecompose<- decompose(musTs)
plot(musdecompose)
mushfore<- HoltWinters(musTs,beta = FALSE,gamma = FALSE)
mushfore
mushfore$fitted
plot(mushfore)

