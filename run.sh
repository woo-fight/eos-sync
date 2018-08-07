#!/bin/bash

DATA_DIR=/home/eos-sources/data/eos/nodeos-data-volume/nodeos-data-mainnet

mkdir -p $DATA_DIR/mongo
mkdir -p $DATA_DIR/data

cp -r config $DATA_DIR

docker-compose -f docker-compose-mainnet.yaml up -d
