#!/bin/bash

# タイムゾーンを日本時間に設定する
export TZ=JST-9

# 現在の時刻をAMかPMかを判定して、どちらかを格納するnow変数
now=`date +%p`

if [ $now = "AM" ]
then
    ls -a > output.txt
elif [ $now = "PM" ]
then
    datetime=`date +%T`
    echo "現在の時刻は"${datetime}
fi