#!/bin/sh

sleep 10

exec /opt/eosio/bin/nodeos \
    --data-dir=/data \
    --config-dir=/etc/nodeos \
    --mongodb-uri mongodb://eosmongo:111222@mongo:27017/EOS
