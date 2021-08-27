#! /bin/sh

ETCD_VER=v3.5.0
ETCD_BIN=/tmp/test-etcd

GOOGLE_URL=https://storage.googleapis.com/etcd
GITHUB_URL=https://github.com/etcd-io/etcd/releases/download

DOWNLOAD_URL=${GOOGLE_URL}

rm -f /tmp/etcd-${ETCD_VER}-darwin-amd64.zip
rm -rf /tmp/etcd-${ETCD_VER}-darwin-amd64
rm -rf $ETCD_BIN
mkdir -p $ETCD_BIN

curl -L ${DOWNLOAD_URL}/${ETCD_VER}/etcd-${ETCD_VER}-darwin-amd64.zip -o /tmp/etcd-${ETCD_VER}-darwin-amd64.zip

unzip /tmp/etcd-${ETCD_VER}-darwin-amd64.zip -d /tmp
ln -s /tmp/etcd-${ETCD_VER}-darwin-amd64/* $ETCD_BIN