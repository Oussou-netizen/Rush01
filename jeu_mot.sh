#!/bin/bash

# On exporte et exécute le contenu su script chat_2_bienvenue.sh et joue_ou_pas.sh avec la com SOURCE
source chat_2_bienvenue.sh
source joue_ou_pas.sh

# Début du jeu
# Si le joueur choisi de continuer le jeu, alors...
if [ "$reponse1" == 1 ]; then
    echo "Je savais que tu vas le faire !"
    echo " Tu as le choix entre deviner des mots ou des lettres"

    # On utilise la boucle while pour exiger le joueur à choisir soit les mots ou les lettres.
    while true; do
        echo " 1. Je choisis les mots"
        echo " 2. Je choisis les lettres"
        read -p "Fais un choix: " choix

        # Si le joueur choisis de deviner les mots ou les lettres, on arrete la boucle while
        if [[ "$choix" == 1 || "$choix" == 2 ]]; then
            break
        else # Sinon on le redemande de choisir entre les mots ou les lettres
            echo " Tu dois choisir entre 1 ou 2"
        fi
    done 
         # Si le joueur choisit les mots alors 
         if [ "$choix" == 1 ]; then
            for mot in "${mots[@]}"; do  
             read -p "Devinez le mot : " devine
            
                 # Si le mot deviner est correct alors
                 if [ "$devine" == "$mot" ]; then
                    echo "Well done, bonne réponse !"
                    score=$((score + 1))
                 else # S'il n'est pas correct....
                    echo "You lose ! Le mot était : $mot"
                 break
                 fi 
            done
             # On affiche le score à la fin du tour
             echo -e "Votre score final est : $score/${#mots[@]}\n"
             echo "            Fin du jeu         "
      
         # Si le joueur choist les lettres alors
         elif [ "$choix" == 2 ]; then
            for lettre in "${lettres[@]}"; do  
                read -p "Devinez la lettre : " devine

                # Si la lettre devinée est correcte...
                if [ "$devine" == "$lettre" ]; then
                    echo "Well done, Bonne réponse !"
                    score=$((score + 1))
                else # Si la lettre n'est pas correcte....
                    echo "You lose ! La lettre était : $lettre"
                break
                fi
            done 
            echo -e "Votre score final est : $score/${#lettres[@]}\n"
            echo "            Fin du jeu           "
            
          fi
 else # si le joueur choisit de ne pas continuer le jeu
     echo "Puisque tu ne joue pas, à bientot !"
fi
     
   

