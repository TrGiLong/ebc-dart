import 'package:ebc_dart/block_chain/block.dart';

import 'block_chain_repository.dart';

class MemoryChainRepository extends BlockChainRepository {
  final List<Block> chains = [];

  MemoryChainRepository();

  @override
  Stream<Block> getBlockChain() async* {
    yield* Stream.fromIterable(chains);
  }

  @override
  Future<Block> getBlock(int index) async {
    return chains[index-1];
  }

  @override
  Future<Block> insertBlock(Block block) async {
    chains.add(block);
    return block;
  }

  @override
  Future<int> count() async {
    return chains.length;
  }

  @override
  Future<void> dispose() async {}
}
