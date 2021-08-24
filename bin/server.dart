import 'dart:io';

import 'package:ebc_dart/block.dart';
import 'package:ebc_dart/etcd_block_chain_repository.dart';

void main() async {
  final repository = EtcdBlockChainRepository.local();

  

  repository.dispose();
}
