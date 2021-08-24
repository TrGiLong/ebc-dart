import 'package:ebc_dart/block_chain_repository.dart';

import 'block.dart';

class BlockChain {
  final BlockChainRepository repository;

  static Future<bool> isValid(Stream<Block> chain) async {
    Block? prevBlock;
    await for (final block in chain) {
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
}
