from cellule import *

class Liste:
    """ Une liste chaînée"""

    def __init__(self):
        self.tete = None

    def est_vide(self):
        return self.tete is None

    def ajoute(self, x):
        self.tete = Cellule(x, self.tete)

    def __len__(self):
        return longueur(self.tete)

    def __getitem__(self, n):
        """ retourne l'élément d'index n à l'appel de liste[n]"""
        return nieme_element(n, self.tete)

    def reverse(self):
        self.tete = renverse(self.tete)

    def __add__(self, l):
        r = Liste()
        r.tete = concatenation(self.tete, l.tete)
        return r



l = Liste()
print(l.est_vide())
l.ajoute(3)
l.ajoute(2)
l.ajoute(1)
print(len(l))
print(l[1])
print(l.est_vide())