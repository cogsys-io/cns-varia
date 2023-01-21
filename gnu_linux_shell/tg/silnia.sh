if [[ $# -eq 0 || $1 == "-h" || $1 == "--help" ]];
then
    echo "Uzycie: $0 [-h] liczba"
    echo "Oblicza silnie podanej liczby."
    echo "Opcja -h wyswietla pomoc."
    exit 1
fi
silnia=1;


for (( i=2 ; i<=$1 ; i++ ))
do
    let silnia=silnia*i;
done

echo "Silnia wynosi $silnia"
