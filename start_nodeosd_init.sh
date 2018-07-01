#!/bin/sh

sleep 10

exec /opt/eosio/bin/nodeos \
    --data-dir=/data \
    --genesis-json=/etc/nodeos/genesis.json \
    --config-dir=/etc/nodeos \
    --delete-all-blocks \
    --mongodb-wipe \
    --mongodb-uri mongodb://eosmongo:111222@mongo:27017/EOS