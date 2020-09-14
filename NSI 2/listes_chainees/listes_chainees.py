from .cellule import Cellule

class Liste:
    """ Une liste chaînée"""

    def __init__(self):
        self.tete = None

    def est_vide(self):
        return self.tete is None

    def ajoute(self, x):
        