#!/bin/bash

RPC_PATH="api/etcdserverpb"
AUTH_PATH="api/authpb"
MVCCPB="api/mvccpb"

TARGET="."
PROTO_TARGET="${TARGET}/proto"
VERSION="v3.5.0"

GOGO_VERSION="v1.3.2"
GAPI_VERSION="1.50.0"
PROTOBUF_VERSION="v3.17.3"

mkdir -p "$TARGET"
mkdir -p "${PROTO_TARGET}/etcd/api/authpb"
mkdir -p "${PROTO_TARGET}/etcd/api/mvccpb"
mkdir -p "${PROTO_TARGET}/etcd/api/etcdserverpb"
mkdir -p "${PROTO_TARGET}/gogoproto"
mkdir -p "${PROTO_TARGET}/google/api"
mkdir -p "${PROTO_TARGET}/google/protobuf"

curl -L "https://raw.githubusercontent.com/etcd-io/etcd/${VERSION}/${AUTH_PATH}/auth.proto" > "${PROTO_TARGET}/etcd/api/authpb/auth.proto"
curl -L "https://raw.githubusercontent.com/etcd-io/etcd/${VERSION}/${MVCCPB}/kv.proto" > "${PROTO_TARGET}/etcd/api/mvccpb/kv.proto"
curl -L "https://raw.githubusercontent.com/etcd-io/etcd/${VERSION}/${RPC_PATH}/rpc.proto" > "${PROTO_TARGET}/etcd/api/etcdserverpb/rpc.proto"
curl -L "https://raw.githubusercontent.com/gogo/protobuf/${GOGO_VERSION}/gogoproto/gogo.proto" > "${PROTO_TARGET}/gogoproto/gogo.proto"
curl -L "https://raw.githubusercontent.com/googleapis/api-common-protos/${GAPI_VERSION}/google/api/annotations.proto" > "${PROTO_TARGET}/google/api/annotations.proto"
curl -L "https://raw.githubusercontent.com/googleapis/api-common-protos/${GAPI_VERSION}/google/api/http.proto" > "${PROTO_TARGET}/google/api/http.proto"
curl -L "https://raw.githubusercontent.com/protocolbuffers/protobuf/${PROTOBUF_VERSION}/src/google/protobuf/descriptor.proto" > "${PROTO_TARGET}/google/protobuf/descriptor.proto"

find "$PROTO_TARGET" -iname '*.proto' | xargs -t protoc --dart_out="grpc:${TARGET}/lib/src" -I "$PROTO_TARGET"
