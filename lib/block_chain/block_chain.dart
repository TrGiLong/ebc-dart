import 'package:ebc_dart/block_chain/hash.dart';

import 'block.dart';
import 'repository/block_chain_repository.dart';

class BlockChain {
  final BlockChainRepository repository;

  BlockChain(this.repository);

  Future<Block> get(int index) async {
    return await repository.getBlock(index);
  }

  Future<Block> insert(String value) async {
    final totalBlocks = await repository.count();
    final prevBlock = await repository.getBlock(totalBlocks);

    final block = Block.generate(prevBlock, value);
    return await repository.insertBlock(block);
  }

  Future<int> count() async {
    return repository.count();
  }

  Future<void> init() async {
    if ((await repository.count()) == 0) {
      final genesisBlock = Block.genesis();
      await repository.insertBlock(genesisBlock);
    }

    if (!(await isValid())) {
      throw Exception('ERROR: blockchain not longer valid, exiting ...');
    } else {
      print('STATUS: blockchain is valid');
    }
  }

  Future<bool> isValid() async {
    Block? prevBlock;
    await for (final block in repository.getBlockChain()) {
      // First block
      if (prevBlock == null) {
        prevBlock = block;
        continue;
      }

      if (!block.isChainValid(prevBlock)) return false;
      prevBlock = block;
    }
    return true;
  }

  Stream<Block> getBlockChain() {
    return repository.getBlockChain();
  }
}
