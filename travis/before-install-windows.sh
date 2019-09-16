#!/bin/bash

mkdir -p bin

wget -c https://github.com/LoopPerfect/buckaroo/releases/download/$BUCKAROO_VERSION/buckaroo-windows.exe -O bin/buckaroo
chmod +x ./bin/buckaroo
sudo cp ./bin/buckaroo /usr/bin/buckaroo
buckaroo version

if [ $BUCKAROO_USE_BAZEL ]
then

choco install bazel

else

choco install zip
choco install unzip
choco install buck

powershell -Command 'set-executionpolicy unrestricted'
powershell -Command 'Install-Module -Name PSCX -AllowClobber'
powershell -Command 'Install-Module -Name VSSetup -AllowClobber'
powershell -Command 'Import-VisualStudioVars 2017 amd64'

fi
