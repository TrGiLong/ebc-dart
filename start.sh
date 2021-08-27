#! /bin/sh

ETCD_BIN=/tmp/test-etcd

$ETCD_BIN/etcd --data-dir=database/single.etcd & dart ./bin/server.dart && fg