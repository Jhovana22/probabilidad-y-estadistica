#Análisis de datos en escala Likert
install.packages("likert")
install.packages("ggplot2")
library(likert)
library(ggplot2)

#Matriz de datos
data("pisaitems")

#Nombre de la matriz de datos
pisa<-pisaitems

#Explorar la matriz de datos
names(pisa)
typeof(pisa)
str(pisa)

#Valores que componen una variable
head(pisa$CNT)
head(pisa$ST25Q01)

#Buscamos valores perdidos
anyNA(pisa)
#numero total de datos perdidos en la matriz de datos
sum(is.na(pisa))
#Eliminacion de filas con datos perdidos 
#y creamos una nueva matriz
pisa2<-na.omit(pisa)
#Verificamos que la nueva matriz no tenga valores perdidos
anyNA(pisa2)

head(pisa2)

#VARIABLE 39
#Agrupamiento de items
names(pisa2)
items39<-pisa2[,64:70]
head(items39[1:7,1:7])

#Renombramos las etiquetas de respuesta
levels(items39)<-c("Nunca",
                   "Unas cuantas veces al año",
                   "Aproximadamente una vez al mes",
                   "Varias veces al mes",
                   "Varias veces a la semana")
#colocar los nombres a los indicadores

names(items39)<-c("Libros prestados para leer por placer",
                  "Pedir prestados libros para el trabajo escolar",
                  "Trabajaren la tarea, curso trabajos o trabajos de investigacion",
                  "Leer revistas o periodicos",
                  "Leer libros por diversión",
                  "Aprenda cosas que no son relacionados con el curso, como los deportes, pasatiempos, gente o musica",
                  "Utilizar internet")
l39<-likert(items39)

#Generamos el grafico de barras
plot(l39,type="bar",centered=FALSE)

#Grafico de barras con porcentajes
install.packages("plyr")
library(plyr)
plot(l39,type="bar",centered=TRUE, plot.percents=TRUE)

#Grafico de barras ordenado
plot(l39,group.order = colnames(items39))

#Grafico de densidad
likert.density.plot(l39,facet=TRUE,bw=0.5, 
                    legend = "Gráfico de densidad")

#gráfico de calor
plot(l39, type="heat")
