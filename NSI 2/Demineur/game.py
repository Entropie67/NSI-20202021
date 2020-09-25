from pprint import pprint
from random import randint

LEVEL = {"Facile": 10, "Moyen": 50, "Fou": 100}
POURCENTAGE_BOMBE = 20

taille = LEVEL['Facile']
nb_bombe = taille**2 * POURCENTAGE_BOMBE // 100

position_bombes = set()
grille = [[0] * taille for i in range(taille)]

# J'ajoute à mon ensemble une position aléatoire jusqu'à avoir le nombre voulu de position de bombes
while len(position_bombes) < nb_bombe:
    position_bombes.add((randint(0, taille - 1), (randint(0, taille - 1))))

# Placement des des bombes

pprint(grille)
print(position_bombes)