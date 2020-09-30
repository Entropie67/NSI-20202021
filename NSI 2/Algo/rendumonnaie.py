
pieces = [1, 2, 5, 10, 20, 50, 100, 200]

def rendu_monnaie(prix, somme_donnee):
    """retourne la monnaie détaillée sous forme de dictionnaire"""
    monnaie = 0
    reste = somme_donnee - prix
    n = len(pieces) - 1
    while reste > 0:
        piece_max = pieces[n]
        if piece_max <= reste:
            r = reste // piece_max
            reste = reste - r * piece_max
            print(f"On vient de rendre {r} pièce de {piece_max} cts")
        n -= 1
    return monnaie

rendu_monnaie(250, 465)