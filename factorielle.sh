#!/bin/bash

read -p 'Chosissez un nombre ' a

if [ a>=0 ]; then
    factorielle=1
    if [ $a>0 ]; then
   	 while [ $a -ne 1 ]; do
   		 let factorielle=$factorielle*$a
   		 let a=$a-1
   	 done
   	 echo $factorielle
    else
   	 echo "ce nombre est négatif !"
    fi
fi
