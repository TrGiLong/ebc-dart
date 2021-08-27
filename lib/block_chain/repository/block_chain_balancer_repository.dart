import 'package:ebc_dart/block_chain/block.dart';
import 'package:grpc/grpc.dart';

import 'block_chain_repository.dart';
import 'etcd_block_chain_repository.dart';

class Endpoint {
  final String host;
  final int port;

  const Endpoint(this.host, this.port);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Endpoint && other.host == host && other.port == port;
  }

  @override
  int get hashCode => host.hashCode ^ port.hashCode;
}

class BlockChainBalancerRepository extends BlockChainRepository {
  final nTryAgain = 3;
  final List<Endpoint> endpoints;
  final String prefix;
  int currentPick = 0;

  late final List<BlockChainRepository> repositories;

  BlockChainBalancerRepository(
    this.endpoints, {
    this.prefix = 'ebc',
    required BlockChainRepository Function(Endpoint) factory,
  }) {
    assert(endpoints.isNotEmpty);
    repositories = endpoints.map((endpoint) => factory.call(endpoint)).toList();
  }

  factory BlockChainBalancerRepository.etcd(List<Endpoint> endpoints,
      {String prefix = 'ebc'}) {
    return BlockChainBalancerRepository(endpoints, prefix: prefix,
        factory: (endpoint) {
      return EtcdBlockChainRepository(
          host: endpoint.host,
          port: endpoint.port,
          channelOptions: const ChannelOptions(
            credentials: ChannelCredentials.insecure(),
          ));
    });
  }

  @override
  Future<int> count() {
    return _asyncExecute<int>(
        endpoints.length, (repository) => repository.count());
  }

  @override
  Future<Block> getBlock(int index) {
    return _asyncExecute<Block>(
        endpoints.length, (repository) => repository.getBlock(index));
  }

  @override
  Stream<Block> getBlockChain() {
    return _syncExecute<Stream<Block>>(
        endpoints.length, (repository) => repository.getBlockChain());
  }

  void incrementPick() {
    currentPick = (currentPick + 1) % endpoints.length;
  }

  @override
  Future<Block> insertBlock(String index, Block block) {
    return _asyncExecute<Block>(
        endpoints.length, (repository) => repository.insertBlock(index, block));
  }

  Future<T> _asyncExecute<T>(
    int tryAgain,
    Future<T> Function(BlockChainRepository) invoker,
  ) {
    try {
      incrementPick();
      return invoker.call(repositories[currentPick]);
    } catch (e) {
      if (tryAgain > 0) return _asyncExecute(tryAgain - 1, invoker);
      throw Exception('All server is down');
    }
  }

  T _syncExecute<T>(
    int tryAgain,
    T Function(BlockChainRepository) invoker,
  ) {
    try {
      incrementPick();
      return invoker.call(repositories[currentPick]);
    } catch (e) {
      if (tryAgain > 0) return _syncExecute(tryAgain - 1, invoker);
      throw Exception('All server is down');
    }
  }

  @override
  Future<void> dispose() async {
    for (var repository in repositories) {
      await repository.dispose();
    }
  }
}
