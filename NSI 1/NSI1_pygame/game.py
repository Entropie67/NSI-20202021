import pygame as pg
from pygame.locals import *

pg.init()
screen = pg.display.set_mode((600, 400), RESIZABLE)
pg.display.set_caption('Mon premier jeu')
fond = pg.image.load("images/fond.jpg").convert()
screen.blit(fond, (0, 0))
# Chargement et collage du personnage
perso = pg.image.load("images/robot.png").convert_alpha()
perso = pg.transform.scale(perso, (32, 32))
position_perso = perso.get_rect()
screen.blit(perso, position_perso)
pg.key.set_repeat(400, 30)  # Pour pouvoir rester appuyer sur la touche

#################################
# Réccupération du contenu du fichier map0.txt
##################################

with open("maps/map01", 'r') as file:
    data = file.read()
    print(data)
structure = data.split("\n")
print(structure)


def affiche_map(fenetre, structure):
    mur = pg.image.load("images/mur.jpg").convert()
    mur = pg.transform.scale(mur, (32, 32))
    num_ligne = 0
    for ligne in structure:
        num_col = 0
        for case in ligne:
            if case == "m":
                screen.blit(mur, (32 * num_col, 32 * num_ligne))
            num_col += 1
        num_ligne += 1


def move(structure, position, direction):
    x = position[0]
    y = position[1]
    colonne = x // 32
    ligne = y // 32
    if direction == "droite":
        if structure[ligne][colonne + 1] == "m":
            print("Bim le mur")
            return position
        else:
            pass
    print(f"Le personne se trouve actuellement en colonne {colonne} et ligne {ligne}")
    return position


continuer = True
while continuer:
    for event in pg.event.get():  # On parcours la liste de tous les événements reçus
        if event.type == QUIT:  # évènement de type quit, comme la croix en haut
            continuer = False
        if event.type == KEYDOWN:
            if event.key == K_SPACE:
                print("Tu viens d'utiliser la touche espace !")
            if event.key == K_RETURN:
                print("Tu viens d'utiliser la touche entrée !")
            if event.key == K_RIGHT:
                move(structure, position_perso, "droite")
                position_perso = position_perso.move(32, 0)
            if event.key == K_LEFT:
                position_perso = position_perso.move(-32, 0)
            if event.key == K_DOWN:
                position_perso = position_perso.move(0, 32)
            if event.key == K_UP:
                position_perso = position_perso.move(0, -32)
            # ajouter les autres déplacements
    # screen.blit(fond, (0, 0))
    screen.fill((129, 199, 132))
    # Dessine un rectangle sans raison.
    pg.draw.rect(screen, (0, 0, 255), (50, 50, 50, 50))
    affiche_map(screen, structure)
    screen.blit(perso, position_perso)

    pg.display.flip()
