Exercice 4 :
#!/bin/bash

if [[ "$1" == "" ]]; then
echo "Utilisation : $0 nom_utilisateur"
else
if getent passwd $1 > /dev/null 2>&1 ; then
echo "Il existe un utilisateur qui porte ce nom !"
else
echo "Aucun utilisateur ne porte ce nom."
fi
fi