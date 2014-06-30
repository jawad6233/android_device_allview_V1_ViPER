#!/bin/sh

VENDOR=allview
DEVICE=V1_ViPER

BASE=../../../vendor/$VENDOR/$DEVICE/proprietary

echo "Pulling $DEVICE files..."
for FILE in `cat proprietary-files.txt | grep -v ^# | grep -v ^$`; do
DIR=`dirname $FILE`
    if [ ! -d $BASE/$DIR ]; then
mkdir -p $BASE/$DIR
    fi

cp /home/hajasgellert/android/stock-ALLViEW-jb-4.2.1/system/$FILE $BASE/$FILE
#adb pull /system/$FILE $BASE/$FILE

done

# some extra stuff
cp /home/hajasgellert/android/stock-ALLViEW-jb-4.2.1/system/lib/hw/audio_policy.default.so $BASE/lib/hw/audio_policy.mt6589.so
cp /home/hajasgellert/android/stock-ALLViEW-jb-4.2.1/system/lib/libaudio.primary.default.so $BASE/lib/hw/audio.primary.mt6589.so

#adb pull /system/lib/hw/audio_policy.default.so $BASE/lib/hw/audio_policy.mt6589.so
#adb pull /system/lib/hw/libaudio.r_submix.default.so $BASE/lib/hw/audio.r_submix.mt6589.so

./setup-makefiles.sh
