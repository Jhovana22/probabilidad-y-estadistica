#Abrimos la matriz de datos millas y la pondremos dentro un
#objeto de igual nombre

install.packages("datos") #Este comando descarga el paquete
library(datos) #Este comando abre el paquete

millas<-(datos::millas)

#Vamos a explorar la matriz de datos con los siguientes comandos
?millas
dim(millas)
names(millas)
str(millas)
anyNA(millas)
typeof(millas)
View(millas)

#convertiremos la matriz de datos a "data frame".
millas_1<-as.data.frame(millas)

#iniciaremos calculando los estadisticos descriptivos
summary(millas_1)

#Calcularemos la moda, primero tenemos que instalar el 
#paquete modeest y abrir la libreria
install.packages("modeest")
library(modeest)

#la funcion que utilizaremos para identificar la moda
#es mfv()
mfv(millas_1$fabricante)
mfv(millas_1$modelo)
mfv(millas_1$cilindrada)
mfv(millas_1$anio)
mfv(millas_1$cilindros)
mfv(millas_1$transmision)
mfv(millas_1$traccion)
mfv(millas_1$ciudad)
mfv(millas_1$autopista)
mfv(millas_1$combustible)
mfv(millas_1$clase)

#calculamos la varianza de cada una de las variables
#cuantitativas
var(millas_1$cilindrada)
var(millas_1$anio)
var(millas_1$cilindros)
var(millas_1$ciudad)
var(millas_1$autopista)

#calcularemos la desviacion standar para cada una de las
#variables cuantitativas
sd(millas_1$cilindrada)
sd(millas_1$anio)
sd(millas_1$cilindros)
sd(millas_1$ciudad)
sd(millas_1$autopista)

#coeficiente de variacion
#vamos a instalar el paquete FinCal y abrimos la libreria
install.packages("FinCal")
library(FinCal)

#calculamos el coeficiente de variacion
coefficient.variation(sd=sd(millas_1$cilindrada),
avg=mean(millas_1$cilindrada))
coefficient.variation(sd=sd(millas_1$anio),
avg=mean(millas_1$anio))
coefficient.variation(sd=sd(millas_1$cilindros),
avg=mean(millas_1$cilindros))
coefficient.variation(sd=sd(millas_1$ciudad),
avg=mean(millas_1$ciudad))
coefficient.variation(sd=sd(millas_1$ciudad),
avg=mean(millas_1$ciudad)) 
coefficient.variation(sd=sd(millas_1$autopista),
avg=mean(millas_1$autopista))
#instalaremos el paquete tidyverse y abriremos la libreria
install.packages("tidyverse")
install.packages("RColorBrewer")

#Abrimos las librerias
library(tidyverse)
library(RColorBrewer)

#A)Un grafico de dispersion con las variables cilindrada y autopista
#Diagrama de dispersion 1 
dispersion_1<-ggplot(millas_1, aes(x=cilindrada, y=autopista, color=clase))+
geom_point()

#visualizamos el grafico
dispersion_1

#B)Un grafico boxplot con las variables transmision y ciudad
boxplot<-ggplot(millas_1,aes(factor(transmision),
ciudad, fill=transmision))+ 
geom_boxplot()+               
ggtitle("Boxplot transmision de autos en ciudad")+
xlab("transmision")+
ylab("ciudad")
 #visualizamos el grafico
boxplot

#C)Un grafico de barras para la variable "cilindros"
#Construccion de la tabla con la que vamos a trabajar
attach(millas_1)
tabla_cilindros<-table(millas_1$cilindros)
tabla_cilindros
#especificamos colores
color=c("lightpink","lightpink1","lightpink2","lightpink3")
#Grafico
barplot(tabla_cilindros,xlab="cilindros", ylab="frecuencias",
main="grafico de barras de cilindros", col=color)

