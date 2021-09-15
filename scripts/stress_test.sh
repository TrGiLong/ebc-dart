#! /bin/sh

curl http://localhost:3000/api/blockchain/count

for i in {1..100}; do
  curl -X POST -s http://localhost:3000/api/blockchain/insert?value="$i" > /dev/null &
done

curl http://localhost:3000/api/blockchain/count