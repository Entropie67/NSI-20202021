

contact = {"prénom": "kevin", "nom": "Durant", "age": 17}


print(contact["age"])
print(contact.get("sexe", "non renseigné"))
print(contact)

for cle in contact:
    print(cle)