import requests

# https://fr.openfoodfacts.org/
#https://requests.readthedocs.io/en/master/


url = "https://fr.openfoodfacts.org/category/pizzas/1.json"
reponse = requests.request("GET", url)
print(reponse.text.encode('utf8'))