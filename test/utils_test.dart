import 'package:ebc_dart/block_chain/block.dart';
import 'package:ebc_dart/block_chain/utils.dart';
import 'package:test/test.dart';

void main() {
  test('incrementLastByte with zero element', () async {
    final result = incrementLastByte([]);
    expect(result.last, 1);
  });

  test('incrementLastByte with one element', () async {
    final result = incrementLastByte([4]);
    expect(result.last, 5);
  });

  test('incrementLastByte with multiple element', () async {
    final result = incrementLastByte([4, 7]);
    expect(result.last, 8);
  });
}
