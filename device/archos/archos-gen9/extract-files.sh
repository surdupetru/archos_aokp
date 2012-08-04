#!/bin/sh

DIR1=device/archos/archos-gen9
DIR2=vendor/archos/archos-gen9
TREE=$DIR1/prebuilt
rm -rf $TREE/*
BASE=$DIR2/proprietary
rm -rf $BASE/*

for FILE in `cat $DIR1/proprietary-files.txt`; do
    DIR=`dirname $FILE`
    if [ ! -d $BASE/$DIR ]; then
        mkdir -p $BASE/$DIR
    fi
    adb pull /system/$FILE $BASE/$FILE
done

for FILE in `cat $DIR1/prebuilt-files.txt`; do
    DIR=`dirname $FILE`
    if [ ! -d $TREE/$DIR ]; then
        mkdir -p $TREE/$DIR
    fi
    adb pull /system/$FILE $TREE/$FILE
done

chmod a+x $DIR1/setup-makefiles.sh

. $DIR1/setup-makefiles.sh

