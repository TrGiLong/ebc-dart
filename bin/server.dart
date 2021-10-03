import 'dart:async';

import 'package:args/args.dart';
import 'package:ebc_dart/block_chain/block_chain.dart';
import 'package:ebc_dart/block_chain/repository/block_chain_balancer_repository.dart';
import 'package:ebc_dart/block_chain/repository/etcd_block_chain_memory_effective_repository.dart';
import 'package:ebc_dart/block_chain/repository/etcd_block_chain_repository.dart';
import 'package:ebc_dart/server/server.dart';
import 'package:etcd_client/etcd_client.dart';

void main(List<String> args) async {
  var parser = ArgParser()
    ..addFlag('memorySave', defaultsTo: false)
    ..addMultiOption('etcdEndpoints',
        abbr: 'e', defaultsTo: ['localhost:2379']);
  var data = parser.parse(args);

  final memorySave = data['memorySave'];
  final endpoints = data['etcdEndpoints']
      .map((e) {
        final i = e.split(':');
        if (i.length != 2) return null;
        return Endpoint(i[0], int.parse(i[1]));
      })
      .whereType<Endpoint>()
      .toList();

  final channelOptions =
      ChannelOptions(credentials: ChannelCredentials.insecure());
  final repository = BlockChainBalancerRepository(
    endpoints,
    factory: (endpoint) {
      if (memorySave) {
        return EtcdBlockChainMemoryEffectiveRepository(
            host: endpoint.host,
            port: endpoint.port,
            channelOptions: channelOptions);
      } else {
        return EtcdBlockChainRepository(
            host: endpoint.host,
            port: endpoint.port,
            channelOptions: channelOptions);
      }
    },
  );
  final blockchain = BlockChain(repository);
  await blockchain.init();

  Timer.periodic(Duration(seconds: 60), (_) async {
    print('INFO: Check blockchain');
    if (!(await blockchain.isValid())) {
      throw Exception('ERROR: blockchain not longer valid, exiting ...');
    }
  });

  final server = EbcServer(blockChain: blockchain, port: 3000);
  await server.start();
}
