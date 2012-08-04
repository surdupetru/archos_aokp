DIR=out/target/product/archos-gen9/system
echo "Now ... prepare settings for your device Archos Gen9 !"
sleep 10;
echo "Please choose your device corresponding number from the list that appears below and press Enter !"
sleep 10;
chmod a+x build/envsetup.sh
. build/envsetup.sh
lunch
echo "Now is time to build AOKP source for your Archos Gen9 !!!"
sleep 10;
echo "... waiting time for successfully build : about 1 hour , but depending on your performance machine ...! Good luck !!!!! *) "
sleep 20;
mka bacon

cp -a $DIR/lib/hw/hwcomposer.default.so $DIR/vendor/lib/hw/hwcomposer.omap4.so

sleep 3;
echo " END !!! ...your build folder => out/target/product/archos-gen9/system/" 
