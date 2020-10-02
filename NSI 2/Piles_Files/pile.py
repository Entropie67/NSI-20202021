"""
Piles :
on peut savoir si une pile est vide (pile_vide?)
on peut empiler un nouvel élément sur la pile (push)
on peut récupérer l'élément au sommet de la pile tout en le supprimant. On dit que l'on dépile (pop)
on peut accéder à l'élément situé au sommet de la pile sans le supprimer de la pile (sommet)
on peut connaitre le nombre d'éléments présents dans la pile (taille)
"""
class Pile:
    """ Structure de pile"""
    def __init__(self):
        self.liste = []

    def est_vide(self):
        return len(self.liste)

    def empiler(self, v):
        self.liste.append(v)

    def depiler(self):
        if self.est_vide():
            raise IndexError("Tu dépiles une liste vide ? Serieusement ?")
        return self.liste.pop()
