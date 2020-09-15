####################################
#           Les fonctions          #
####################################
# NSI 1 - M. Elophe                #
####################################
import turtle # Pour l'une ou l'autre fonction
# Voici trois exemples de fonctions.


def damier(n: int, m: int) -> int:
    pass


def perimetre_triangle(a: float, b: float, c: float) -> float:
    pass


def triangle_bleu(l: int) -> None:
    """ Procédure permettant de tracer un triangle bleu"""
    t = turtle.Turtle()
    t.fillcolor('blue')
    t.begin_fill()
    for i in range(3):
        t.forward(100)
        t.left(120)
    t.end_fill()
    turtle.exitonclick()

# Une fonction qui ne retourne rien est appellée une procédure.
# Ceci dit, en Python, None est retourné par défaut

triangle_bleu(100)

##############################
#           EXERCICES        #
##############################

