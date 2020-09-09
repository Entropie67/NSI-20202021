

class Fraction:
    """ classe permettant de représenter et manipuler des fractions"""

    # "Constructeur" de la classe, pour initialiser une instance de la classe
    def __init__(self, numerateur: int, denominateur: int):
        if denominateur <= 0:
            raise ValueError(str(denominateur) + " n'est pas strictement positif ! Patate")
        self.numerateur = numerateur
        self. denominateur = denominateur

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
    def _pgcd(dividende: int, diviseur: int) -> int:
        """ Calcul du PGCD avec l'algorithme d'Euclide"""
        reste = -1
        while reste != 0:
            reste = dividende % diviseur
            dividende = diviseur
            diviseur = reste
        return dividende

    def _reduction(self):
        pass

    def __add__(self):
        pass

