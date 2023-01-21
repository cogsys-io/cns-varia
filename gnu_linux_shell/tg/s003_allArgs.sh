#!/bin/bash
if [ $# -eq 0 ];
then
    echo "Nie podano zadnych argumentow!!!"
else
    echo Podane argumenty: $*
fi
exit 0
