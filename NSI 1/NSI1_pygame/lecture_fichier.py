from pprint import pprint
import pygame as pg
from pygame.locals import *

pg.init()
TAILLE_CASE = 32
screen = pg.display.set_mode((600, 400), RESIZABLE)
mur = pg.image.load("images/mur.jpg").convert_alpha()
mur = pg.transform.scale(mur, (32, 32))


with open("maps/map01", 'r') as file:
    data = file.read()

structure = data.split("\n")
pprint(structure)

num_ligne = 0
for ligne in structure:
    num_col = 0
    for case in ligne:
        if case == "m":
            screen.blit(mur, (num_col * 32, num_ligne * 32))
        elif case == "_":
            pass
        print(f" La case ({num_ligne}, {num_col}) contient un {case}")
        num_col += 1
    num_ligne += 1


continuer = True
while continuer:
    for event in pg.event.get():  # On parcours la liste de tous les événements reçus
        if event.type == QUIT:  # évènement de type quit, comme la croix en haut
            continuer = False
    pg.display.flip()
