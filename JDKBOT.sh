#!/bin/bash

#Pull config from file.
DATE=$( date +%m-%d-%Y_%H-%M-%S)
HOST=$"jdkoreclipse.net"
PACKAGE=$"jdkx_tuna_nightly_$DATE.zip"
LCD=$"~/android/system/out/target/product/toro"
ServerCD=$"public_html/mirror/rom/toro"

 echo "
 === Welcome to JDBOT! Build has initiated successfully! ===
"
cd ~/android/system
repo sync -j4
# make installclean ######UNCOMMENT IF NEEDED! 
. build/envsetup.sh && lunch 1
make otapackage -j16
cd $LCD 
echo " 
=== Packing files. ===
"
cp ~/android/system/out/target/product/toro/jdk_toro-ota-eng.jdkoreclipse.zip  ~/android/system/out/target/product/toro/$PACKAGE

echo " 
=== Uploading. ===
"
ftp -n -v $HOST << EOT
ascii
user <username> <password>
prompt
cd $ServerCD
lcd $LCD 
put $PACKAGE
EOT

ftp -n -v $HOST << EOT
ascii
user <username> <password>
prompt
cd $ServerCD
lcd $LCD 
put $PACKAGE.md5sum
EOT
echo " 
=== DONE! ===
"
exit
