#! /bin/sh

mkdir -p public
mkdir -p tmp
cd ./tmp

git clone git@github.com:TrGiLong/ebc-client.git

cd ./ebc-client
flutter pub get
flutter build web

cd ../..
cp -r ./tmp/ebc-client/build/web/. ./public

rm -rf ./tmp