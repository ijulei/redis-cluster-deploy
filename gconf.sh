#!/bin/bash

if [ ! -n "$1" ]
then
    echo "起始端口为空"
    exit 1
fi

if [ ! -n "$2" ]
then
    echo "结束端口为空"
    exit 1
fi

if [ ! -n "$3" ]
then
    echo "主机地址为空"
    exit 1
fi

for i in $( seq $1 $2 )
do
   mkdir ./node$i &&
   cp Dockerfile ./node$i &&
   export host=$3 port=$i &&
   envsubst < redis.conf.tmp > ./node$i/redis.conf &&
   envsubst '${host}' < cc.sh.tmp > ./cc.sh &&
   chmod +x ./cc.sh
done
