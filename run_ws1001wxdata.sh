#!/bin/bash
##set -x

if [ $# -ne 0 ]
then
	echo usage: $0:
	exit 0
fi

bin_dir=C:/cygwin64/bin
data_dir=YOUR_EasyWeather_DATA_DIR
logs_dir=YOUR_EasyWeather_LOG_DIR
wx_bin_dir=YOUR_WX_BIN_DIR

if [ ! -d $data_dir ]
then
	echo Data directory, $data_dir, does not exist.
	exit 0
fi

log=$logs_dir/ws1001wxdata-`${bin_dir}/date +%F`.log

echo Starting ws1001wxdata.pl

$wx_bin_dir/ws1001wxdata.pl $data_dir/msg-udp-srch.dat $data_dir/msg-tcp-nowrec-req.dat $data_dir/ewpdata.dat >> $log 2>&1
