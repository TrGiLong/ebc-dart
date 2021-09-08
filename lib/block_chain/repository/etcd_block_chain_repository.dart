import 'dart:convert';

import 'package:ebc_dart/block_chain/block.dart';
import 'package:ebc_dart/block_chain/utils.dart';
import 'package:etcd_client/etcd_client.dart';
import 'package:grpc/grpc.dart';

import 'block_chain_repository.dart';

class EtcdBlockChainRepository extends BlockChainRepository {
  final String keyPrefix;
  late final KVClient kvClient;
  late final ClientChannel channel;
  final Encoding encoding = Utf8Codec();

  EtcdBlockChainRepository({
    this.keyPrefix = 'ebc',
    String host = 'localhost',
    int port = 2379,
    required ChannelOptions channelOptions,
  }) {
    channel = ClientChannel(
      host,
      port: port,
      options: channelOptions,
    );
    kvClient = KVClient(channel);
  }

  @override
  Stream<Block> getBlockChain() async* {
    final response = await kvClient.range(
      RangeRequest(
        key: encoding.encode('$keyPrefix'),
        rangeEnd: incrementLastByte(encoding.encode('$keyPrefix')),
        sortOrder: RangeRequest_SortOrder.ASCEND,
      ),
    );

    for (final kv in response.kvs) {
      yield kv.toBlock(encoding);
    }
  }

  @override
  Future<Block> getBlock(int index) async {
    if (index == 1) return getBlockChain().first;

    final response = await kvClient.range(RangeRequest(key: encodeKey(index)));
    return Block.fromJson(encoding.decode(response.kvs.first.value));
  }

  @override
  Future<Block> insertBlock(Block block) async {
    await kvClient.put(PutRequest(
      key: encodeKey(block.index),
      value: encoding.encode(block.toJsonString()),
    ));
    return block;
  }

  @override
  Future<int> count() async {
    final response = await kvClient.range(RangeRequest(
        key: encoding.encode('$keyPrefix'),
        rangeEnd: incrementLastByte(encoding.encode('$keyPrefix')),
        countOnly: true));
    return response.count.toInt();
  }

  @override
  Future<void> dispose() async {
    await channel.shutdown();
  }

  List<int> encodeKey(int index) {
    final indexStr = index.toString().padLeft(19, '0');
    return encoding.encode('$keyPrefix-$indexStr');
  }
}

extension KeyValueTransform on KeyValue {
  Block toBlock(Encoding encoding) => Block.fromJson(encoding.decode(value));
}
