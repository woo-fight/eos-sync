#!/bin/bash
################################################################################
#
# Scrip Created by http://CryptoLions.io
# For EOS mainnet
#
# https://github.com/CryptoLions/EOS-MainNet
#
###############################################################################

#DATADIR="/opt/EOSmainNet"

DATADIR="/data"
NODEOSBINDIR="/opt/eosio/bin"


$DATADIR/stop.sh
echo -e "Starting Nodeos \n";
ulimit -s 64000
$NODEOSBINDIR/nodeos --data-dir $DATADIR --config-dir /etc/nodeos --mongodb-uri mongodb://eosmongo:111222@mongo:27017/EOS "$@" > $DATADIR/stdout.txt 2> $DATADIR/stderr.txt &  echo $! > $DATADIR/nodeos.pid
#$NODEOSBINDIR/nodeos --data-dir $DATADIR --config-dir $DATADIR -e --http-alias=nodeosd:28888 --http-alias=127.0.0.1:28888 --http-alias=localhost:28888 --http-alias=xxxx.io:80 "$@" > $DATADIR/stdout.txt 2> $DATADIR/stderr.txt &  echo $! > $DATADIR/nodeos.pid
