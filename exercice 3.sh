#!/bin/bash

function is_number()
{
re='^[+-]?[0-9]+([.][0-9]+)?$'

if ! [[ $1 =~ $re ]] ; then
return 1
else
return 0
fi
}

is_number $1
if [ $? = 0 ]; then
echo 'ce nombre est réel'
else
echo "ce n'est pas un nombre réel"
fi