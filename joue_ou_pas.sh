#!/bin/bash
# Menu inter actif pour le choix de la direction que prendra le jeu. 
echo "***********************************"
echo "      Devine moi si tu peux    "
echo "***********************************"
echo "    Que choisissez vous ?    "
echo "1. Je me lance"
echo "2. Je me dégonfle" 
read -p "   On fait comment ?  " reponse1 
# Boucle pour emmener l'utilisateur à ne choisr que de jouer ou de quitter. 
while [[ "$reponse1" != 1 && "$reponse1" != 2 ]]; do
        read -p "-->" reponse1
done

