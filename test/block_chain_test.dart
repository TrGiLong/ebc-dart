import 'package:ebc_dart/block_chain/block_chain.dart';
import 'package:ebc_dart/block_chain/repository/memory_block_chain_repository.dart';
import 'package:ebc_dart/server/mutex.dart';

import 'package:test/test.dart';

void main() {
  group('Blockchain', () {
    test('Init blockchain', () async {
      final blockchain = BlockChain(MemoryChainRepository());
      await blockchain.init();

      final genesis = await blockchain.get(1);

      expect(genesis.value, 'GENESIS');
      expect(await blockchain.count(), 1);
      expect(await blockchain.isValid(), true);
    });

    test('Add 10 blocks to chains', () async {
      final blockchain = BlockChain(MemoryChainRepository());
      await blockchain.init();

      for (var x = 0; x < 10; x++) {
        await blockchain.insert('$x');
      }

      final lastBlock = await blockchain.get(await blockchain.count());
      expect(await blockchain.count(), 11);
      expect(await blockchain.isValid(), true);
      expect(lastBlock.value, '9');
    });

    test('Mutex should share ressource to ten process', () async {
      final mutex = Mutex();
      var x = 0;

      await Future.wait(List.generate(
          10,
          (index) => Future(() async {
                await mutex.lock();
                var y = x;
                await Future.delayed(Duration(milliseconds: index * 100));
                y += 1;
                x = y;
                mutex.unlock();
              })));
      expect(x, 10);
    });
  });
}
