#!/bin/bash
if [ $# -lt 1 ];
then
    echo "Podaj plik lub katalog jako argument."
    echo "Uzycie: $0 plik"
    exit 1
fi
if [ -f $1 ];
then
    more $1
else
    if [ -d $1 ];
    then
        ls -lahtr $1
    else
        echo "Blad: $1 nie jest plikiem ani katalogiem"
    fi
fi
