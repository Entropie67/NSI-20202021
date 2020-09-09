from lemming import Lemming
from case import Case
class Jeu:

    def __init__(self, carte):
        self.lemmings = []
        self.grotte = self._generer(carte)

    def _generer(self, carte):

        structure = []
        with open(carte, "r") as file:
            for line in file:
                ligne = []
                line = line.strip('\n')
                for case in line:
                    ligne.append(Case(case))
                structure.append(ligne)
        return structure

    def __getitem__(self, i):
        return self.grotte[i]

    def affichage(self):

        for ligne in self.grotte:
            for case in ligne:
                print(case, end='')

            print()

    def ajout_lemming(self):
        if self.grotte[0][1].libre():
            lem = Lemming(self, 0, 1)
            self.lemmings.append(lem)
            self.grotte[0][1].arrivee(lem)

    def tour(self):
        for lem in self.lemmings[:]:
            lem.action()

    def demarre(self):
        while True:
            cmd = input()
            if cmd == 'q':
                break
            elif cmd == 'l':
                self.ajout_lemming()
            else:
                self.tour()
            self.affichage()

jeu = Jeu("grotte").demarre()
