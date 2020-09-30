import pygame
from config import *

class Case:
    def __init__(self, bombe: bool, ligne: int, colonne: int) -> None:
        self.bombe: bool = bombe
        self.revelee: bool = False
        self.position_ligne: int = ligne
        self.position_colonne: int = colonne
        self.marquee: bool = False
        self.nb_bombes_voisines: int = 0
        print(f"La case est initialisée en ({self.position_ligne}, {self.position_colonne})")

    def affichage(self, fenetre, cadre):
        fenetre.blit(cadre, (self.position_ligne * CASE, self.position_colonne * CASE))

    def est_cliquee(self):
        self.revelee == True
        if self.bombe == True:
            print("perdu")
            return "perdu"
        else:
            print("pas perdu")
            return "pas perdu encore"
