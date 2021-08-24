import 'package:ebc_dart/block.dart';

abstract class BlockChainRepository {
  Future<void> putValue(int index, Block block);
  Future<Block> getValue(int index);
  Stream<Block> getAll();
  Future<int> count();
}
