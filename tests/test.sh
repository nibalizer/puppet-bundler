#!/bin/bash

export SUCCESS=0
export FAILURE=1

verify_directory() {
    if ! [ -d $1 ]; then
        echo "Failing Test $2"
    fi
}



#Test #1
testnum=1
rm -fr modules
mkdir -p modules
MODULEPATH=modules
../bin/puppet-bundler metadata-example.json >/dev/null 2>&1
RESULT=$?
if [ $RESULT -ne $SUCCESS ]; then
    echo "Failing Test #${testnum}"
fi
mods_should_exist='apt concat firewall stdlib'
for mod in $mods_should_exist
do
    verify_directory modules/$mod $testnum
done
rm -fr modules





