print("\n\t#####################\n")
# Affiche coucou 5 fois !
for _ in range(5):
    print("coucou")
    print("\n\t#####################\n")
# 5 fois, mais attention, de 0 à 4 !
for i in range(5):
    print(i)

print("\n\t#####################\n")
# de 2 à 41 de 3 en 3
for i in range(2, 42, 3):
    print(i)

print("\n\t#####################\n")
print("\t*** Table de 13 ***\n")

for i in range(1, 11):
    # print(i, " x 13 =", i * 13)
    print(f"{i} x 13 = {i*13}")  # Seulement à partir de  Python 3.6

print("\n\t#####################\n")
# Calculons la somme des 100 premiers entiers
somme = 0
for i in range(101):
    somme = somme + i
    # somme += i
print(somme)

print("\n\t#####################\n")
# Petit programme pour calculer sa moyenne

nb_notes = int(input("Le nombre de notes :"))
somme = 0
for i in range(nb_notes):
    note = int(input("Ta note :"))
    somme = somme + note
moyenne = somme / nb_notes
print("Ta moyenne est :", moyenne)

print("\n\t#####################\n")
# Calcul la somme des carrés des n premiers entiers.

n = int(input("Combien d'entiers ?"))
somme = 0
for i in range(1, n+1):
    somme = somme + i**2
print(somme)