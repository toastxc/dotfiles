#!/bin/bash
echo "INSTALLER"
vars=("adduce" "proxus" "podboy")
for var in ${vars[@]};
do
    echo "Remove $var? [Enter/N]"
    read remove
    if [ "$remove" == "" ]; then
       sudo rm /bin/$var
    fi
done