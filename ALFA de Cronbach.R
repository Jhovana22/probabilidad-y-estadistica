#ALFA DE CRONBACH

#paquete a utilizar
install.packages("userfriendlyscience")
library(userfriendlyscience)

#Exploración de la matriz datos
dim(BD_Likert_csv_1_)
names(BD_Likert_csv_1_)
str(BD_Likert_csv_1_)
typeof(BD_Likert_csv_1_)

#En busca de valores perdidos
anyNA(BD_Likert_csv_1_)

#localiza la posición de los valores perdidos
which(is.na(BD_Likert_csv_1_))

#elimina las filas que contengan datos perdidos
# y se guarda en una nueva matriz de datos que es la
#que se utilizará para trabajar.

BD_Likert2<-na.omit(BD_Likert_csv_1_)


#Construcción de los constructos

attach(BD_Likert2)

constructo1<-data.frame(A1,A2,A3,A4,A5,A6,A7,A8)
constructo2<-data.frame(B1,B2,B3,B4)
constructo3<-data.frame(C1,C2,C3,C4,C5,C6)
names(
constructo2 <-select(BD_Likert2,18)
library(psych)
#Calculamos el alfa de Cronbach para cada
#uno de los constructos

scaleReliability(constructo1)
alpha(constructo2)
scaleReliability(constructo3)

#--------------EJERCICIO-------
#1.- Completa la construccion de los constructos
#D,E,F,G Y H.
constructo4<-data.frame(D1,D2,D3,D4,D5,D6,D7,D8,D9,D10,D11,D12,D13)
constructo5<-data.frame(E1,E2,E3,E4,E5,E6,E7,E8,E9,E10,E11)
constructo6<-data.frame(F1,F2,F3,F4,F5,F6,F7,F8)
constructo7<-data.frame(G1,G2,G3,G4,G5,G6,G7,G8)
constructo8<-data.frame(H1,H2,H3,H4)
constructo4<-select(BD_Likert2,23,31,35,38,41,47,48,53,55,56
constructo6<-select(BD_Likert2,12,14,19,20,34,
constructo8<-select(BD_Likert2,4,8,9,18)
#2.- Calcula el coeficiente alfa de cronbach para
#los constructos D, E, F, G Y H

scaleReliability(constructo4)
scaleReliability(constructo5)
scaleReliability(constructo6)
scaleReliability(constructo7)
scaleReliability(constructo8)
library(psych)
alpha(constructo4)
alpha(constructo6)
alpha(constructo8)