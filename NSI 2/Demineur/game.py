from pprint import pprint
from random import randint
import pygame

LEVEL = {"Facile": 10, "Moyen": 50, "Fou": 100}
POURCENTAGE_BOMBE = 20
CASE = 32


taille = LEVEL['Facile']

nb_bombe = taille**2 * POURCENTAGE_BOMBE // 100
position_bombes = set()
grille = [[0] * taille for i in range(taille)]
# J'ajoute à mon ensemble une position aléatoire jusqu'à avoir le nombre voulu de position de bombes
while len(position_bombes) < nb_bombe:
    position_bombes.add((randint(0, taille - 1), (randint(0, taille - 1))))
print(position_bombes)
# Placement des des bombes
for position in position_bombes:
    grille[position[0]][position[1]] = 1
    print(f"placement d'une bombe dans la grille à la ligne {position[0]} et colonne {position[1]}")

pprint(grille)

pygame.init()
fenetre = pygame.display.set_mode((800,600))
pygame.display.set_caption("Démineur")
cadre = pygame.image.load("media/cadre.png").convert_alpha()
cadre = pygame.transform.scale(cadre, (CASE, CASE))
bombe = pygame.image.load("media/mine.png").convert_alpha()
bombe = pygame.transform.scale(bombe, (CASE, CASE))
pygame.draw.rect(fenetre, (225, 190, 231),(0, 0, taille * CASE, taille * CASE))
for i in range(taille):
    for j in range(taille):
        fenetre.blit(cadre, (i * CASE, j* CASE))

pygame.display.flip()
run = True
while run :
  for event in pygame.event.get():
    if event.type == pygame.QUIT:
      run = False
    if event.type == pygame.MOUSEBUTTONDOWN:
      if pygame.mouse.get_pressed() == (1, 0, 0):
        pos = pygame.mouse.get_pos()
        print(pos)
        x = pos[0] // 32
        y = pos[1] // 32
        print(f"ligne {y + 1} colonne {x + 1}")
        if (x, y) in position_bombes:
            print("BOUUUUUUUUUUUUM !!!")
            pygame.draw.rect(fenetre, (255, 0, 00), (x * CASE, y * CASE, CASE, CASE))
            fenetre.blit(bombe, (x * CASE, y * CASE))
        else:
            print("SAFE")
    pygame.display.flip()
pygame.quit()