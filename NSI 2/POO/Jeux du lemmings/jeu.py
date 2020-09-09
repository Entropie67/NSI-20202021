
class Jeu:

    def __init__(self):
        self.lemmins = []
        self.grotte = self._generer()

    def _generer(self):
        dessin = "grotte"
        structure = []
        with open(dessin, "r") as file:
            for line in file:
                ligne = []
                line = line.strip('\n')
                for case in line:
                    ligne.append(case)
                structure.append(ligne)
        return structure

    def affichage(self):

        for ligne in self.grotte:
            for case in ligne:
                print(case, end='')
            print()
        return chaine

    def tour(self):
        pass

    def demarre(self):
        pass

jeu = Jeu()
jeu.affichage()