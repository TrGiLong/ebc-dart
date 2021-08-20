import 'dart:convert';

import 'package:ebc_dart/block_chain.dart';
import 'package:ebc_dart/block_chain_repository.dart';
import 'package:ebc_dart/utils.dart';
import 'package:etcd_client/etcd_client.dart';
import 'package:grpc/grpc.dart';

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
  Stream<Block> getAll() async* {
    final response = await kvClient.range(RangeRequest(
      key: encoding.encode('$keyPrefix'),
      rangeEnd: incrementLastByte(encoding.encode('$keyPrefix')),
      sortOrder: RangeRequest_SortOrder.ASCEND,
      sortTarget: RangeRequest_SortTarget.CREATE,
    ));

    // First block was decoded wrong
    for (final kv in response.kvs) {
      yield kv.toBlock(encoding);
    }

    // for (final block in response.kvs.map((e) => e.toBlock(encoding)).toList()
    //   ..sort((a, b) => a.index.compareTo(b.index))) {
    //   yield block;
    // }
  }

  @override
  Future<String> getValue(int index) async {
    final response = await kvClient
        .range(RangeRequest(key: encoding.encode('$keyPrefix$index')));
    return encoding.decode(response.kvs.first.value);
  }

  @override
  Future<void> putValue(int key, String value) async {
    await kvClient.put(PutRequest(
        key: encoding.encode('$keyPrefix$key'), value: encoding.encode(value)));
  }

  void dispose() {
    channel.shutdown();
  }
}

extension KeyValueTransform on KeyValue {
  Block toBlock(Encoding encoding) => Block.fromJson(encoding.decode(value));
}
