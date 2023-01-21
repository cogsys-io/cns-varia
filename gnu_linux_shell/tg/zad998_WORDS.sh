#!/bin/bash
myWords=($(grep '^'$1'.*'$2'$' /usr/share/dict/words  | tr "\n" " "))
echo ${myWords[*]}
echo " "
echo ${myWords[1]}
echo " "
myWORDS=( $(
              for el in "${myWords[@]}"
              do
                  echo "$el"
              done | sort -r ) )
echo "${myWORDS[*]}"
echo " "
echo "${myWORDS[1]}"
echo " "



for ((ii=0;ii<=END-1;ii++)); do
    echo $ii
    echo there is ${#myWords[$ii]} letters in the word \"${myWords[$ii]}\"
done
