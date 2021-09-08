import 'dart:convert';

import 'hash.dart';

class Block {
  final int index;
  final int timeStamp;
  final String value;
  final String hash;
  final String prevHash;

  Block(this.index, this.timeStamp, this.value, this.hash, this.prevHash);

  /// Generate a new block
  factory Block.generate(Block prevBlock, String value) {
    final timestampt = DateTime.now().millisecondsSinceEpoch;
    final index = prevBlock.index + 1;
    return Block(
      index,
      timestampt,
      value,
      _calculateHash(prevBlock.hash, timestampt, value, index),
      prevBlock.hash,
    );
  }

  factory Block.genesis() {
    final timestampt = DateTime.now().millisecondsSinceEpoch;
    return Block(
      1,
      timestampt,
      'GENESIS',
      _calculateHash('', timestampt, 'GENESIS', 1),
      '',
    );
  }

  /// Calculate a hash value based on args
  static String _calculateHash(
    String prevHash,
    int timeStampt,
    String value,
    int index,
  ) {
    return sha256('$timeStampt$index$value$prevHash');
  }

  /// Calculate a hash based on current information of block.
  String calculateHash() {
    return _calculateHash(prevHash, timeStamp, value, index);
  }

  /// Check current block and prevBlock are in chain.
  bool isChainValid(Block prevBlock) {
    if (prevBlock.index + 1 != index) return false;
    if (prevBlock.hash != prevHash) return false;
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

  Map<String, dynamic> toMap() {
    return {
      'Index': index,
      'Timestamp': timeStamp,
      'Value': value,
      'Hash': hash,
      'PrevHash': prevHash,
    };
  }

  factory Block.fromMap(Map<String, dynamic> map) {
    return Block(
      map['Index'],
      map['Timestamp'],
      map['Value'],
      map['Hash'],
      map['PrevHash'],
    );
  }

  Map toJson() => toMap();

  String toJsonString() => jsonEncode(toJson());

  factory Block.fromJson(String source) => Block.fromMap(json.decode(source));

  @override
  String toString() => '$index $value $hash $prevHash';
}
