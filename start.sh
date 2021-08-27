#! /bin/sh

ETCD_BIN=/tmp/test-etcd

dart pub get

$ETCD_BIN/etcd --data-dir=database/single.etcd & dart ./bin/server.dart && fg