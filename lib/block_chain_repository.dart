import 'package:ebc_dart/block_chain.dart';

abstract class BlockChainRepository {
  Future<void> putValue(String key, String value);
  Future<String> getValue(String key);
  Stream<Block> getAll();
}
