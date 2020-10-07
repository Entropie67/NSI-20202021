import pygame
from pygame.locals import * 

TAILLE_FENETRE = (600, 300)
COULEUR_FENETRE = (0, 0, 255)  # (R, V, B)
COULEUR_TRAIT = (0, 255, 0)
COULEUR_CERCLE = (255, 255, 255)
rouge, vert, bleu = 0, 0, 255
pygame.init()
fenetre = pygame.display.set_mode(TAILLE_FENETRE)
pygame.display.set_caption("TP1 souris coordonnees et pygame")
fenetre.fill(COULEUR_FENETRE)
continuer = True
liste = []
x_clic, y_clic = -100, -100
while continuer:
    for event in pygame.event.get():

        if event.type == QUIT:
            continuer = False
        elif event.type == KEYDOWN:
            if event.key == K_ESCAPE:
                print("Touche Escape")
                continuer = False
            elif event.key == K_RIGHT:
                bleu -= 16
                if bleu < 0:
                    bleu = 255
            elif event.key == K_LEFT:
                vert += 16
                if vert > 255:
                    vert = 0
            else :
                print("Autre touche")
        elif event.type == MOUSEBUTTONDOWN:
            print("clic !")
            (x_clic, y_clic) = event.pos
            print(f"({x_clic}, {y_clic})")

        elif event.type == MOUSEMOTION :
            (x, y) = event.pos
            liste.append((x, y))
            # https://www.pygame.org/docs/ref/draw.html#pygame.draw.rect
    fenetre.fill((rouge, vert, bleu))
    for point in liste[-100:]:
            pygame.draw.rect(fenetre, (0, 255, 0), (point[0] - 5, point[1] - 4, 10, 8), 0)
    pygame.draw.circle(fenetre, COULEUR_CERCLE, (x_clic, y_clic), 20, 0)

    pygame.display.flip()
    
pygame.quit()
