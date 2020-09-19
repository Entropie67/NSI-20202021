####################################
#           Les fonctions          #
####################################
# NSI 1 - M. Elophe                #
####################################

# Voici trois exemples de fonctions.

def damier(n: int, m: int) -> int:
    nombre = n * m
    return nombre
print(damier(12, 13))

def perimetre_triangle(a: float, b: float, c: float) -> float:
    perimetre = a + b + c
    return perimetre

print(perimetre_triangle(12, 3, 2))

import turtle as tle # Pour l'une ou l'autre fonction
def triangle_bleu(l: int) -> None:
    """ Procédure permettant de tracer un triangle bleu"""
    tle.fillcolor('pink')
    tle.begin_fill()
    for i in range(3):
        tle.forward(l)
        tle.left(120)
    tle.end_fill()


"""triangle_bleu(100)
tle.left(120)
triangle_bleu(100)
tle.forward(100)
tle.right(120)
triangle_bleu(100)"""
triangle_bleu(200)
tle.left(60)
tle.forward(200)
tle.left(30)
tle.up()
tle.forward(50)
tle.down()
tle.left(150)
triangle_bleu(150)
tle.exitonclick()


# Une fonction qui ne retourne rien est appellée une procédure.
# Ceci dit, en Python, None est retourné par défaut

#triangle_bleu(300)

##############################
#           EXERCICES        #
##############################

# Exercice 57 page 434

def test_pythagore(a: int, b: int, c: int) -> bool:
    """ Fonction qui vérifie si c² = a² + b²"""
    if c**2 == a**2 + b**2:
        return True
    else:
        return False

def test_pythagore_v2(a: int, b: int, c: int) -> bool:
    """ Fonction qui vérifie si c² = a² + b²"""
    return c**2 == a**2 + b**2

assert test_pythagore(3, 4, 5) == True, "La fonction bug !"
assert test_pythagore(3, 4, 6) == False, "La fonction bug !"
#print(test_pythagore(3, 4, 5))

def val_absolue(x: float) -> float:
    if x >= 0:
        return x
    else:
        return -x

print(val_absolue(-6.7))

def max2(a, b):
    if a > b:
        return a
    else:
        return b

def max3(n1, n2, n3):
    return max2(max2(n1, n2), n3)

print(max3(5, 12, 8))

def bissextile(a):
    if a%4 == 0 and a%100 != 0:
        return True
    elif a%400 == 0:
        return True
    else:
        return False

