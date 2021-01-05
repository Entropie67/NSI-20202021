from pprint import pprint
import pygame as pg
from pygame.locals import *

pg.init()
TAILLE_CASE = 64
TAILLE_SCREEN = (980, 680)
screen = pg.display.set_mode(TAILLE_SCREEN, RESIZABLE)
mur = pg.image.load("images/mur.jpg").convert_alpha()
mur = pg.transform.scale(mur, (TAILLE_CASE, TAILLE_CASE))


with open("maps/map01", 'r') as file:
    data = file.read()

structure = data.split("\n")
pprint(structure)

num_ligne = 0
for ligne in structure:
    num_col = 0
    for case in ligne:
        if case == "m":
            screen.blit(mur, (num_col * TAILLE_CASE, num_ligne * TAILLE_CASE))
        elif case == "#":
            pg.draw.rect(screen, (255, 0, 0), [num_col * TAILLE_CASE, num_ligne * TAILLE_CASE, TAILLE_CASE, TAILLE_CASE])
        print(f" La case ({num_ligne}, {num_col}) contient un {case}")
        num_col += 1
    num_ligne += 1


continuer = True
while continuer:
    for event in pg.event.get():  # On parcours la liste de tous les événements reçus
        if event.type == QUIT:  # évènement de type quit, comme la croix en haut
            continuer = False
    pg.display.flip()
