DIR=device/archos/archos-gen9
clear ;
echo "Hi ...now you can begin to build your AOKP source, are you ready... ?"
sleep 5;
echo "...let's go ! "
sleep 5;
echo " You have 10 seconds to connect USB cable between device and your linux machine !!! "
sleep 10;
echo "... ten seconds have passed, it's time to start the fun !!! "
sleep 10;
chmod a+x $DIR/extract-files.sh;

. $DIR/extract-files.sh
