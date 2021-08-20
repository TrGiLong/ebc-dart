import 'package:ebc_dart/block_chain.dart';
import 'package:ebc_dart/block_chain_repository.dart';
import 'package:http/http.dart' as http;

class EtcdBlockChainRepository extends BlockChainRepository {
  final String keyPrefix;
  final client = http.Client();

  EtcdBlockChainRepository(this.keyPrefix);

  @override
  Stream<Block> getAll() {
    throw UnimplementedError();
  }

  @override
  Future<String> getValue(String key) {
    throw UnimplementedError();
  }

  @override
  Future<void> putValue(String key, String value) {
    throw UnimplementedError();
  }

  dispose() {
    client.close();
  }
}
