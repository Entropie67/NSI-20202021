
class Lemming:

    def __init__(self):
        self.x = c
        self.y = l
        self.direction = 1  # 1 pour droite, -1 pour gauche

    def __str__(self):
        if self.direction == 1:
            return '>'
        else:
            return '<'

    def action(self):
        pass

    def sort(self):
        pass