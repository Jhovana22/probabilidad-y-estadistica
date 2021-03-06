#X es una variable normalmente distribuida con una media
#de 30 y una desviacion estandar de 4
#Encontrar a) P(x<40)
pnorm(2.5)
pnorm(40,mean=30, sd=4, lower.tail=TRUE)

#B)P(x<21)
P(x>21)=P(Z>-2.25)
pnorm(-2.25)
pnorm(21,mean=30, sd=4, lower.tail = TRUE)

#C) P(30< x < 35)
pnorm(0)
pnorm(1.25)
pnorm(35,mean=30, sd=4, lower.tail = TRUE)-pnorm(30,mean = 30, sd=4, lower.tail =  TRUE)

#X es una variable normalmente distribuida con una media de 45
#y una desviacione estandar de 2
#Encotrar a) P(x<75)
#P(X<75)= P(Z < 15)
pnorm(15)
pnorm(75,mean=45, sd=2, lower.tail= TRUE)

#b) P( x > 13)
pnorm(-16)
pnorm(13, mean = 45, sd=2, lower.tail = TRUE)

#c) P(60 < x < 82)
pnorm(7.5)
pnorm(18.5)
pnorm(82, mean = 45, sd=2, lower.tail = TRUE)-pnorm(60, mean = 45, sd=2, lower.tail = TRUE)

#El ingreso a una determinada universidad se determina mediante un examen nacional. Los resultados de esta prueba se
#distribuyen normalmente con una media de 500 y una desviaci�n est�ndar de 100. Timmy quiere ser admitido en esta
#universidad y sabe que debe obtener mejores resultados que al menos el 70% de los estudiantes que tomaron el examen.
#Timmy presenta el examen y obtuvo 585 puntos. �Ser� admitido en esta universidad?
n=1000
hist(rnorm(n,500,100),20,col="blue")
abline(v=585, col=50)

#solucion
#la probabilidad de que la variable x sea menor que 585 es mayor al 70%?

pnorm(585, mean=500, sd=100)
(0.8023375)*(100)

#El ingreso a la BENV se determina mediante la prueba estandarizada EXANII-II. Los resultados de esta prueba se
#distribuyen normalmente con una media de 1000 y una desviaci�n est�ndar de 100. T� quieres ser admitido en esta
#instituci�n y sabes que debes obtener mejores resultados que al menos el 90% de los estudiantes que tomaron el examen.
#Presentas el examen y obtuviste 1185 puntos.
#�Ser�s admitida/o en la BENV?
n=2600
hist(rnorm(n,1000,100),20, col="pink")
abline(v=1185, col=2)

pnorm(1185, mean=1000, sd=100)
(0.9678432)*(100)

#2.- Prueba de hip�tesis / T-test / Ejercicio
set.seed(10)
x <- rnorm(100,10) # Creaci�n de una variable aleatoria de media 10
Media <- 10
test <- t.test(x, mu=Media) # Comparaci�n de la media muestral con la media
print(test)

#X ADQUIERA VALORES MENORES A 75
#MAY6ORES A 13
#X SEA MWNOS A 60 Y MAYOR A 82
