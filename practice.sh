#!/bin/bash

# 現在の時刻をAMかPMかを判定して、どちらかを格納するnow変数
AMorPM=`date +%p`

if [ $AMorPM = "AM" ]
then
    ls -a > output.txt
elif [ $AMorPM = "PM" ]
then
    datetime=`date +%T`
    echo "現在の時刻は"${datetime}
fi
