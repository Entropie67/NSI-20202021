
class Lemming:

    def __init__(self, grotte, x, y):
        self.x = x
        self.y = y
        self.grotte = grotte
        self.direction = 1  # 1 pour droite, -1 pour gauche

    def __str__(self):
        if self.direction == 1:
            return '>'
        else:
            return '<'

    def delacement(self, x, y):
        if not self.grotte[x][y].libre():
            return False
        self.grotte[self.x][self.y].depart()
        self.grotte[x][y].arrive(self)
        return True

    def action(self):
        if self.delacement(self.x+1, self.y):
            self.x += 1
        elif self.delacement(self.x, self.y + self.direction):
            self.y += self.direction
        else:
            self.direction = -self.direction

    def sort(self):
        self.grotte.lemmings.remove(self)