Exercice 6 :

#!/bin/bash

nbAleat=$(( $RANDOM % 1000 ))
nbEssais=0
echo "Trouvez la bonne valeur (entre 1 et 1000) : "

while [[ $nbAleat != $nbChoisi ]]
do
nbEssais=$(($nbEssais + 1))
read -p "Votre prix : " nbChoisi

if [[ $nbAleat -lt $nbChoisi ]]; then
echo "C'est moins ..."

elif [[ $nbAleat -gt $nbChoisi ]]; then
echo "C'est plus ..."

fi
done

echo "C'est gagne ! Et tout ça en $nbEssais essais !"