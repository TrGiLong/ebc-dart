import 'dart:convert';

import 'package:ebc_dart/block_chain/block.dart';
import 'package:ebc_dart/block_chain/repository/etcd_block_chain_repository.dart';
import 'package:ebc_dart/block_chain/utils.dart';
import 'package:etcd_client/etcd_client.dart';
import 'package:grpc/grpc.dart';

import 'block_chain_repository.dart';

class EtcdBlockChainMemoryEffectiveRepository extends EtcdBlockChainRepository {
  final int readCache; // The number of blocks that will be read.

  EtcdBlockChainMemoryEffectiveRepository({
    keyPrefix = 'ebc',
    String host = 'localhost',
    int port = 2379,
    this.readCache = 20,
    required ChannelOptions channelOptions,
  }) : super(
            keyPrefix: keyPrefix,
            host: host,
            port: port,
            channelOptions: channelOptions);

  @override
  Stream<Block> getBlockChain() async* {
    var i = 1;
    var max = await count();

    while (i < max) {
      final key = encodeKey(i);
      final endKey = encodeKey(i + readCache);
      final response = await kvClient.range(
        RangeRequest(
          key: key,
          rangeEnd: endKey,
          sortOrder: RangeRequest_SortOrder.ASCEND,
        ),
      );
      print('Reading ${response.count}');

      for (final kv in response.kvs) {
        yield kv.toBlock(encoding);
      }

      i += readCache;
    }
  }
}
