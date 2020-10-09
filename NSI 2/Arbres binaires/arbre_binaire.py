
# https://pixees.fr/informatiquelycee/n_site/nsi_term_projet_4.html

class ArbreBinaire:
   def __init__(self, valeur):
      self.valeur = valeur
      self.enfant_gauche = None
      self.enfant_droit = None

   def insert_gauche(self, valeur):
      if self.enfant_gauche == None:
         self.enfant_gauche = ArbreBinaire(valeur)
      else:
         new_node = ArbreBinaire(valeur)
         new_node.enfant_gauche = self.enfant_gauche
         self.enfant_gauche = new_node

   def insert_droit(self, valeur):
      if self.enfant_droit == None:
         self.enfant_droit = ArbreBinaire(valeur)
      else:
         new_node = ArbreBinaire(valeur)
         new_node.enfant_droit = self.enfant_droit
         self.enfant_droit = new_node

   def get_valeur(self):
      return self.valeur

   def get_gauche(self):
      return self.enfant_gauche

   def get_droit(self):
      return self.enfant_droit


######début de la construction de l'arbre binaire###########

racine = ArbreBinaire('A')
racine.insert_gauche('B')
racine.insert_droit('F')

b_node = racine.get_gauche()
b_node.insert_gauche('C')
b_node.insert_droit('D')

f_node = racine.get_droit()
f_node.insert_gauche('G')
f_node.insert_droit('H')

c_node = b_node.get_gauche()
c_node.insert_droit('E')

g_node = f_node.get_gauche()
g_node.insert_gauche('I')

h_node = f_node.get_droit()
h_node.insert_droit('J')

######fin de la construction de l'arbre binaire###########

def affiche(T):
   if T != None:
      return (T.get_valeur(),affiche(T.get_gauche()),affiche(T.get_droit()))



def hauteur(arbre):
  if arbre is not None:
      return 1 + max(hauteur(arbre.enfant_gauche), hauteur(arbre.enfant_droit))
  else:
      return 0

# https://pixees.fr/informatiquelycee/n_site/nsi_term_algo_arbre.html#prefixe
def parcours_infixe(arbre):
   if arbre is not None:
      x = arbre
      parcours_infixe(x.enfant_gauche)
      print(x.valeur, end=" - ")
      parcours_infixe(x.enfant_droit)

# https://pixees.fr/informatiquelycee/n_site/nsi_term_algo_arbre.html#prefixe
def parcours_prefixe(arbre):
   pass

print(affiche(racine))
print(hauteur(racine))
parcours_infixe(racine)