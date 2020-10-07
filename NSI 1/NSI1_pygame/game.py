import pygame as pg
from pygame.locals import *

pg.init()
screen = pg.display.set_mode((600, 400), RESIZABLE)
pg.display.set_caption('Mon premier jeu')
fond = pg.image.load("images/fond.jpg").convert()
screen.blit(fond, (0, 0))
#Chargement et collage du personnage
perso = pg.image.load("images/robot.png").convert_alpha()
perso = pg.transform.scale(perso, (50, 50))
position_perso = perso.get_rect()
screen.blit(perso, position_perso)
pg.key.set_repeat(400, 30) # Pour pouvoir rester appuyer sur la touche

continuer = True
while continuer:
    for event in pg.event.get():  # On parcours la liste de tous les événements reçus
        if event.type == QUIT: # évènement de type quit, comme la croix en haut
            continuer = False
        if event.type == KEYDOWN:
            if event.key == K_SPACE:
                print("Tu viens d'utiliser la touche espace !")
            if event.key == K_RETURN:
                print("Tu viens d'utiliser la touche entrée !")
            if event.key == K_RIGHT:
                position_perso = position_perso.move(5, 0)
            if event.key == K_LEFT:
                position_perso = position_perso.move(-5, 0)
            if event.key == K_DOWN:
                position_perso = position_perso.move(0, 5)
            if event.key == K_UP:
                position_perso = position_perso.move(0, -5)
            # ajouter les autres déplacements
    screen.blit(fond, (0, 0))
    pg.draw.rect(screen, (0, 0, 255), (50, 50, 50, 50))
    screen.blit(perso, position_perso)
    pg.display.flip()



