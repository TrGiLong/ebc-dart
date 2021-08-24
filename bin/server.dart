import 'dart:io';

import 'package:ebc_dart/block.dart';
import 'package:ebc_dart/etcd_block_chain_repository.dart';

void main() async {
  final repository = EtcdBlockChainRepository.local();

  // print(await repository.getValue(2));
  await for (var block in repository.getAll()) {
    print(block);
  }

  print("=====");
  print(await repository.getValue(2));

  print("=====");
  print(await BlockChain.isValid(repository.getAll()));

  repository.dispose();
}
