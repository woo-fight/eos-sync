#!/bin/sh

sleep 10

exec /opt/eosio/bin/nodeos \
    --data-dir=/data \
    --config-dir=/etc/nodeos \
    --replay-blockchain \
    --hard-replay-blockchain \
    --mongodb-wipe \
    --mongodb-uri mongodb://eosmongo:111222@mongo:27017/EOS
