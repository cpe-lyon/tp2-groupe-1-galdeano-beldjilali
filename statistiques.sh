#!/bin/bash
declare -a tab

i=0



function is_number()
{
	re='^[+-]?[0-9]+([.][0-9]+)?$'
	if ! [[ $1 =~ $re ]] ; then
    	echo 1
	else
    	echo 0
	fi
}



while [ 0 ]; do
	read -p "Ajouter un nombre ou laissez vide pour arrêter: " nb
	if [ $(is_number $nb) -eq 0 ]; then
    	tab+=($nb)
    i=$((i+1))
	else
    	break
	fi
done



min=${tab[0]}
max=${tab[0]}
mean=0
j=0
while [ $j -lt $i ]
do
	mean=$((mean+${tab[$j]}))
    
	if [ $min -gt ${tab[$j]} ]
	then
    	min=${tab[$j]}
	fi
	if [ $max -lt ${tab[$j]} ]
	then
    	max=${tab[$j]}
	fi
	j=$((j+1))
done

mean=$((mean/i))

echo -e "Moyenne : $mean\nMax : $max\nMin : $min"
