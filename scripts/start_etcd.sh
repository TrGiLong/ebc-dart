#!/bin/bash

mkdir -p public
mkdir -p database
IP=localhost
ETCD_BIN=/tmp/test-etcd
TOKEN=token-01
n=3
CLUSTER_STATE=new

n=$((n-1)) # zero-based indices, please
for i in $(seq 0 "$n"); do
  CLUSTER="n$i=http://$IP:800$i,$CLUSTER"
done

tmux kill-session -t etcd 2>/dev/null ||:
tmux new-session -d -s etcd
tmux rename-window etcd
tmux set-window-option -t etcd mouse on
tmux setenv PATH $PATH

for i in $(seq 0 "$((n+1))"); do
        test $i -ne 0 && tmux split-window
        tmux selectl tiled
done
tmux split-window; tmux selectl tiled;

for i in $(seq 0 "$n"); do
	tmux select-pane -t $((i))
	tmux send-keys "$ETCD_BIN/etcd --data-dir=./database/cluster_$i.etcd --name n$i \
	    --initial-advertise-peer-urls http://$IP:800$i --listen-peer-urls http://$IP:800$i \
	    --advertise-client-urls http://$IP:900$i --listen-client-urls http://$IP:900$i \
	    --initial-cluster ${CLUSTER} \
	    --log-level info \
	    --initial-cluster-state ${CLUSTER_STATE} \
     	    --initial-cluster-token ${TOKEN}" C-m
	 sleep 2
done

for i in $(seq 0 "$n"); do
   ep=$ep,$IP:800$i
done
tmux select-pane -t $((n+1))
tmux send-keys "while :; do \
                   sleep 10; \
                   clear; \
                   $ETCD_BIN/etcdctl --endpoints=$ep --write-out=table endpoint status; \
                 done 2>/dev/null" C-m

tmux attach-session
