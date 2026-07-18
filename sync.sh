#!/bin/bash
# 1. Mise à jour de la liste des paquets
dpkg --get-selections > ~/depot/logiciels.txt

# 2. Sauvegarde des configs critiques
cp ~/.zshrc ~/depot/
cp -r ~/.config/micro ~/depot/
# Ajoute ici d'autres dossiers importants au besoin
cp -r ~/.config/nvim ~/depot/ 2>/dev/null 

# 3. Git auto-sync
cd ~/depot
git add .
git commit -m "Auto-sauvegarde du $(date +'%Y-%m-%d %H:%M:%S')"
git push origin main
echo "Synchronisation terminée avec succès !"
