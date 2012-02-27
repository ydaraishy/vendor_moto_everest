#/bin/sh 

if [ $# -ne 1 ]; 
then
   echo "usage: $0 Launcher2.apk";
   echo "   where Launcher2.apk is the Launcher2 from honeycomb."
   echo "   Extracts wallpapers from honeycomb and sets up the vendor"
   echo "   overlay to install them."
   exit 1;
fi;

if [ ! -d overlay/packages/apps/Launcher2/res/drawable-nodpi ]; 
then
   mkdir -p overlay/packages/apps/Launcher2/res/drawable-nodpi/
   mkdir -p overlay/packages/apps/Launcher2/res/values/
fi;

unzip $1 res/drawable-large-nodpi/lotus_small.jpg -d /tmp
unzip $1 res/drawable-large-nodpi/bots_small.jpg -d /tmp
unzip $1 res/drawable-large-nodpi/city.jpg -d /tmp
unzip $1 res/drawable-large-nodpi/glowy_hex.jpg -d /tmp
unzip $1 res/drawable-large-nodpi/flowerbot.jpg -d /tmp
unzip $1 res/drawable-large-nodpi/bucky_small.jpg -d /tmp
unzip $1 res/drawable-large-nodpi/lotus.jpg -d /tmp
unzip $1 res/drawable-large-nodpi/bluelinebots.jpg -d /tmp
unzip $1 res/drawable-large-nodpi/city_small.jpg -d /tmp
unzip $1 res/drawable-large-nodpi/bluecrystal_small.jpg -d /tmp
unzip $1 res/drawable-large-nodpi/bluecrystal.jpg -d /tmp
unzip $1 res/drawable-large-nodpi/bots.jpg -d /tmp
unzip $1 res/drawable-large-nodpi/village_small.jpg -d /tmp
unzip $1 res/drawable-large-nodpi/glowy_hex_small.jpg -d /tmp
unzip $1 res/drawable-large-nodpi/bucky.jpg -d /tmp
unzip $1 res/drawable-large-nodpi/village.jpg -d /tmp
unzip $1 res/drawable-large-nodpi/bluelinebots_small.jpg -d /tmp
unzip $1 res/drawable-large-nodpi/flowerbot_small.jpg -d /tmp

mv /tmp/res/drawable-large-nodpi/lotus_small.jpg overlay/packages/apps/Launcher2/res/drawable-nodpi/
mv /tmp/res/drawable-large-nodpi/bots_small.jpg overlay/packages/apps/Launcher2/res/drawable-nodpi/
mv /tmp/res/drawable-large-nodpi/city.jpg overlay/packages/apps/Launcher2/res/drawable-nodpi/
mv /tmp/res/drawable-large-nodpi/glowy_hex.jpg overlay/packages/apps/Launcher2/res/drawable-nodpi/
mv /tmp/res/drawable-large-nodpi/flowerbot.jpg overlay/packages/apps/Launcher2/res/drawable-nodpi/
mv /tmp/res/drawable-large-nodpi/bucky_small.jpg overlay/packages/apps/Launcher2/res/drawable-nodpi/
mv /tmp/res/drawable-large-nodpi/lotus.jpg overlay/packages/apps/Launcher2/res/drawable-nodpi/
mv /tmp/res/drawable-large-nodpi/bluelinebots.jpg overlay/packages/apps/Launcher2/res/drawable-nodpi/
mv /tmp/res/drawable-large-nodpi/city_small.jpg overlay/packages/apps/Launcher2/res/drawable-nodpi/
mv /tmp/res/drawable-large-nodpi/bluecrystal_small.jpg overlay/packages/apps/Launcher2/res/drawable-nodpi/
mv /tmp/res/drawable-large-nodpi/bluecrystal.jpg overlay/packages/apps/Launcher2/res/drawable-nodpi/
mv /tmp/res/drawable-large-nodpi/bots.jpg overlay/packages/apps/Launcher2/res/drawable-nodpi/
mv /tmp/res/drawable-large-nodpi/village_small.jpg overlay/packages/apps/Launcher2/res/drawable-nodpi/
mv /tmp/res/drawable-large-nodpi/glowy_hex_small.jpg overlay/packages/apps/Launcher2/res/drawable-nodpi/
mv /tmp/res/drawable-large-nodpi/bucky.jpg overlay/packages/apps/Launcher2/res/drawable-nodpi/
mv /tmp/res/drawable-large-nodpi/village.jpg overlay/packages/apps/Launcher2/res/drawable-nodpi/
mv /tmp/res/drawable-large-nodpi/bluelinebots_small.jpg overlay/packages/apps/Launcher2/res/drawable-nodpi/
mv /tmp/res/drawable-large-nodpi/flowerbot_small.jpg overlay/packages/apps/Launcher2/res/drawable-nodpi/

rm -rf /tmp/res/

cat <<EOF > overlay/packages/apps/Launcher2/res/values/extra_wallpapers.xml
<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string-array name="extra_wallpapers" translatable="false">
        <item>bluecrystal</item>
        <item>bluelinebots</item>
        <item>bots</item>
        <item>bucky</item>
        <item>city</item>
        <item>flowerbot</item>
        <item>glowy_hex</item>
        <item>lotus</item>
        <item>village</item>
    </string-array>
</resources>
EOF
