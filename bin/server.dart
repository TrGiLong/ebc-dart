import 'package:ebc_dart/block_chain/block_chain.dart';
import 'package:ebc_dart/block_chain/repository/block_chain_balancer_repository.dart';
import 'package:ebc_dart/server/server.dart';

void main() async {
  final repository =
      BlockChainBalancerRepository.etcd([Endpoint('localhost', 2379)]);
  final blockchain = BlockChain(repository);
  await blockchain.init();

  final server = EbcServer(blockChain: blockchain, port: 3000);
  await server.start();
}
