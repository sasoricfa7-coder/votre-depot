E1 = {"bois", "acier", "béton", "verre", "platre"}
print(E1)

choix = input("Veuillez choisir un materiaux : ")

if choix in E1 :
    print(f"{choix} est dans l'ensemble.")

else :
    print(f"{choix} n'est pas dans l'ensemble")

E1.update(["cuivre", "alluminium", "fer", "acier"])

print("Les mate")