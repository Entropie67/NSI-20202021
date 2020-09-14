

class Cellule:
    """ Une cellule d'une liste chainée"""
    def __init__(self, v, s):
        self.valeur = v
        self.suivant = s


def affichage(l: Cellule) -> None:
    """ Fonction qui affiche une liste chainée"""
    n = 0
    c = l
    while c is not None:
        n += 1
        print(c.valeur, end="  -> " )
        c = c.suivant
    print()

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



###################################################
#  n ième élément d'une liste chainée
###################################################

def nieme_element(n: int, l: Cellule):
    """renvoie la n'ième valeur de la liste, les éléments sont numérotés à partir de 0"""
    if l is None:
        raise IndexError("Indice invalide")
    if n == 0:
        return l.valeur
    else:
        return nieme_element(n - 1, l.suivant)


###################################################
#  concaténer deux listes chainées
###################################################

def concatenation(l1: Cellule, l2: Cellule) -> Cellule:
    if l1 is None:
        return l2
    else:
        return Cellule(l1.valeur, concatenation(l1.suivant, l2))

def renverse(l):
    r = None
    c = l
    while c is not None:
        r = Cellule(c.valeur, r)
        c = c.suivant
    return r

def main():
    liste = Cellule(42, Cellule(7, Cellule(8, Cellule( 90, None))))
    liste2 = Cellule(32, Cellule(77, Cellule(823, Cellule( 9780, None))))
    assert longueur(liste) == 4, " La version récursive ne marche pas !"
    assert longueur_itérative(liste) == 4, "la version itérative ne marche pas !"
    liste3 = concatenation(liste, liste2)
    affichage(liste)
    affichage(liste2)
    affichage(liste3)
    assert nieme_element(2, liste) == 8, "Ce n'est pas le n-ieme élément"
    liste4 = renverse(liste3)
    affichage(liste4)

if __name__== '__main__':
    print("exectué")
    main()
else:
    print("Le fichier cellule est importé\n")