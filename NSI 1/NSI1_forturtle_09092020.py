from turtle import *

n = 10
m = 10
taille = 20

for i in range(n+1):
    goto(n * taille, taille * i)
    up()
    goto(0, taille * (i+1))
    down()

up()
goto(0, 0)
down()
for j in range(m+1):
    goto(taille * j, taille * n)
    up()
    goto(taille * (j+1), 0)
    down()


exitonclick()