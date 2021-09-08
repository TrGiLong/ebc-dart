#! /bin/sh

ETCD_BIN=/tmp/test-etcd

for i in {1..10000}; do
  $ETCD_BIN/etcdctl put "tp$i" "$i" &
done