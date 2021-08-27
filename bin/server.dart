import 'package:args/args.dart';
import 'package:ebc_dart/block_chain/block_chain.dart';
import 'package:ebc_dart/block_chain/repository/block_chain_balancer_repository.dart';
import 'package:ebc_dart/server/server.dart';

void main(List<String> args) async {
  var parser = ArgParser()
    ..addMultiOption('etcdEndpoints',
        abbr: 'e', defaultsTo: ['localhost:2379']);
  var data = parser.parse(args);

  final endpoints = data['etcdEndpoints']
      .map((e) {
        final i = e.split(':');
        if (i.length != 2) return null;
        return Endpoint(i[0], int.parse(i[1]));
      })
      .whereType<Endpoint>()
      .toList();

  final repository = BlockChainBalancerRepository.etcd(endpoints);
  final blockchain = BlockChain(repository);
  await blockchain.init();

  final server = EbcServer(blockChain: blockchain, port: 3000);
  await server.start();
}
