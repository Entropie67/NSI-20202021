
class Case:

    def __init__(self, terrain):
        self.terrain = terrain
        self.lemming = None

    def __str__(self):
        if self.lemming is not None:
            return str(self.lemming)
        else:
            return self.terrain

    def libre(self):
        if self.terrain == ' ' and self.lemming is None and self.terrain == '0':
            return True
        else:
            return False

    def depart(self):
        self.lemming = None

    def arrivee (self, lem):
        if self.terrain == '0':
            lem.sort()
        else:
            self.lemming = lem