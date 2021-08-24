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

  factory EtcdBlockChainRepository.local({String keyPrefix = 'ebc'}) =>
      EtcdBlockChainRepository(
          keyPrefix: keyPrefix,
          channelOptions: ChannelOptions(
            credentials: ChannelCredentials.insecure(),
          ));

  @override
  Stream<Block> getBlockChain() async* {
    final response = await kvClient.range(
      RangeRequest(
        key: encoding.encode('$keyPrefix'),
        rangeEnd: incrementLastByte(encoding.encode('$keyPrefix')),
        sortOrder: RangeRequest_SortOrder.ASCEND,
        sortTarget: RangeRequest_SortTarget.CREATE,
      ),
    );

    for (final kv in response.kvs) {
      yield kv.toBlock(encoding);
    }
  }

  @override
  Future<Block> getBlock(int index) async {
    final response = await kvClient
        .range(RangeRequest(key: encoding.encode('$keyPrefix$index')));
    return Block.fromJson(encoding.decode(response.kvs.first.value));
  }

  @override
  Future<void> insertBlock(int key, Block block) async {
    await kvClient.put(PutRequest(
      key: encoding.encode('$keyPrefix$key'),
      value: encoding.encode(block.toJson()),
    ));
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
}

extension KeyValueTransform on KeyValue {
  Block toBlock(Encoding encoding) => Block.fromJson(encoding.decode(value));
}
