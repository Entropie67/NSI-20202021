##############################
# Vérifier un carré magique
# Exercice 7 page 96
##############################
CARRE_MAGIQUE = [
    [2, 7, 6],
    [9, 5, 1],
    [4, 3, 8]
    ]

print(CARRE_MAGIQUE[2][0])


def somme_ligne(carre: list, n: int) -> int:
    """
    carre est un tableau carré de nombre
    n est un nombre entier
    Retourne la somme de ne ligne numéro n
    """
    somme = 0
    for nombre in carre[n]:
        somme = somme + nombre
    return somme


def somme_col(carre: list, n: int) -> int:
    """
    carre est un tableau carré de nombre
    n est un nombre entier
    Retourne la somme de ne ligne numéro n
    """
    somme = 0
    for i in range(len(carre)):
        somme = somme + carre[i][n]
    return somme


def verifie_lignes(carre: list) -> bool:
    """
    Fonction qui retourne True si toutes les lignes donnent
    la même somme, False sinon
    """
    somme = somme_ligne(carre, 0)
    for i in range(1, len(carre)):
        if somme_ligne(carre, i) != somme:
            return False
    return True


def verifie_col(carre: list) -> bool:
    """
    Fonction qui retourne True si toutes les lignes donnent
    la même somme, False sinon
    """
    somme = somme_col(carre, 0)
    for i in range(1, len(carre)):
        if somme_col(carre, i) != somme:
            return False
    return True

def verifie_diag(carre: list) -> bool:
    somme1 = 0
    somme2 = 0
    n = len(carre)
    for i in range(n):
        somme1 += carre[i][i]
        somme2 += carre[i][n-i - 1]
    return somme1 == somme2



def est_magique(carre: list) -> bool:
    # Attention, cela ne marche pas, les colonnes et les lignes peuvent avoir des sommes différentes !
    return verifie_col(carre) and verifie_lignes(carre) and verifie_diag(carre)



print(est_magique(CARRE_MAGIQUE))