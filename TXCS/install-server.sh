#!/bin/bash
echo "INSTALLER"
vars=("Adduce" "proxus" "podboy")
for var in ${vars[@]};
do
    echo "Install $var? [Enter/N]"
    read install
    echo $install
    if [ "$install" != "N" ]; then
        mkdir build
        cd build
        git clone "https://github.com/toastxc/$var.git"
        cd $var
        git pull
        sh install.sh
        cd ..
        cd ..
    fi
done

echo "clean up files? [Enter/N]"
read clean
if [ "$clean" != "N" ]; then
  rm build* -rf  
fi

# proxus install.sh
# podboy install.sh
