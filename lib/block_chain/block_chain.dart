import 'block.dart';
import 'repository/block_chain_repository.dart';

class BlockChain {
  final BlockChainRepository repository;

  BlockChain(this.repository);

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
}
