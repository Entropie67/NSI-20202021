from pprint import pprint
from random import randint
import pygame

LEVEL = {"Facile": 10, "Moyen": 50, "Fou": 100}
POURCENTAGE_BOMBE = 20

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

fenetre = pygame.display.set_mode((800,600))
run = True
while run :
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            run = False
pygame.quit()