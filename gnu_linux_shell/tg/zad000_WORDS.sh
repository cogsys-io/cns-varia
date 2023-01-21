#!/bin/bash
myWords=($(grep $1 /usr/share/dict/words))
# echo ${myWords[*]}
# echo " "
# echo ${myWords[1]}

END=${#myWords[*]}

# echo $END

for ((ii=END-1;ii>=0;ii--)); do
    echo $ii
    echo there is ${#myWords[$ii]} letters in the word \"${myWords[$ii]}\"
done
