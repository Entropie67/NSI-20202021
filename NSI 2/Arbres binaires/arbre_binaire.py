
class Noeud:
    """noeud d'un arbre binaire"""
    def __init__(self, g, v, d):
        self.gauche = g
        self.droite = d
        self.valeur = v

    def __str__(self):
        return str(self.valeur)



