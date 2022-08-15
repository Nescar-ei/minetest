#!/bin/bash
#
# Minetest Multi-Arch v5.5.0
#

export MINETEST32PROFILE=$PACK/data/minetest_32
export MINETEST64PROFILE=$PACK/data/minetest_64



echo -en "Starting minetest..."
if [ $(cat $HOME/.eishu_minetest_starter.conf | grep check_newer_updates | cut -d "=" f2) = "true" ]; then
echo -en "\rViewing for newer minetest version."
CDDDDDDDDDDDDDD=$PWD
mkdir -p /tmp/EISHU_minetest_upgrader
cd /tmp/EISHU_minetest_upgrader
wget -q raw.githubusercontent.com/EISHU-MT/minetest/main/newer_minetest_version
so="newer_minetest_version"
if [ $(ls) ]; then
var4261=$(cat $so)
mv $so $var4261
else
echo -en "\rError: internet are needed or file was removed too fast."
echo -en "\rJust starting directly minetest....                         "
if [ "$(uname -m)" = "x86_64" ]; then
$PACK/data/minetest_64/bin/minetest.sh
fi
if [ "$(uname -m)" = "*i386*" ]; then
$PACK/data/minetest_32/bin/minetest.sh
fi
rm -r /tmp/EISHU_minetest_upgrader
fi

if [ "$ROOT" ]; then
cp $ROOT/EISHU_minetest_version $PWD/
var3297=$(ls | grep EISHU_ --color=never)
var7851=$(cat $var3297)
mv $var3297 $var7851
else
echo -en "\rError: internet are needed or file was removed too fast."
echo -en "\rJust starting directly minetest....                         "
if [ "$(uname -m)" = "x86_64" ]; then
$PACK/data/minetest_64/bin/minetest.sh
fi
if [ "$(uname -m)" = "*i386*" ]; then
$PACK/data/minetest_32/bin/minetest.sh
fi
rm -r /tmp/EISHU_minetest_upgrader
exit 1
fi
# Sorry for the long file...
if [ "$(expr $var4261 != $var7851)" = 1 ]; then
echo -en "\rNew update available!"
echo -en "\rIf you want... update it with putting this commands\n"
echo "# pil remove minetest"
echo "and put this: # ppil --ins-down minetest"
echo
echo "Now starting minetest....."
if [ "$(uname -m)" = "x86_64" ]; then
$PACK/data/minetest_64/bin/minetest
fi
if [ "$(uname -m)" = "*i386*" ]; then
$PACK/data/minetest_32/bin/minetest
fi
fi
exit $?
fi
if [ "$(uname -m)" = "x86_64" ]; then
$PACK/data/minetest_64/bin/minetest
fi
if [ "$(uname -m)" = "*i386*" ]; then
$PACK/data/minetest_32/bin/minetest
fi

