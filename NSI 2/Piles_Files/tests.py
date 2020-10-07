

from pile import Pile

pile = Pile()
pile.empiler(5)
pile.empiler(6)
pile.empiler(6)
pile.empiler(6)
pile.empiler(6)
pile.empiler(6)
pile.empiler(6)

if pile.est_vide():
    print("C'est bien vide")
else:
    print("la liste n'est pas vide")

print(pile)