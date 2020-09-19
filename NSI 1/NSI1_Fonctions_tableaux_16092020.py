
# NSI 1 (première) / 16/09/2020

# Les tableaux :

t = [7, 3, 5, 9, 12, 4, 5, 8, 5, 6, 5]
# Programme pour trouver le maximum du tableau
max = t[0]
for elt in t:
    print(f'Pour le moment, le maximum est : {max}')
    if elt > max:
        max = elt
# Programme pour compter le nombre de 5
compteur = 0
for elt in t:
    if elt == 5:
        compteur = compteur + 1
print(compteur)




