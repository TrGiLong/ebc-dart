import 'package:ebc_dart/block_chain/block.dart';
import 'package:ebc_dart/block_chain/repository/block_chain_balancer_repository.dart';
import 'package:ebc_dart/block_chain/repository/memory_block_chain_repository.dart';
import 'package:ebc_dart/server/mutex.dart';

import 'package:test/test.dart';

void main() {
  group('Balancer', () {
    test('Create 10 Balancer', () async {
      final balancer = createBalancer(10);
      await balancer.insertBlock(Block.genesis());
      expect(await balancer.count(), 1);
    });

    test('Write 10 times', () async {
      final balancer = createBalancer(10);
      await balancer.insertBlock(Block.genesis());

      for (var x = 0; x < 10; x++) {
        final last = await balancer.getBlock(await balancer.count());
        return balancer.insertBlock(Block.generate(last, '$x'));
      }

      expect(await balancer.count(), 11);
    });
  });
}

BlockChainBalancerRepository createBalancer(int n) {
  final repository = MemoryChainRepository();
  return BlockChainBalancerRepository(
      List.generate(n, (index) => Endpoint('$index', 0)),
      factory: (endpoint) => repository);
}
