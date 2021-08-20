// Int is 64 bit,

import 'package:ebc_dart/hash.dart';

class Block {
  final int index;
  final int timeStamp;
  final String value;
  final String hash;
  final String prevHash;

  Block(this.index, this.timeStamp, this.value, this.hash, this.prevHash);

  /// Generate a new block
  factory Block.generate(Block prevBlock, String value, int index) {
    final timestampt = DateTime.now().millisecondsSinceEpoch;
    return Block(
      index,
      timestampt,
      value,
      _calculateHash(prevBlock.hash, timestampt, value, index),
      prevBlock.hash,
    );
  }

  /// Calculate a hash value based on args
  static String _calculateHash(
    String prevHash,
    int timeStampt,
    String value,
    int index,
  ) {
    return defaultHash('$timeStampt$index$value$prevHash');
  }

  /// Calculate a hash based on current information of block.
  String calculateHash() {
    return _calculateHash(prevHash, timeStamp, value, index);
  }

  /// Check current block and prevBlock are in chain.
  bool isChainValid(Block prevBlock) {
    if (prevBlock.index + 1 != index) return false;
    if (prevBlock.hash != hash) return false;
    if (calculateHash() != hash) return false;
    return true;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Block &&
        other.index == index &&
        other.timeStamp == timeStamp &&
        other.value == value &&
        other.hash == hash &&
        other.prevHash == prevHash;
  }

  @override
  int get hashCode {
    return index.hashCode ^
        timeStamp.hashCode ^
        value.hashCode ^
        hash.hashCode ^
        prevHash.hashCode;
  }
}

class BlockChain {
  static Future<bool> isValid(Stream<Block> chain) async {
    Block? prevBlock;
    await for (final block in chain) {
      // First block
      if (prevBlock == null) {
        prevBlock = block;
        continue;
      }

      if (!block.isChainValid(prevBlock)) return false;
      prevBlock = block;
    }
    return true;
  }
}
