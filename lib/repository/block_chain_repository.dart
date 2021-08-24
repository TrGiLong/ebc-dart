import 'package:ebc_dart/block.dart';

abstract class BlockChainRepository {
  Future<void> insertBlock(int index, Block block);
  Future<Block> getBlock(int index);
  Stream<Block> getBlockChain();
  Future<int> count();
  Future<void> dispose();
}
