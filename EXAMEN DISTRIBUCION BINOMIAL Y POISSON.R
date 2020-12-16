#-----DISTRIBUCION BINOMIAL------
#Ejercicio pagina 36
#Hay 12 preguntas de opcion multiple en un examen de matematicas. 
#cada pregunta tienen cinco posibles respuestas, 
#y solo una de ellas es correcta. Encuentra la probabilidad 
#de tener cuatro o menos respuestas correctas si un estudiante 
#intenta responder a cada pregunta al azar

#Probabilidad de escoger una respuesta de 5 posibles
p= 1/5

#Espacio muestral (12 preguntas en total)
n=12

#Probabilidad de tener 4 respuestas correctas elegidas aleatoriamente
k=4

#Funcion en R
dbinom(4,size=12, prob=0.2)

#Ejercicio pagina 37
#Probabilidad de tener cuatro o menos respuestas 
#correctas de forma aleatoria 
#dbinom con k=0,1,2,3,4

sum(dbinom(0:4,12,0.2))

#Ejercicio pagina 38
#Probabilidad de que 2 o 3 preguntas sean respondidas correctamente
#dbinom con k=0,1,2,3

sum(dbinom(2:3,12,0.2))

#Supongamos que la empresa Apple fabricó el Iphone 11S con una probabilidad de
#0.005 de ser defectuoso. El producto se envía en una caja que contiene 25 artículos.
#¿Cuál es la probabilidad de que una caja elegida al azar contenga un Iphone 11S
#defectuoso?

#Probabilidad de que salga un iphone defectuoso en una caja
p2=0.005

#Espacio muestral
n2=25

#probabilidad de que salga defectuoso
k2=1

dbinom(1, size=25, prob=0.005)


#-----DISTRIBUCION POISSON-----
#Ejercicio pagina 40

#Numero de alumnos
x=35
#Tiempo de llegada
lamda=15
#Probabilidad
dpois(35,15)

#Numero de alumnos
x=50
#Tiempo de llegada
lamda=15
#Probabilidad
dpois(50,15)

#Ejercico pagina 41
#1.-¿Cuál es la probabilidad de que a la escuela lleguen 34 alumnos en 5 minutos?

#Numero de alumnos
x2=34
#Tiempo
lamda2=5
#Probabilidad
dpois(34,5)

#2.-¿Cuál es la probabilidad de que a la salida de la escuela, se encuentren 60 alumnos en
#5 minutos?

#Numero de alumnos
x3=60
#Tiempo
lamda3=5
#Probabilidad
dpois(60,5)

#3.- ¿Cuál es la probabilidad de que a la salida de la escuela, se encuentren 120 alumnos
#en 5 minutos?
#Numero de alumnos
x4=120
#Tiempo
lamda4=5
#Probabilidad
dpois(120,5)
