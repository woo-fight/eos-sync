# EOS-Sync

1分钟快速搭建将EOS主网数据同步至mongodb数据库, 操作步骤:

第一步，创建所需目录:

```
mkdir -p /data/eos/nodeos-data-volume/nodeos-data-mainnet/mongo
mkdir -p /data/eos/nodeos-data-volume/nodeos-data-mainnet/data
```

第二步，准备配置文件:

```
cp -r config.ini /data/eos/nodeos-data-volume/nodeos-data-mainnet
cp -r genesis.json /data/eos/nodeos-data-volume/nodeos-data-mainnet
```

第三步，开始同步数据:

```
docker-compose -f docker-compose-mainnet.yml up -d
```

第四步，进入mongo查看同步的数据:

```
docker-compose -f docker-compose-eosblock-mainnet-init.yml exec mongo /bin/bash
mongo admin -u root -p 111222
```

同步结果如下:

```
> use EOS;
switched to db EOS
> show tables;
accounts
actions
block_states
blocks
transaction_traces
transactions
```

