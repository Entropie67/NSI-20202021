

class Cellule:
    """ Une cellule d'une liste chainée"""
    def __init__(self, v, s):
        self.valeur = v
        self.suivant = s

liste = Cellule(42, Cellule(7, Cellule(8, Cellule( 90, None))))

###################################################
#  Longueure d'une liste chainée
###################################################

def longueur(l: Cellule) -> int:
    """ Fonction qui donne la longueur d'une liste chainée"""
    if l.suivant is None:
        return 1
    else:
        return 1 + longueur(l.suivant)

def longueur_itérative(l: Cellule) -> int:
    """ Fonction qui donne la longueur d'une liste chainée"""
    n = 0
    c = l
    while c is not None:
        n += 1
        c = c.suivant
    return n

assert longueur(liste) == 4, " La version récursive ne marche pas !"
assert longueur_itérative(liste) == 4, "la version itérative ne marche pas !"

###################################################
#  n ième élément d'une liste chainée
###################################################

def nieme_element(n: int, l: Cellule):
    pass