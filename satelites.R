data <- read.table("satelites.txt",header = TRUE)
radios<-data[,2]

#Media
mean(radios)

#Mediana
median(radios)

#Desviacion tipica
sd(radios)

#Rango Intercuartil
IQR(radios)

#Cuartiles
quantile(radios,.25)
quantile(radios,.50)
quantile(radios,.75)

#Percentiles
for (i in 1:99){
  print(quantile(radios,i/100))
}

#Deciles
for (i in 1:10){
  print(quantile(radios,i/10))
}

#Calcula la moda
library(modeest)
mfv(radios)


library(foreign)
data2<- read.spss("cardata.sav",use.value.labels=TRUE, max.value.labels=TRUE, to.data.frame=TRUE) #abrimos el archivo en SPSS, activamos los argumentos escribiendo “=TRUE” y le ponemos de nombre “ejemplo3”.
consumo <- data2[,1]
consumoTratado =na.omit(consumo)
#Media
mean(consumoTratado)

#Mediana
median(consumoTratado)

#Desviacion tipica
sd(consumoTratado)

#Rango Intercuartil
IQR(consumoTratado)

#Cuartiles
quantile(consumoTratado,.25)
quantile(consumoTratado,.50)
quantile(consumoTratado,.75)

#Percentiles
for (i in 1:99){
  print(quantile(consumoTratado,i/100))
}

#Deciles
for (i in 1:10){
  print(quantile(consumoTratado,i/10))
}

#Calcula la moda
library(modeest)
mfv(consumoTratado)
