# On import l
import mysql.connector
# https://www.w3schools.com/python/python_mysql_select.asp
# https://www.w3schools.com/sql/
# Connexion à la base.
mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="root",
    database="Marvel"
)
#print(mydb)
####################################################################
mycursor = mydb.cursor()
nom = input("Quel personnage vous interesse ?\n")

sql = (""" SELECT * FROM personnage WHERE nom=%s """)
value = (nom,)
mycursor.execute(sql, value)
myresult = mycursor.fetchall()
print(myresult)
for x in myresult:
  print(x)
# L'équipe de Hulk
sql = (""" 
    SELECT equipes FROM films""")
mycursor.execute(sql)
myresult = mycursor.fetchall()
print(myresult)
for x in myresult:
  print(x)