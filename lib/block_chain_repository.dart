import 'package:ebc_dart/block_chain.dart';

abstract class BlockChainRepository {
  Future<void> putValue(int index, String value);
  Future<String> getValue(int index);
  Stream<Block> getAll();
}
