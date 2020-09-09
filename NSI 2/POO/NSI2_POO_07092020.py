

class Fraction:
    """ classe permettant de représenter et manipuler des fractions"""

    # "Constructeur" de la classe, pour initialiser une instance de la classe
    def __init__(self, numerateur: int, denominateur: int):
        if denominateur <= 0:
            raise ValueError(str(denominateur) + " n'est pas strictement positif ! Patate")
        self.numerateur = numerateur
        self.denominateur = denominateur
        self._reduction()

    # la méthode spéciale __str__ est celle appelée quand l'objet est en argument de print
    def __str__(self) -> str:
        if self.denominateur != 1:
            return str(self.numerateur) + " / " + str(self.denominateur)
        else:
            return str(self.numerateur)

    # La méthode spéciale __mul__ appelée avec l'utilisation de l'opérateur *
    def __mul__(self, fraction):
        a = self.numerateur * fraction.numerateur
        b = self.denominateur * fraction.denominateur
        reponse = Fraction(a, b)
        return reponse

    # Appelée avec l'utilisation de ==
    def __eq__(self, fraction):
        if self.denominateur == fraction.denominateur and self.numerateur == fraction.numerateur:
            return True
        else:
            return False

    # je préfixe cette méthode de _ pour spécifier qu'elle n'a pas vocation à être appelée en dehors de la classe
    # c'est une méthode interne, privée
    def _pgcd(self, dividende: int, diviseur: int) -> int:
        """ Calcul du PGCD avec l'algorithme d'Euclide"""
        reste = -1
        while reste != 0:
            reste = dividende % diviseur
            dividende = diviseur
            diviseur = reste
        return dividende

    def _reduction(self):
        pgcd = self._pgcd(self.numerateur, self.denominateur)
        self.numerateur = self.numerateur // pgcd
        self.denominateur = self.denominateur // pgcd

    def __add__(self, fraction):
        a = self.numerateur * fraction.denominateur + fraction.numerateur * self.denominateur
        b = self.denominateur * fraction.denominateur
        reponse = Fraction(a, b)
        return reponse

frac = Fraction(30, 50)
frac2 = Fraction(25, 15)
print(frac)
print(frac2)
print(frac2 + frac)
print(frac * frac2)
