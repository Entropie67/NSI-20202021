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

    def affichage(self, fenetre):
        pygame.init()
        cadre = pygame.image.load("media/cadre.png").convert_alpha()
        cadre = pygame.transform.scale(cadre, (CASE, CASE))
        fenetre.blit(cadre, (i * CASE, j * CASE))
