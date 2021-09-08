import 'package:ebc_dart/block_chain/block.dart';
import 'package:test/test.dart';

void main() {
  group('Block', () {
    test('Create genesis block', () async {
      final block = Block.genesis();

      expect(block.index, 1);
      expect(block.value, 'GENESIS');
      expect(block.calculateHash(), block.hash);
    });

    test('Generate block', () {
      final genesis = Block.genesis();
      final block = Block.generate(genesis, 'Second block');

      expect(block.calculateHash(), block.hash);
      expect(block.isChainValid(genesis), true);
    });
  });
}
