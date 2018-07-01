#!/bin/bash

mkdir -p /data/eos/nodeos-data-volume/nodeos-data-mainnet/mongo
mkdir -p /data/eos/nodeos-data-volume/nodeos-data-mainnet/data

cp -r config.ini /data/eos/nodeos-data-volume/nodeos-data-mainnet
cp -r genesis.json /data/eos/nodeos-data-volume/nodeos-data-mainnet

docker-compose -f docker-compose-mainnet.yml up -d