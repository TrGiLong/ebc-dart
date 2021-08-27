import 'package:ebc_dart/block_chain/block.dart';

abstract class BlockChainRepository {
  Future<Block> insertBlock(String index, Block block);
  Future<Block> getBlock(int index);
  Stream<Block> getBlockChain();
  Future<int> count();
  Future<void> dispose();
}
