#!/bin/bash

#Pull config from file.
DATE=$( date +%m-%d-%Y_%H-%M-%S)
HOST=$"jdkoreclipse.net"
PACKAGE=$"ViciousAOSP_toro_nightly_$DATE.zip"
LCD=$"~/android/system/out/target/product/toro"
#ServerCD=$"public_html/mirror/rom/toro/jdkx"

 echo "
 === Welcome to JDBOT! Build has initiated successfully! ===
"

ftp -n -v $HOST << EOT
ascii
user <user> <pass>
prompt
cd public_html/buildbot
lcd ~/jdbot
put index.html
EOT

cd ~/android/system
repo sync -j4
# git clone https://jdkoreclipse@github.com/JDK-X/android-omap-tuna_3.0.git
#cd android-omap-tuna_3.0
#make tuna_defconfig
#make -j9 ARCH=arm CROSS_COMPILE=/home/jdkoreclipse/android/4.4.4/bin/arm-none-eabi-
#rm  ~/android/system/device/samsung/tuna/kernel
#cp ~/android/system/android-omap-tuna_3.0/arch/arm/boot/zImage ~/android/system/device/samsung/tuna/kernel
#cd ~/android/system
make clean
. build/envsetup.sh && lunch 1
make otapackage -j16
cd $LCD 
echo " 
=== Packing files. ===
"
cp ~/android/system/out/target/product/toro/jdk_toro-ota-eng.jdkoreclipse.zip  ~/android/system/out/target/product/toro/$PACKAGE
md5sum ~/android/system/out/target/product/toro/$PACKAGE > ~/android/system/out/target/product/toro/$PACKAGE.md5sum

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

ftp -n -v $HOST << EOT
ascii
user <u> <p>
prompt
cd public_html/buildbot
lcd ~/jdbot/in
put index.html
EOT

echo " 
=== DONE! ===
"
exit
